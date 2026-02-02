#!/bin/bash

# Script to gather results from all experiments into collected_results directory

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
EXPERIMENTS_DIR="$(dirname "$SCRIPT_DIR")"

echo "Gathering results from all experiments..."
echo ""

# Move results from performance_evaluation
if [[ -d "$EXPERIMENTS_DIR/performance_evaluation/results" ]]; then
    echo "Moving results from performance_evaluation..."
    mkdir -p "$SCRIPT_DIR/results_performance"
    mv "$EXPERIMENTS_DIR/performance_evaluation/results"/* "$SCRIPT_DIR/results_performance/" 2>/dev/null || true
    echo "✅ Results moved to results_performance/"
else
    echo "⚠️  No results directory found in performance_evaluation"
fi

echo ""

# Move results from app-specific_opt_performance_evaluation
if [[ -d "$EXPERIMENTS_DIR/app-specific_opt_performance_evaluation/results" ]]; then
    echo "Moving results from app-specific_opt_performance_evaluation..."
    mv "$EXPERIMENTS_DIR/app-specific_opt_performance_evaluation/results"/* "$SCRIPT_DIR/results_performance/" 2>/dev/null || true
    echo "✅ Results moved to results_app_specific/"
else
    echo "⚠️  No results directory found in app-specific_opt_performance_evaluation"
fi

echo ""

# Move results from q_size_study
if [[ -d "$EXPERIMENTS_DIR/q_size_study/results" ]]; then
    echo "Moving results from q_size_study..."
    mkdir -p "$SCRIPT_DIR/results_q_size"
    mv "$EXPERIMENTS_DIR/q_size_study/results"/* "$SCRIPT_DIR/results_q_size/" 2>/dev/null || true
    echo "✅ Results moved to results_q_size/"
else
    echo "⚠️  No results directory found in q_size_study"
fi

echo ""
echo "=========================================="
echo "All results gathered in: $SCRIPT_DIR"
echo "=========================================="
echo ""
ls -la "$SCRIPT_DIR" | grep results_

