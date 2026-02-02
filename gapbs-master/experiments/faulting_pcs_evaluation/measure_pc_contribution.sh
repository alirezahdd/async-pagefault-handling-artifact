#!/bin/bash

CONTRIB_DIR=pc_contributions
mkdir -p $CONTRIB_DIR

algs=("bc" "bfs" "cc" "pr" "sssp" "tc")

for alg in "${algs[@]}"; do
  for trace in results/$alg/trace/*; do
    [[ -f "$trace" ]] || continue
    echo "Measuring contribution of $trace"
    python3 extract_pcs.py "$trace" > "$CONTRIB_DIR/${alg}_$(basename "$trace" .txt)_contribution.txt"
  done
done

