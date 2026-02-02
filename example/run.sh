#!/bin/bash

# Limit memory to 2 megabytes
sudo ./limit_mem.sh 2M

# Run the benchmark with memory limit
sudo cgexec -g memory:u_bench_group ./u_benchmark
