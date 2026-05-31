.PHONY: all collect plots clean clean_plots

all: collect plots

collect:
	./populate_results.sh

plots:
	@echo "plotting ..."
	@for script in plotters/*.py; do \
		python3 "$$script"; \
	done

clean:
	rm -rf results_performance results_q_size figures

clean_plots:
	rm -rf figures
