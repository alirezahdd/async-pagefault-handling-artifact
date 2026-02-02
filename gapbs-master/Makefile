# See LICENSE.txt for license details.

# Include path for enabling taskstats 
TASKSTATS_INCLUDE_PATH = ../../linux-sources/linux-6.7.2-modified-pf-handler/usr/include/linux/taskstats.h
# TASKSTATS_INCLUDE_PATH = ../../linux-sources/linux-6.7.2-modified-pf-handler/include/uapi/linux/taskstats.h
LLVM_VERSION = 10 # better compatibility with version 10 of LLVM/Clang

CXX_FLAGS += -std=c++11 -O3 -Wall
# debugging enabled. no layout randomization
CXX_FLAGS += -g -no-pie
# define the number of cores to be used in the code for profiling/pf-hiding purposes
CXX_FLAGS += -DNUM_CORES=$(shell nproc)
CXX_FLAGS += -include $(TASKSTATS_INCLUDE_PATH)
PAR_FLAG = -fopenmp

# To enable OMPT support, we need to include the OpenMP headers and link against the OpenMP library.
# Set the LLVM version explicitly or auto-detect
# Uncomment the next line to set a specific LLVM version
LLVM_VERSION = 10
ifndef LLVM_VERSION
LLVM_VERSION = $(shell ls /usr/bin/llvm-config-* 2>/dev/null | sed 's/.*-//' | sort -n | tail -1)
endif
ifeq ($(strip $(LLVM_VERSION)),)
LLVM_VERSION = 18
endif
# LLVM_PATH = /usr/lib/llvm-$(LLVM_VERSION)
LLVM_PATH = $(shell llvm-config-$(LLVM_VERSION) --prefix)
OMP_INCLUDE = $(shell dpkg -L libomp-$(LLVM_VERSION)-dev | grep omp-tools.h)
OMP_TOOL_INCLUDE = $(shell dpkg -L libomp-$(LLVM_VERSION)-dev | grep omp.h)
OPENMP_LIB = $(LLVM_PATH)/lib

OMP_INCLUDE_DIR = $(shell dirname $(OMP_INCLUDE))

# Linking againts llvm OpenMP library and including omp headers from llvm
# directly including omp.h from llvm might cause issues by conflicting with other header files
# that are included in the source files. So do not include headers directly if
# the source files do not include omp headers in them.
# PAR_FLAG += -include $(OMP_INCLUDE) -include $(OMP_TOOL_INCLUDE) -L$(OPENMP_LIB) -lomp
PAR_FLAG += -I$(OMP_INCLUDE_DIR) -L$(OPENMP_LIB) -lomp

ifneq (,$(findstring icpc,$(CXX)))
	PAR_FLAG = -openmp
endif

ifneq (,$(findstring sunCC,$(CXX)))
	CXX_FLAGS = -std=c++11 -xO3 -m64 -xtarget=native
	PAR_FLAG = -xopenmp
endif

ifneq ($(SERIAL), 1)
	CXX_FLAGS += $(PAR_FLAG)
endif

KERNELS = bc bc_batching bc_batching_nopt
KERNELS += bfs bfs_batching bfs_batching_nopt
KERNELS += cc cc_batching cc_batching_nopt
KERNELS += pr pr_batching
KERNELS += sssp sssp_batching sssp_batching_nopt
KERNELS += tc tc_batching

SUITE = $(KERNELS) converter

.PHONY: all
all: $(SUITE)

% : src/%.cc src/*.h
	$(CXX) $(CXX_FLAGS) $< -o $@
	@cd src_assembly && ./extract_asm.sh -l $@

# Testing
include test/test.mk

# Benchmark Automation
include benchmark/bench.mk


.PHONY: clean
clean:
	rm -f $(SUITE) test/out/*
