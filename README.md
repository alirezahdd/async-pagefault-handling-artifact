# IPDPS Artifact Repository

This repository contains the benchmark suites, custom Linux kernel, and example code for evaluating asynchronous page fault handling for memory-intensive applications.

## Repository Structure

- **`kernel/`**: Custom Linux kernel 6.7.2 with asynchronous page fault handling support
- **`patch/`**: Patch files showing modifications to each benchmark suite (see below)
- **`example/`**: Simple microbenchmark demonstrating library usage (vanilla vs. optimized versions)
- **`gapbs-master/`**: GAP Benchmark Suite with graph processing kernels
- **`gups-modified/`**: GUPS random memory access benchmark
- **`XSBench-master/`**: XSBench Monte Carlo neutron transport kernel
- **`gups-xsbench-results/`**: Results consolidation and plotting for GUPS and XSBench

## Benchmark Modifications

To see the complete modifications made to each benchmark suite (including source code changes, experiment scripts, result directories, Makefiles, etc.), refer to the patch files in the **`patch/`** directory:

- **`gapbs-modifications.patch`**: All modifications to the GAPBS benchmark suite
- **`gups-modifications.patch`**: All modifications to the GUPS benchmark
- **`xsbench-modifications.patch`**: All modifications to the XSBench benchmark

These patches capture the differences from the original vanilla versions to the optimized versions with asynchronous page fault handling support.

## Quick Start

**For complete evaluation workflow**, see the main artifact workflow document:
```
Artifact_Workflow.md
```

This document provides step-by-step instructions for:
1. Installing the custom kernel
2. Setting up prerequisites
3. Running all benchmark experiments
4. Generating paper figures

## Prerequisites

Before running any benchmarks, you must install the custom kernel:

```bash
cd kernel/
sudo ./setup_kernel.sh
sudo reboot
```

After reboot, verify the kernel installation:
```bash
uname -r  # Should show: 6.7.2
```

See `Artifact_Workflow.md` for complete setup instructions including LLVM, perf, and swap configuration.

## Example Usage

For a quick introduction to the asynchronous page fault handling library, see the `example/` directory. It contains:
- Baseline and optimized versions of a simple random memory access benchmark
- Step-by-step integration guide
- Makefile demonstrating the two-stage compilation process

## Benchmarks

### GAPBS (gapbs-master/)
Graph processing kernels: BFS, SSSP, PageRank, Connected Components, Betweenness Centrality, Triangle Counting.

**Workflow**: See `gapbs-master/Artifact_Workflow.md` for detailed instructions including graph building, experiment execution, and figure generation.

Original: [https://github.com/sbeamer/gapbs](https://github.com/sbeamer/gapbs)

### GUPS (gups-modified/)
HPCC RandomAccess benchmark measuring random memory update rates.

**Workflow**: See `gups-modified/Artifact_Workflow.md` for experiment details.

Original: [https://github.com/alexandermerritt/gups](https://github.com/alexandermerritt/gups)

### XSBench (XSBench-master/)
Monte Carlo neutron transport cross-section lookup kernel. Includes OpenMP threading and batching variants.

**Workflow**: See `XSBench-master/Artifact_Workflow.md` for experiment details.

Original: [https://github.com/ANL-CESAR/XSBench](https://github.com/ANL-CESAR/XSBench)

## Expected Results

After completing all experiments:
- **Figures 1, 2, 4, 5, 6, 7, 8**: Generated from GAPBS experiments
- **Figure 9**: Generated from combined GUPS and XSBench results

Total evaluation time: ~3-5 days (including kernel compilation and graph building)

## Building Benchmarks

Each benchmark has its own Makefile. However, **you must install the custom kernel first** before building any benchmarks.

```bash
# Install custom kernel first
cd kernel/
sudo ./setup_kernel.sh
sudo reboot

# After reboot, build benchmarks
cd gapbs-master && make
cd ../gups-modified && make
cd ../XSBench-master/openmp-threading && make
cd ../example && make
```

**Note**: The artifact includes pre-compiled binaries for GAPBS, so compilation is optional unless you want to modify the code. See individual Artifact_Workflow.md files for details on the two-stage compilation process (initial build + PC extraction + rebuild).

## Documentation

- **`Artifact_Workflow.md`**: Main workflow for complete evaluation
- **`gapbs-master/Artifact_Workflow.md`**: GAPBS-specific instructions
- **`gups-modified/Artifact_Workflow.md`**: GUPS-specific instructions  
- **`XSBench-master/Artifact_Workflow.md`**: XSBench-specific instructions
- **`example/README`**: Quick start guide for the example microbenchmark

## License

Each benchmark retains its original license. See LICENSE files in respective directories.