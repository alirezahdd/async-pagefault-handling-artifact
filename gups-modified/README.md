# GUPS Benchmark Suite

A collection of GUPS (Giga Updates Per Second) benchmark implementations for high-performance computing research.

## Overview

This repository contains multiple implementations of the HPCC RandomAccess (GUPS) benchmark:

- **Single-threaded version** - Baseline single-core implementation
- **OpenMP version** - Multi-threaded with region-based partitioning  

## Quick Start

```bash
# Build all versions
make all

# Run tests
make test
```

## Directory Structure

```
├── src/                       # Source code
│   ├── gups_single_threaded.c # Single-threaded implementation
│   ├── gups_openmp.c          # OpenMP region-based implementation
│   └── gups_vanilla.c         # Original MPI version (reference)
├── docs/                      # Documentation
│   └── README.md             # Detailed usage guide
├── gups_single_threaded       # Compiled executable (after build)
├── gups_openmp               # Compiled executable (after build)
├── Makefile                  # Build system
└── README.md                # This file
```

## Usage Examples

```bash
# Single-threaded (table size=2^20, 100 iterations, 1000 updates/iteration)
./gups_single_threaded 20 100 1000

# OpenMP with 4 threads (requires power-of-2 thread count)
./gups_openmp 20 100 1000 4
```

## Performance Features

- **Region-based partitioning** in OpenMP version eliminates atomic operations
- **No synchronization overhead** between threads
- **Better scaling** with increasing thread count
- **Optimized for memory bandwidth** intensive workloads

## Requirements

- GCC compiler with OpenMP support
- POSIX-compliant system (Linux, macOS, etc.)

## Documentation

See [docs/README.md](docs/README.md) for detailed usage instructions, compilation options, and performance notes.

## Attribution

Modified from the original GUPS implementation by Steve Plimpton at Sandia National Laboratories.