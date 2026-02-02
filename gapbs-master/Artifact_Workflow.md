# Artifact Workflow for GAPBS

## Overview

This artifact provides **pre-compiled binaries** along with source code and assembly files to facilitate evaluation. Evaluators can directly proceed to running experiments (Step 1) without needing to compile the code.

**What's included:**
- Pre-compiled benchmark binaries (baseline and `_batching` variants)
- Source code (in `src/` directory)
- Assembly files (in `src_assembly/` directory)
- Experiment scripts and analysis tools

**Note for evaluators:** If you wish to compile the benchmarks from source, please refer to **Appendix** at the end of this document. Be aware that the compilation process involves manual configuration and PC value extraction, which can be time-consuming and error-prone.

---

## Step 0: Building the Input Graphs (Prerequisite)

Before running any experiments, you must first build the input graphs required by the benchmarks.

### Graph Generation:

The benchmark suite requires several input graphs (both real-world and synthetic). These graphs need to be built and placed in a shared location for all benchmarks to access.

**Navigate to the GAPBS directory:**
```bash
cd gapbs-master/
```

**Build all required input graphs:**
```bash
make bench-graphs
```

**What this does:**
- Downloads real-world graphs (Twitter, Web, Road networks)
- Generates synthetic graphs (Kronecker, Uniform Random)
- Converts graphs to optimized serialized formats (.sg, .wsg)
- Creates both directed and undirected variants

**⚠️ Resource Requirements:**
- **Disk Space**: ~275 GB (can be reduced to ~175 GB after deleting `benchmark/graphs/raw`)
- **Memory**: ~64 GB RAM
- **Time**: Up to 8 hours (depends on internet bandwidth and filesystem)

**Move graphs to shared location:**
```bash
sudo mkdir -p /share/graphs
sudo mv benchmark/graphs/* /share/graphs/
sudo chmod -R 755 /share/graphs
```

**Note:** The experiment scripts are configured to locate graphs at `/share/graphs/`. If you need to use a different location, edit the `GRAPH_DIR` variable in the experiment run scripts (`experiments/*/run*.sh`).

**Optional cleanup to save disk space:**
```bash
sudo rm -rf /share/graphs/raw
```

This removes the raw downloaded graph files after conversion, saving approximately 100 GB of disk space.

---

## Step 1: Running the experiments

This step executes the benchmark experiments to reproduce the paper's results. The experiments are organized by figure number for easy reference.

### Experiment Structure:

The `experiments` directory contains the following subdirectories:
```
experiments/
├── app-specific_opt_performance_evaluation ... Figure 7
├── collected_results
├── faulting_pcs_evaluation ................... Figure 6
├── performance_evaluation .................... Other figures
└── q_size_study .............................. Figure 8
```

### 1.1 Performance Evaluation

Navigate to the performance evaluation directory:
```bash
cd experiments/performance_evaluation/
```

Run the baseline and optimized experiments using the provided scripts:
```bash
sudo ./run_vanillas.sh    # Baseline and thread-oversubscribed versions
sudo ./run_batchings.sh   # Optimized versions with asynchronous fault handling
```

**What these scripts do**:
- Iterate through all algorithms and input graphs
- Configure appropriate flags and thread counts
- Limit memory to 30% of working set size using cgroups (simulates memory pressure)
- Manage and organize generated results

**Note**: These experiments take approximately 2-3 days to complete.

### 1.2 Faulting PC Evaluation (Figure 6)

Navigate to the faulting PCs evaluation directory:
```bash
cd ../faulting_pcs_evaluation/
```

Run the baseline experiments to collect page fault traces:
```bash
sudo ./run.sh
```

**What this does**:
- Runs baseline (non-batching) versions of all algorithms on road and urand graphs
- Uses `perf trace --pf=maj` to capture major page fault traces
- Records the program counter (PC) addresses that cause page faults
- Saves trace files in `results/<algorithm>/trace/` directory

Measure the contribution of different PCs to total page faults:
```bash
./measure_pc_contribution.sh
```

**What this does**:
- Analyzes each trace file using `extract_pcs.py`
- Calculates the percentage of page faults attributed to each PC address
- Groups page faults by function and instruction offset
- Saves contribution statistics to `pc_contributions/` directory

**Important Note**: The PC addresses are platform-specific and will differ based on your system architecture, compiler version, and compilation settings. Therefore, **Figure 6 must be manually constructed** from the generated statistics:

1. Open the contribution files in `pc_contributions/` (e.g., `bc_bc-road-30-1-not_batched-no-no-1-391.trace_contribution.txt`)
2. Identify the instructions with the highest page fault contributions
3. Compare these "hot" instructions with the trouble maker instructions marked in the source code
4. Create a stacked bar chart showing the percentage contribution of different instruction addresses to total page faults


### 1.3 Application-Specific Optimization Evaluation

Navigate to the app-specific optimization directory:
```bash
cd ../app-specific_opt_performance_evaluation/
```

Run the experiments without app-specific optimizations (i.e., without Selective Handling and Chunk Readahead):
```bash
./run.sh
```

### 1.4 Queue Size Sensitivity Study

Navigate to the queue size study directory:
```bash
cd ../q_size_study/
```

Run experiments with varying page fault queue sizes:
```bash
sudo ./run_vanillas.sh    # Baseline
sudo ./run_batchings.sh   # Optimized with different queue sizes
```

### 1.5 Collect Results

Once all experiments are complete, gather and organize the results:
```bash
cd ../collected_results/
./populate_results.sh
```

This script consolidates results from all experiments into directories accessible to the analysis and plotting tools.

## Step 2: Plotting the results

This step generates the figures presented in the paper from the collected experimental data.

### 2.1 Performance Results (Figures 1, 2, 4, 5, and 7)

Navigate to the performance plotters directory:
```bash
cd experiments/collected_results/results_performance/plotters/
```

Run all plotting scripts:
```bash
./_plot.sh
```

**Output**: The generated figures will be placed in:
```
experiments/collected_results/results_performance/figures/
```

### 2.2 Queue Size Sensitivity Results (Figure 8)

Navigate to the queue size results directory:
```bash
cd ../../results_q_size/plotters/
```

Generate Figure 8:
```bash
./_plot.sh
```

**Output**: The generated figure will be placed in:
```
experiments/collected_results/results_q_size/figures/
```

### Summary:
- Performance-related figures (1, 2, 4, 5, 7) are in `results_performance/figures/`
- Queue size study figure (8) is in `results_q_size/figures/`
- **Figure 6** must be manually constructed from the PC contribution statistics in `experiments/faulting_pcs_evaluation/pc_contributions/` due to platform-specific PC addresses

---

## Appendix: Compiling the benchmark suite from source (Optional)

**⚠️ Warning:** This process involves manual configuration and is only necessary if you want to modify and recompile the benchmarks. The artifact already includes pre-compiled binaries. Note that compilation happens in two stages: initial compilation to generate binaries and assembly files, followed by PC value extraction and final recompilation.

### Stage 1: Initial Compilation

This stage compiles all benchmark variants (baseline and batching versions) and generates assembly files needed for PC analysis.

#### Compilation Configuration:

The provided `Makefile` automates the compilation with the following flags:
- **`-g`**: Debug symbols (required for assembly analysis)
- **`--no-pie`**: Disables position-independent executable (ensures consistent PC addresses)
- **`-O3`**: Optimization level 3 (matches production performance)
- **OpenMP runtime**: Uses LLVM's OpenMP implementation for maximum control and visibility

#### Prerequisites:

The benchmarks require the Linux `taskstats.h` kernel UAPI header to be pre-included during compilation.

**Note**: This artifact uses a custom kernel (provided in a separate artifact), not the standard distribution kernel.

1. **Install kernel headers**: Navigate to the custom kernel source directory and install the headers:
   ```bash
   sudo make headers_install INSTALL_HDR_PATH=/usr
   ```

2. **Verify the header file**: The header should now be located at:
   ```
   /usr/include/linux/taskstats.h
   ```

3. **Configure the Makefile**: Open the `Makefile` and set the `TASKSTATS_INCLUDE_PATH` variable to point to the directory containing `taskstats.h` (e.g., `/usr/include/linux`).

#### Initial Compilation:

Once configured, compile all benchmarks:
```bash
make
```

**Expected output**: 
- Compiled binaries for all benchmarks (both baseline and `_batching` variants)
- Assembly files (`*.asm`) in the `src_assembly` directory (needed for Stage 2)

### Stage 2: Updating PC Values and Recompiling

This stage configures the asynchronous fault handling by identifying and registering the program counter (PC) values of instructions that cause page faults. PC values are platform-specific and will differ based on your system and compiler settings.

#### Instructions:

1. **Open the batching source files**: Navigate to the `src` directory and open files with the **`_batching`** postfix (e.g., `bc_batching.cc`, `bfs_batching.cc`). These are the versions with asynchronous fault handling.

2. **Locate trouble maker instructions**: Search for comments containing **`trouble maker`** in the source code. These mark the memory access instructions that cause the most page faults and are the target for asynchronous handling.

3. **Find the faulting PC in assembly**: 
   - Open the corresponding `.asm` file in the `src_assembly` directory (e.g., `bc_batching.asm` for `bc_batching.cc`).
   - Search for the same **`trouble maker`** comment.
   - Identify the `mov` instruction that causes the page fault and note its PC address (the hex value at the start of the line).
   - Note the PC of the first instruction in the `CATCH` block (typically the next instruction after the faulting `mov`).

4. **Calculate the offset**: Compute the byte offset between the faulting instruction's PC and the first instruction of the `CATCH` block. This is typically a small value (e.g., `0x3`).

5. **Update the source code**:
   - Return to the source file (e.g., `bc_batching.cc`).
   - Locate the `ips` and `ret_ips` array declarations near the end of `main()`.
   - Add the faulting PC to the `ips` array.
   - Add the calculated offset to the `ret_ips` array at the same index.
   - Update the array size and the count parameter in `register_ips_and_retips()`.

6. **Repeat for all trouble makers**: Perform steps 3-5 for each trouble maker instruction in the file.

7. **Recompile**: Run `make` to rebuild the benchmarks with the updated PC values:
   ```bash
   make
   ```

**Expected output**: Final binaries with correctly configured PC values for asynchronous fault handling.

### Summary:
- Build input graphs using `make bench-graphs` and move to `/share/graphs/`
- Install kernel headers from the custom kernel source
- Set `TASKSTATS_INCLUDE_PATH` in the `Makefile`
- Run `make` for initial compilation
- Extract PC values from generated assembly files
- Update source code with PC values
- Run `make` again for final compilation