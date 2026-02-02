#===============================================================================
# User Options
#===============================================================================

# Include path for enabling taskstats 
TASKSTATS_INCLUDE_PATH = ../../../linux-sources/linux-6.7.2-modified-pf-handler/usr/include/linux/taskstats.h
# TASKSTATS_INCLUDE_PATH = ../../../linux-sources/linux-6.7.2-modified-pf-handler/include/uapi/linux/taskstats.h

# Compiler can be set below, or via environment variable
# ifeq ($(CXX),)
CXX    = g++
# endif
OPTIMIZE    = yes
OPENMP      = yes
DEBUG       = no
PROFILE     = no
MPI         = no
AML         = no

#===============================================================================
# Program name & source code list
#===============================================================================

program = XSBench

source = \
Main.c \
io.c \
Simulation.c \
GridInit.c \
XSutils.c \
Materials.c

obj = $(source:.c=.o)

#===============================================================================
# Sets Flags
#===============================================================================

# Make sure we didn't pick up lower case cc
# ifeq (cc,$(CXX))
# CXX    = gcc
# endif

# Standard Flags
CXX_FLAGS := -std=c++11 -Wall -g -no-pie
CXX_FLAGS += -DNUM_CORES=$(shell nproc)
CXX_FLAGS += -include $(TASKSTATS_INCLUDE_PATH)

# Linker Flags
LDFLAGS = -lm

#===============================================================================
# OpenMPT Support
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
PAR_FLAG = -fopenmp
PAR_FLAG += -I$(OMP_INCLUDE_DIR) -L$(OPENMP_LIB) -lomp
#===============================================================================

# Regular gcc Compiler
ifneq (,$(findstring g++,$(CXX)))
  CXX_FLAGS += -flto
  ifeq ($(OPENMP),yes)
# 	CXX_FLAGS += -fopenmp -DOPENMP
	CXX_FLAGS += $(PAR_FLAG)
  endif
endif

# LLVM Compiler
ifneq (,$(findstring clang,$(CC)))
  CXX_FLAGS += -flto
  ifeq ($(OPENMP),yes)
	CXX_FLAGS += -fopenmp -DOPENMP
  endif
endif

# Intel Compiler
ifneq (,$(findstring intel,$(CC)))
  CXX_FLAGS += -ipo
  ifeq ($(OPENMP),yes)
	CXX_FLAGS += -fopenmp -DOPENMP
  endif
endif

# Debug Flags
ifeq ($(DEBUG),yes)
  CXX_FLAGS += -g
  LDFLAGS  += -g
endif

# Profiling Flags
ifeq ($(PROFILE),yes)
  CXX_FLAGS += -pg
  LDFLAGS  += -pg
endif

# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  CXX_FLAGS += -O3
endif

# MPI
ifeq ($(MPI),yes)
  CC = mpicc
  CXX_FLAGS += -DMPI
endif

# AML
ifeq ($(AML),yes)
  LDFLAGS += $(shell pkg-config --libs aml)
  CXX_FLAGS += -DAML $(shell pkg-config --cflags aml)
endif

#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj) XSbench_header.h Makefile
	$(CXX) $(CXX_FLAGS) $(obj) -o $@ $(LDFLAGS)

%.o: %.c XSbench_header.h Makefile
	$(CXX) $(CXX_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj)

edit:
	vim -p $(source) XSbench_header.h

run:
	./$(program)
