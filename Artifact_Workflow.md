# Artifact Workflow

This is the main workflow document for reproducing the results presented in the paper. This artifact includes three benchmark suites (GAPBS, GUPS, and XSBench) along with a custom Linux kernel that implements the asynchronous page fault handling mechanism.

## Overview

The evaluation process consists of:
1. **Prerequisites**: Install and configure the custom kernel, tools, and swap space
2. **GAPBS Experiments**: Run graph processing benchmarks (Figures 1, 2, 4, 5, 6, 7, 8)
3. **GUPS Experiments**: Run memory-intensive GUPS benchmark
4. **XSBench Experiments**: Run XSBench benchmark
5. **Generate Figure 9**: Consolidate GUPS and XSBench results

**Important**: Each benchmark directory contains its own `Artifact_Workflow.md` with detailed instructions.

**Note**: To review the modifications made to each benchmark suite (source code, experiment scripts, Makefiles, etc.), see the patch files in the `patch/` directory. These patches show the differences from the original vanilla versions.

---

## Prerequisites

### 1. Custom Kernel Installation

This artifact requires a custom Linux kernel (version 6.7.2) with asynchronous page fault handling support.

**Automated Installation:**

Navigate to the kernel directory and run the setup script:
```bash
cd kernel/
sudo ./setup_kernel.sh
```

This script will:
- Download Linux kernel 6.7.2 from kernel.org
- Extract and apply custom modifications
- Compile and install the kernel
- Install kernel modules
- Install kernel headers to `/usr/include`
- Update GRUB bootloader

**Note**: Kernel compilation may take 30-60 minutes depending on your system.

**After installation:**
1. Reboot your system:
   ```bash
   sudo reboot
   ```

2. Verify the custom kernel is running:
   ```bash
   uname -r
   # Should show: 6.7.2
   ```

3. Verify kernel headers are installed:
   ```bash
   ls /usr/include/linux/taskstats.h
   ```

### 2. Install LLVM 10

The benchmarks use LLVM's OpenMP runtime for optimal control:
```bash
sudo apt-get install llvm-10 clang-10 libomp-10-dev
```

Set LLVM 10 as the default (if needed):
```bash
sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-10 100
sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-10 100
```

### 3. Install Perf

Install `perf` from the kernel source for accurate performance monitoring:
```bash
cd linux-6.7.2-modified-pf-handler/tools/perf
make
sudo make install
```

Verify perf installation:
```bash
perf --version
```

### 4. Configure Swap Space

**Requirement**: A dedicated SSD for swap space is required to simulate memory pressure scenarios.

Run the provided swap configuration script:
```bash
sudo ./make_swap.sh
```

This script will:
- Create a swap file on the dedicated SSD
- Configure swap settings appropriate for the experiments
- Enable the swap space

**Note**: Ensure you have sufficient free space on your SSD (at least 100GB recommended).

---

## Step 1: Run GAPBS Experiments

Navigate to the GAPBS directory and follow its workflow:
```bash
cd gapbs-master/
```

**Important**: Before running GAPBS experiments, you must first build the input graphs. Follow Step 0 in the GAPBS workflow to build and place graphs in `/share/graphs/`. This is a one-time process that requires ~275 GB disk space and up to 8 hours.

Consult the detailed instructions in:
```
gapbs-master/Artifact_Workflow.md
```

**Expected output**: Figures 1, 2, 4, 5, 6, 7, and 8

**Estimated time**: 
- Graph building (Step 0): Up to 8 hours
- Experiments (Steps 1-2): 2-3 days

---

## Step 2: Run GUPS Experiments

Navigate to the GUPS directory and follow its workflow:
```bash
cd ../gups-modified/
```

Consult the detailed instructions in:
```
gups-modified/Artifact_Workflow.md
```

**Expected output**: GUPS results for Figure 9

---

## Step 3: Run XSBench Experiments

Navigate to the XSBench directory and follow its workflow:
```bash
cd ../XSBench-master/
```

Consult the detailed instructions in:
```
XSBench-master/Artifact_Workflow.md
```

**Expected output**: XSBench results for Figure 9

---

## Step 4: Generate Figure 9 (GUPS + XSBench Combined)

Once both GUPS and XSBench experiments are complete, consolidate the results and generate Figure 9:

```bash
cd ../gups-xsbench-results/
make
```

This will:
- Gather results from both GUPS and XSBench experiments
- Consolidate them into a unified directory structure
- Generate Figure 9 showing performance comparison

**Expected output**: 
- Consolidated results in the results directory
- Figure 9 showing combined GUPS and XSBench performance

---

## Summary

After completing all steps, you should have:
- **Figures 1, 2, 4, 5, 6, 7, 8** from GAPBS experiments (including graph building prerequisite)
- **Figure 9** from combined GUPS and XSBench experiments

All figures correspond to the results presented in the paper.

**Total estimated time**: 
- GAPBS (including graph building): ~3-4 days
- GUPS: Several hours
- XSBench: Several hours
- Combined plotting: Minutes

---

## Troubleshooting

### Kernel Issues
- Ensure the custom kernel is properly installed and booted
- Check kernel version with `uname -r`
- Verify kernel headers are installed at `/usr/include/linux/`

### Compilation Errors
- Verify LLVM 10 is installed: `clang --version`
- Check that `TASKSTATS_INCLUDE_PATH` is set correctly in Makefiles
- Ensure kernel headers are accessible

### Performance Monitoring Issues
- Verify `perf` is from the custom kernel source, not distribution packages
- Check perf permissions: `sudo sysctl -w kernel.perf_event_paranoid=-1`

### Swap Space Issues
- Ensure dedicated SSD has sufficient free space
- Check swap is enabled: `swapon --show`
- Verify swap configuration with `free -h`

For detailed troubleshooting, consult the individual workflow documents in each benchmark directory. 

