# Makefile for GUPS benchmarks
# Compile with: make all
# Run single-threaded: ./gups_single_threaded 20 100 1000
# Run OpenMP: ./gups_openmp 20 100 1000 4

TASKSTATS_INCLUDE_PATH = ../../linux-sources/linux-6.7.2-modified-pf-handler/usr/include/linux/taskstats.h

CXX = g++
CXX_FLAGS = -std=c++11 -O3 -Wall -g -no-pie
CXX_FLAGS += -DNUM_CORES=$(shell nproc)
CXX_FLAGS += -include $(TASKSTATS_INCLUDE_PATH)


# Source directory
SRCDIR = src

# Add -DLONG64 if your system has 64-bit longs
# Otherwise, the code assumes long long is 64-bit
# CXX_FLAGS += -DLONG64

# Add -DCHECK to enable correctness checking
# CXX_FLAGS += -DCHECK

all: gups_single_threaded gups_single_threaded_batching

gups_single_threaded: $(SRCDIR)/gups_single_threaded.cc
	$(CXX) $(CXX_FLAGS) -DNUM_CORES=1 -o $@ $<
	@echo "Extracting assembly from $@..."
	cd ./src_assembly && ./extract_asm.sh -l $@

gups_single_threaded_batching: $(SRCDIR)/gups_single_threaded_batching.cc
	$(CXX) $(CXX_FLAGS) -DNUM_CORES=1 -o $@ $<
	@echo "Extracting assembly from $@..."
	cd ./src_assembly && ./extract_asm.sh -l $@

clean:
	rm -f gups_single_threaded gups_single_threaded_batching *.stats

test: all
	@echo "Testing single-threaded version:"
	./gups_single_threaded 20 10 1000
	@echo "Testing single-threaded batching version:"
	./gups_single_threaded_batching 20 10 1000

.PHONY: all clean test