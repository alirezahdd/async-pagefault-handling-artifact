// Copyright (c) 2018, The Hebrew University of Jerusalem (HUJI, A. Barak)
// See LICENSE.txt for license details

#include <algorithm>
#include <cinttypes>
#include <iostream>
#include <unordered_map>
#include <vector>

#include "benchmark.h"
#include "bitmap.h"
#include "builder.h"
#include "command_line.h"
#include "graph.h"
#include "pvector.h"


/*
GAP Benchmark Suite
Kernel: Connected Components (CC)
Authors: Michael Sutton, Scott Beamer

Will return comp array labelling each vertex with a connected component ID

This CC implementation makes use of the Afforest subgraph sampling algorithm [1],
which restructures and extends the Shiloach-Vishkin algorithm [2].

[1] Michael Sutton, Tal Ben-Nun, and Amnon Barak. "Optimizing Parallel 
    Graph Connectivity Computation via Subgraph Sampling" Symposium on 
    Parallel and Distributed Processing, IPDPS 2018.

[2] Yossi Shiloach and Uzi Vishkin. "An o(logn) parallel connectivity algorithm"
    Journal of Algorithms, 3(1):57–67, 1982.
*/


using namespace std;
#include "libpfq_cc_nopt.h"


// Place nodes u and v in same component of lower component ID
void Link(NodeID u, NodeID v, pvector<NodeID>& comp) {
  NodeID p1 = comp[u];
  NodeID p2 = comp[v];
  while (p1 != p2) {
    NodeID high = p1 > p2 ? p1 : p2;
    NodeID low = p1 + (p2 - high);
    NodeID p_high = comp[high];
    // Was already 'low' or succeeded in writing 'low'
    if ((p_high == low) ||
        (p_high == high && compare_and_swap(comp[high], high, low)))
      break;
    p1 = comp[comp[high]];
    p2 = comp[low];
  }
}


// Reduce depth of tree for each component to 1 by crawling up parents
void Compress(const Graph &g, pvector<NodeID>& comp) {
  #pragma omp parallel for schedule(dynamic, 16384)
  for (NodeID n = 0; n < g.num_nodes(); n++) {
    while (comp[n] != comp[comp[n]]) {
      comp[n] = comp[comp[n]];
    }
  }
}


NodeID SampleFrequentElement(const pvector<NodeID>& comp,
                             bool logging_enabled = false,
                             int64_t num_samples = 1024) {
  std::unordered_map<NodeID, int> sample_counts(32);
  using kvp_type = std::unordered_map<NodeID, int>::value_type;
  // Sample elements from 'comp'
  std::mt19937 gen;
  std::uniform_int_distribution<NodeID> distribution(0, comp.size() - 1);
  for (NodeID i = 0; i < num_samples; i++) {
    NodeID n = distribution(gen);
    sample_counts[comp[n]]++;
  }
  // Find most frequent element in samples (estimate of most frequent overall)
  auto most_frequent = std::max_element(
    sample_counts.begin(), sample_counts.end(),
    [](const kvp_type& a, const kvp_type& b) { return a.second < b.second; });
  float frac_of_graph = static_cast<float>(most_frequent->second) / num_samples;
  if (logging_enabled)
    std::cout
      << "Skipping largest intermediate component (ID: " << most_frequent->first
      << ", approx. " << static_cast<int>(frac_of_graph * 100)
      << "% of the graph)" << std::endl;
  return most_frequent->first;
}


pvector<NodeID> Afforest(const Graph &g, bool logging_enabled = false,
                         int32_t neighbor_rounds = 2) {
  pvector<NodeID> comp(g.num_nodes());

  // Initialize each node to a single-node self-pointing tree
  #pragma omp parallel for
  for (NodeID n = 0; n < g.num_nodes(); n++)
    comp[n] = n;

  // Process a sparse sampled subgraph first for approximating components.
  // Sample by processing a fixed number of neighbors for each node (see paper)
  for (int r = 0; r < neighbor_rounds; ++r) {
  #pragma omp parallel for schedule(dynamic,CHUNK_SIZE) PFH_CLAUSES
    for (NodeID u = 0; u < g.num_nodes(); u++) {
      INIT(u, CHUNK_SIZE);
      // for (NodeID v : g.out_neigh(u, r)) {
      for (NodeID* v_itr = g.out_neigh(u, r).begin(); v_itr != g.out_neigh(u, r).end(); v_itr++) {
        NodeID v;
        TRY{
          v = *v_itr;   // p1 trouble maker
        }CATCH{
          readahead(u, v_itr, &pre_faulted, g);
          v = *v_itr;   // access it again!
        }
        // Link at most one time if neighbor available at offset r
        Link(u, v, comp);
        break;
      }
    }
    Compress(g, comp);
  }

  // Sample 'comp' to find the most frequent element -- due to prior
  // compression, this value represents the largest intermediate component
  NodeID c = SampleFrequentElement(comp, logging_enabled);

  // Final 'link' phase over remaining edges (excluding the largest component)
  if (!g.directed()) {
    #pragma omp parallel for schedule(dynamic, CHUNK_SIZE) PFH_CLAUSES
    for (NodeID u = 0; u < g.num_nodes(); u++) {
      INIT(u, CHUNK_SIZE);
      // Skip processing nodes in the largest component
      if (comp[u] == c)
        continue;
      // Skip over part of neighborhood (determined by neighbor_rounds)
      // for (NodeID v : g.out_neigh(u, neighbor_rounds)) {
      for (NodeID* v_itr = g.out_neigh(u, neighbor_rounds).begin(); v_itr != g.out_neigh(u, neighbor_rounds).end(); v_itr++) {
        NodeID v;
        TRY{
          v = *v_itr;   // p2u trouble maker
        }CATCH{
          readahead(u, v_itr, &pre_faulted, g);
          v = *v_itr;   // access it again!
        }
        Link(u, v, comp);
      }
    }
  } else {
    #pragma omp parallel for schedule(dynamic, CHUNK_SIZE) PFH_CLAUSES
    for (NodeID u = 0; u < g.num_nodes(); u++) {
      INIT(u, CHUNK_SIZE);
      if (comp[u] == c)
        continue;
      // for (NodeID v : g.out_neigh(u, neighbor_rounds)) {
      for (NodeID* v_itr = g.out_neigh(u, neighbor_rounds).begin(); v_itr != g.out_neigh(u, neighbor_rounds).end(); v_itr++) {
        NodeID v;
        TRY{
          v = *v_itr;   // p2d trouble maker
        }CATCH{
          readahead2(u, v_itr, &pre_faulted, g);
          v = *v_itr;   // access it again!
        }
        Link(u, v, comp);
      }
      // To support directed graphs, process reverse graph completely
      for (NodeID v : g.in_neigh(u)) {
        Link(u, v, comp);
      }
    }
  }
  // Finally, 'compress' for final convergence
  Compress(g, comp);
  return comp;
}


void PrintCompStats(const Graph &g, const pvector<NodeID> &comp) {
  cout << endl;
  unordered_map<NodeID, NodeID> count;
  for (NodeID comp_i : comp)
    count[comp_i] += 1;
  int k = 5;
  vector<pair<NodeID, NodeID>> count_vector;
  count_vector.reserve(count.size());
  for (auto kvp : count)
    count_vector.push_back(kvp);
  vector<pair<NodeID, NodeID>> top_k = TopK(count_vector, k);
  k = min(k, static_cast<int>(top_k.size()));
  cout << k << " biggest clusters" << endl;
  for (auto kvp : top_k)
    cout << kvp.second << ":" << kvp.first << endl;
  cout << "There are " << count.size() << " components" << endl;
}


// Verifies CC result by performing a BFS from a vertex in each component
// - Asserts search does not reach a vertex with a different component label
// - If the graph is directed, it performs the search as if it was undirected
// - Asserts every vertex is visited (degree-0 vertex should have own label)
bool CCVerifier(const Graph &g, const pvector<NodeID> &comp) {
  unordered_map<NodeID, NodeID> label_to_source;
  for (NodeID n : g.vertices())
    label_to_source[comp[n]] = n;
  Bitmap visited(g.num_nodes());
  visited.reset();
  vector<NodeID> frontier;
  frontier.reserve(g.num_nodes());
  for (auto label_source_pair : label_to_source) {
    NodeID curr_label = label_source_pair.first;
    NodeID source = label_source_pair.second;
    frontier.clear();
    frontier.push_back(source);
    visited.set_bit(source);
    for (auto it = frontier.begin(); it != frontier.end(); it++) {
      NodeID u = *it;
      for (NodeID v : g.out_neigh(u)) {
        if (comp[v] != curr_label)
          return false;
        if (!visited.get_bit(v)) {
          visited.set_bit(v);
          frontier.push_back(v);
        }
      }
      if (g.directed()) {
        for (NodeID v : g.in_neigh(u)) {
          if (comp[v] != curr_label)
            return false;
          if (!visited.get_bit(v)) {
            visited.set_bit(v);
            frontier.push_back(v);
          }
        }
      }
    }
  }
  for (NodeID n=0; n < g.num_nodes(); n++)
    if (!visited.get_bit(n))
      return false;
  return true;
}


int main(int argc, char* argv[]) {
  initialize_perf_measurements();
  CLApp cli(argc, argv, "connected-components-afforest");
  if (!cli.ParseArgs())
    return -1;

  Builder b(cli);
  Graph g = b.MakeGraph();
  auto CCBound = [&cli](const Graph& gr){ return Afforest(gr, cli.logging_en()); };

  if(cli.batching()){
    pagefault_queue_size = cli.queue_size();
    batching_mode = cli.batching_mode();
    allocate_pf_status_array();
    prepare_pmadvise();
    register_pf_status_array();
    unsigned long *ips = (unsigned long *)malloc(3 * sizeof(unsigned long));
    unsigned long *ret_ips = (unsigned long *)malloc(3 * sizeof(unsigned long));
    ips[0] = 0x407e2a;  // p1 t maker
    ret_ips[0] = 0x3;
    ips[1] = 0x408096; // p2u t maker
    ret_ips[1] = 0x3;
    ips[2] = 0x408309; // p2d t maker
    ret_ips[2] = 0x3;
    register_ips_and_retips(ips, ret_ips, 3);
    // touch pages to make sure they reside in memory before starting the benchmark
    touch_pages(pf_status_array, 32*1024*sizeof(int));
    touch_ips(ips, ret_ips, 2);
  }

  BenchmarkKernel(cli, g, CCBound, PrintCompStats, CCVerifier);

  if(cli.batching()){
    unregister_and_free_arrays();
  }
  return 0;
}
