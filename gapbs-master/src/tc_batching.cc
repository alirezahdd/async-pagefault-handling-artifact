// Copyright (c) 2015, The Regents of the University of California (Regents)
// See LICENSE.txt for license details

// Encourage use of gcc's parallel algorithms (for sort for relabeling)
#ifdef _OPENMP
  #define _GLIBCXX_PARALLEL
#endif

#include <algorithm>
#include <cinttypes>
#include <iostream>
#include <vector>

#include "benchmark.h"
#include "builder.h"
#include "command_line.h"
#include "graph.h"
#include "pvector.h"


/*
GAP Benchmark Suite
Kernel: Triangle Counting (TC)
Author: Scott Beamer

Will count the number of triangles (cliques of size 3)

Input graph requirements:
  - undirected
  - has no duplicate edges (or else will be counted as multiple triangles)
  - neighborhoods are sorted by vertex identifiers

Other than symmetrizing, the rest of the requirements are done by SquishCSR
during graph building.

This implementation reduces the search space by counting each triangle only
once. A naive implementation will count the same triangle six times because
each of the three vertices (u, v, w) will count it in both ways. To count
a triangle only once, this implementation only counts a triangle if u > v > w.
Once the remaining unexamined neighbors identifiers get too big, it can break
out of the loop, but this requires that the neighbors are sorted.

This implementation relabels the vertices by degree. This optimization is
beneficial if the average degree is sufficiently high and if the degree
distribution is sufficiently non-uniform. To decide whether to relabel the
graph, we use the heuristic in WorthRelabelling.
*/


using namespace std;
#include "libpfq_tc.h"

size_t OrderedCount(const Graph &g) {
  graph_pointer = &g;       // making the graph a global variable
  size_t total = 0;
  SETUP_GLOBAL_VARS();      // first_itr = true
  #pragma omp parallel for reduction(+ : total) schedule(dynamic, 64) PFH_CLAUSES shared(local_total)
  for (NodeID u=0; u < g.num_nodes(); u++) {
    SETUP_TLOCAL_VARS();
    pf_status_array[status_idx]=0;  // does nothing. just to make sure pf_status_array is mem resident
    for (NodeID v : g.out_neigh(u)) {
      if (v > u)
        break;
      auto it = g.out_neigh(v).begin();
      bool break_flag = false;
      // for (NodeID w : g.out_neigh(u)) {
      // changing ranged based loop to an iterator based one (iterator is a part of the state)
      for(NodeID* w_itr = g.out_neigh(u).begin(); w_itr != g.out_neigh(u).end(); w_itr++){
        NodeID w = *w_itr;
        if (w > v)
          break;
        // while (*it < w)
        //   it++;
        // added code instead of the above while loop ////////////////////////
        NodeID loaded_value;
        TRY{
          loaded_value = *it;         // may cause a page fault1
        }CATCH{
          state s = {v, it, u, w_itr};
          ENQUEUE(s,resume_iteration);                 // enqueue the state
          break;                      // jump to the next iteration (next v)
        }
        while (loaded_value < w){
          it++;
          TRY{
            loaded_value = *it;           // may cause a page fault2 
          }CATCH{                         // catches the page fault exception
            state s = {v, it, u, w_itr};
            ENQUEUE(s,resume_iteration);                   // enqueue the state
            break_flag = true;            // set the break flag to break out of the outer loop as well
            break;                        // break out of the inner loop
          }
        }
        if (break_flag) { break_flag = false; break; }  // break out of the outer loop as well
        //////////////////////////////////////////////////////////////////////
        if (w == *it)
          total++;
      }
    }
  }
  FLUSH_QUEUE(resume_iteration); // flush the page fault queue(s) at the end of the parallel for loop
  // update the reduction variable
  for(int i = 0; i < omp_get_max_threads(); i++)
  {
    total += local_total[i];
    local_total[i] = 0;   // reset the thread-local variables for the next iteration
  }
  return total;
}


// Heuristic to see if sufficiently dense power-law graph
bool WorthRelabelling(const Graph &g) {
  int64_t average_degree = g.num_edges() / g.num_nodes();
  if (average_degree < 10)
    return false;
  SourcePicker<Graph> sp(g);
  int64_t num_samples = min(int64_t(1000), g.num_nodes());
  int64_t sample_total = 0;
  pvector<int64_t> samples(num_samples);
  for (int64_t trial=0; trial < num_samples; trial++) {
    samples[trial] = g.out_degree(sp.PickNext());
    sample_total += samples[trial];
  }
  sort(samples.begin(), samples.end());
  double sample_average = static_cast<double>(sample_total) / num_samples;
  double sample_median = samples[num_samples/2];
  return sample_average / 1.3 > sample_median;
}


// Uses heuristic to see if worth relabeling
size_t Hybrid(const Graph &g) {
  if (WorthRelabelling(g))
    return OrderedCount(Builder::RelabelByDegree(g));
  else
    return OrderedCount(g);
}


void PrintTriangleStats(const Graph &g, size_t total_triangles) {
  cout << total_triangles << " triangles" << endl;
}


// Compares with simple serial implementation that uses std::set_intersection
bool TCVerifier(const Graph &g, size_t test_total) {
  size_t total = 0;
  vector<NodeID> intersection;
  intersection.reserve(g.num_nodes());
  for (NodeID u : g.vertices()) {
    for (NodeID v : g.out_neigh(u)) {
      auto new_end = set_intersection(g.out_neigh(u).begin(),
                                      g.out_neigh(u).end(),
                                      g.out_neigh(v).begin(),
                                      g.out_neigh(v).end(),
                                      intersection.begin());
      intersection.resize(new_end - intersection.begin());
      total += intersection.size();
    }
  }
  total = total / 6;  // each triangle was counted 6 times
  if (total != test_total)
    cout << total << " != " << test_total << endl;
  return total == test_total;
}


int main(int argc, char* argv[]) {
  initialize_perf_measurements();
  CLApp cli(argc, argv, "triangle count");
  if (!cli.ParseArgs())
    return -1;
  Builder b(cli);
  Graph g = b.MakeGraph();
  if (g.directed()) {
    cout << "Input graph is directed but tc requires undirected" << endl;
    return -2;
  }
  
  if(WorthRelabelling(g)){
    printf("relabeling the graph");
    g = Builder::RelabelByDegree(g);
  }

  if(cli.batching()){
    pagefault_queue_size = cli.queue_size();
    batching_mode = cli.batching_mode();
    allocate_pf_status_array();
    prepare_pmadvise();
    register_pf_status_array();
    unsigned long *ips = (unsigned long *)malloc(2 * sizeof(unsigned long));
    unsigned long *ret_ips = (unsigned long *)malloc(2 * sizeof(unsigned long));
    ips[0] = 0x407ece;  // t maker
    ret_ips[0] = 0x2;
    ips[1] = 0x407ef4;  // t maker
    ret_ips[1] = 0x2;
    register_ips_and_retips(ips, ret_ips, 2);
    // touch pages to make sure they reside in memory before starting the benchmark
    touch_pages(pf_status_array, 32*1024*sizeof(int));
    touch_ips(ips, ret_ips, 2);
  }

  BenchmarkKernel(cli, g, OrderedCount, PrintTriangleStats, TCVerifier);
  
  if(cli.batching()){
    unregister_and_free_arrays();
  }

  return 0;
}
