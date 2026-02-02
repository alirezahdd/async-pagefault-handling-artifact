// Copyright (c) 2015, The Regents of the University of California (Regents)
// See LICENSE.txt for license details

#ifndef BENCHMARK_H_
#define BENCHMARK_H_

#include <algorithm>
#include <cinttypes>
#include <functional>
#include <random>
#include <utility>
#include <vector>

#include "builder.h"
#include "graph.h"
#include "timer.h"
#include "util.h"
#include "writer.h"

#include "profiling_utils.h"
// make sure to include the runtime_visualizer_utils.h from the include directory
// and not from the src directory
#include "../omp_runtime_visualizer/include/runtime_visualizer_utils.h"

/*
GAP Benchmark Suite
File:   Benchmark
Author: Scott Beamer

Various helper functions to ease writing of kernels
*/


// Default type signatures for commonly used types
typedef int32_t NodeID;
typedef int32_t WeightT;
typedef NodeWeight<NodeID, WeightT> WNode;

typedef CSRGraph<NodeID> Graph;
typedef CSRGraph<NodeID, WNode> WGraph;

typedef BuilderBase<NodeID, NodeID, WeightT> Builder;
typedef BuilderBase<NodeID, WNode, WeightT> WeightedBuilder;

typedef WriterBase<NodeID, NodeID> Writer;
typedef WriterBase<NodeID, WNode> WeightedWriter;


// Used to pick random non-zero degree starting points for search algorithms
template<typename GraphT_>
class SourcePicker {
 public:
  explicit SourcePicker(const GraphT_ &g, NodeID given_source = -1)
      : given_source_(given_source), rng_(kRandSeed),
        udist_(g.num_nodes()-1, rng_), g_(g) {}

  NodeID PickNext() {
    if (given_source_ != -1)
      return given_source_;
    NodeID source;
    do {
      source = udist_();
    } while (g_.out_degree(source) == 0);
    return source;
  }

 private:
  NodeID given_source_;
  std::mt19937_64 rng_;
  UniDist<NodeID, std::mt19937_64> udist_;
  const GraphT_ &g_;
};


// Returns k pairs with the largest values from list of key-value pairs
template<typename KeyT, typename ValT>
std::vector<std::pair<ValT, KeyT>> TopK(
    const std::vector<std::pair<KeyT, ValT>> &to_sort, size_t k) {
  std::vector<std::pair<ValT, KeyT>> top_k;
  ValT min_so_far = 0;
  for (auto kvp : to_sort) {
    if ((top_k.size() < k) || (kvp.second > min_so_far)) {
      top_k.push_back(std::make_pair(kvp.second, kvp.first));
      std::sort(top_k.begin(), top_k.end(),
                std::greater<std::pair<ValT, KeyT>>());
      if (top_k.size() > k)
        top_k.resize(k);
      min_so_far = top_k.back().first;
    }
  }
  return top_k;
}


bool VerifyUnimplemented(...) {
  std::cout << "** verify unimplemented **" << std::endl;
  return false;
}


// Calls (and times) kernel according to command line arguments
template<typename GraphT_, typename GraphFunc, typename AnalysisFunc,
         typename VerifierFunc>
void BenchmarkKernel(const CLApp &cli, const GraphT_ &g,
                     GraphFunc kernel, AnalysisFunc stats,
                     VerifierFunc verify) {
  g.PrintStats();
  double total_seconds = 0;
  
  // adding profiling markers and rusage counters for performance analysis
  long long user_instructions, kernel_instructions,
              user_time, kernel_time;
  start_disk_stats("disk.stats");
  start_taskstats();                    
  snapshot_proc_pid(BEGIN);
  snapshot_proc_stat(BEGIN);
  start_counters(&perf_ctrs);
  trace_marker("BenchmarkKernel_Start");
  start_time_stats();
  ompt_mark_roi_start();

  Timer trial_timer;
  for (int iter=0; iter < cli.num_trials(); iter++) {
    trial_timer.Start();
    auto result = kernel(g);
    trial_timer.Stop();
    PrintTime("Trial Time", trial_timer.Seconds());
    total_seconds += trial_timer.Seconds();
    if (cli.do_analysis() && (iter == (cli.num_trials()-1)))
      stats(g, result);
    if (cli.do_verify()) {
      trial_timer.Start();
      PrintLabel("Verification",
                 verify(std::ref(g), std::ref(result)) ? "PASS" : "FAIL");
      trial_timer.Stop();
      PrintTime("Verification Time", trial_timer.Seconds());
    }
    ompt_annotate("Trial End");
  }
  
  // adding profiling markers and rusage counters for performance analysis
  ompt_mark_roi_end();
  stop_time_stats();
  trace_marker("BenchmarkKernel_End");
  stop_counters(&perf_ctrs, &user_time, &kernel_time ,&user_instructions, &kernel_instructions);
  snapshot_proc_stat(END);
  snapshot_proc_pid(END);
  stop_taskstats();
  stop_disk_stats();
  cleanup_counters(&perf_ctrs);
  measure_time_stats();

  PrintTime("Average Time", total_seconds / cli.num_trials());
}

#endif  // BENCHMARK_H_
