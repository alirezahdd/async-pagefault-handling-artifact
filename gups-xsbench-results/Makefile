.PHONY: all clean

# Final output target
all: Fig.9.pdf

# Source directories
GUPS_SRC = ../gups-modified/experiments/performance_evaluation/results/gups_single_threaded \
           ../gups-modified/experiments/performance_evaluation/results/gups_single_threaded_batching
XSBENCH_SRC = ../XSBench-master/openmp-threading/experiments/performance-evaluation/results/XSBench \
              ../XSBench-master/openmp-threading-batching/experiments/performance-evaluation/results/XSBench

# Generate the final plot
Fig.9.pdf: GUPS/.copied XSBench/.copied plot-fig9.py
	python3 plot-fig9.py

# Copy GUPS data
GUPS/.copied: $(GUPS_SRC) gather_stats_gups.py
	@echo "Setting up GUPS directory..."
	@rm -rf GUPS
	@mkdir -p GUPS
	@cp -r ../gups-modified/experiments/performance_evaluation/results/gups_single_threaded GUPS/
	@cp -r ../gups-modified/experiments/performance_evaluation/results/gups_single_threaded_batching GUPS/
	@cp gather_stats_gups.py GUPS/
	@touch GUPS/.copied

# Copy XSBench data
XSBench/.copied: $(XSBENCH_SRC) gather_stats_xs.py
	@echo "Setting up XSBench directory..."
	@rm -rf XSBench
	@mkdir -p XSBench/XSBench_batching
	@mkdir -p XSBench/XSBench
	@cp -r ../XSBench-master/openmp-threading/experiments/performance-evaluation/results/XSBench XSBench/
	@cp -r ../XSBench-master/openmp-threading-batching/experiments/performance-evaluation/results/XSBench/* XSBench/XSBench_batching/
	@cp gather_stats_xs.py XSBench/
	@touch XSBench/.copied

# Clean up generated files and directories
clean:
	rm -rf GUPS XSBench
	rm -f *.pdf
