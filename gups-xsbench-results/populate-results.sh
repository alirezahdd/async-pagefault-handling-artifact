#!/bin/bash
# DEPRECATED: Use 'make' instead for better dependency tracking
# This script is kept for backward compatibility only

# Clean up and recreate directories to ensure fresh state
rm -rf GUPS XSBench

# Create GUPS directory structure
mkdir -p GUPS
cp -r ../gups-modified/experiments/performance_evaluation/results/gups_single_threaded GUPS/
cp -r ../gups-modified/experiments/performance_evaluation/results/gups_single_threaded_batching GUPS/
cp gather_stats_gups.py GUPS/

# Create XSBench directory structure
mkdir -p XSBench/XSBench_batching
mkdir -p XSBench/XSBench
cp -r ../XSBench-master/openmp-threading/experiments/performance-evaluation/results/XSBench XSBench
cp -r ../XSBench-master/openmp-threading-batching/experiments/performance-evaluation/results/XSBench/* XSBench/XSBench_batching
cp gather_stats_xs.py XSBench/

python3 generate_exetime_breakdown.py
