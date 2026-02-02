# Artifact Workflow for XSBench

## Overview

This artifact provides **pre-compiled binaries** along with source code and assembly files to facilitate evaluation. Evaluators can directly proceed to running experiments (Step 1) without needing to compile the code.

**What's included:**
- Pre-compiled benchmark binaries (baseline in `openmp-threading/` and batching variant in `openmp-threading-batching/`)
- Source code (in `openmp-threading/` and `openmp-threading-batching/` directories)
- Assembly files (in `openmp-threading-batching/src_assembly/` directory)
- Experiment scripts and analysis tools

**Note for evaluators:** If you wish to compile the benchmarks from source, please refer to **Appendix** at the end of this document. Be aware that the compilation process involves manual configuration and PC value extraction, which can be time-consuming and error-prone.

---

## Step 1: Running the experiments

This step executes the benchmark experiments to reproduce the paper's results. The experiments are organized by figure number for easy reference.

### 1.1 Performance Evaluation 

Navigate to the original algorithm performance evaluation directory:
```bash
cd openmp-threading/experiments/performance-evaluation/
```

Run the **baseline** and **oversubscribed (TOS)** experiments using the provided script:
```bash
sudo ./run.sh
```

Now navigate to the **batching** algorithm performance evaluation directory:
```bash
cd openmp-threading-batching/experiments/performance-evaluation/
```

Run the baseline and oversubscribed experiments using the provided script:
```bash
sudo ./run.sh
```

**What these run scripts do**:
- Configure appropriate flags and inputs
- Limit memory to 30% of working set size using cgroups (simulates memory pressure)
- Manage and organize generated results

## Step 2: Plotting the results

This step generates Figure 9 from the paper. 

**Note**: Figure 9 combines results from both GUPS and XSBench benchmarks. To generate the complete figure:

1. Complete the XSBench experiments (Step 1 above)
2. Run the GUPS experiments (see `gups-modified/` directory and consult its own `Artifact_Workflow.md`)
3. Follow the instructions in `Artifact_Workflow.md` at the repository root to consolidate results from both benchmarks and generate the final plot



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

Once configured, navigate to the batching directory and compile:
```bash
cd openmp-threading-batching/
make
```

**Expected output**: 
- Compiled binary in `openmp-threading-batching/` directory (`XSBench`)
- Assembly file (`XSBench.asm`) in the `openmp-threading-batching/src_assembly/` directory (needed for Stage 2)

### Stage 2: Updating PC Values and Recompiling

This stage configures the asynchronous fault handling by identifying and registering the program counter (PC) values of instructions that cause page faults. PC values are platform-specific and will differ based on your system and compiler settings.

#### Instructions:

1. **Open the batching source file**: Navigate to the `openmp-threading-batching/` directory and open `Main.c`. This is the version with asynchronous fault handling.

2. **Locate trouble maker instructions**: Search for comments containing **`trouble maker`** in the source code. These mark the memory access instructions that cause the most page faults and are the target for asynchronous handling.

3. **Find the faulting PC in assembly**: 
   - Open the `.asm` file in the `openmp-threading-batching/src_assembly/` directory (`XSBench.asm`).
   - Search for the same **`trouble maker`** comment.
   - Identify the `mov` instruction that causes the page fault and note its PC address (the hex value at the start of the line).
   - Note the PC of the first instruction in the `CATCH` block (typically the next instruction after the faulting `mov`).

4. **Calculate the offset**: Compute the byte offset between the faulting instruction's PC and the first instruction of the `CATCH` block. This is typically a small value (e.g., `0x3`).

5. **Update the source code**:
   - Return to the source file (`Main.c` in `openmp-threading-batching/`).
   - Locate the `ips` and `ret_ips` array declarations near the end of `main()`.
   - Add the faulting PC to the `ips` array.
   - Add the calculated offset to the `ret_ips` array at the same index.
   - Update the array size and the count parameter in `register_ips_and_retips()`.

6. **Repeat for all trouble makers**: Perform steps 3-5 for each trouble maker instruction in the file.

7. **Recompile**: From the `openmp-threading-batching/` directory, run `make` to rebuild the benchmark with the updated PC values:
   ```bash
   make
   ```

**Expected output**: Final binary (`XSBench`) with correctly configured PC values for asynchronous fault handling.

### Summary:
- Install kernel headers from the custom kernel source
- Set `TASKSTATS_INCLUDE_PATH` in the `Makefile`
- Run `make` for initial compilation
- Extract PC values from generated assembly files
- Update source code with PC values
- Run `make` again for final compilation