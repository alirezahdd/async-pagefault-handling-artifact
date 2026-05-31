import argparse
import glob
import os
from typing import List

import matplotlib.pyplot as plt
import numpy as np

plt.style.use('ggplot')


GRAPHS = ['road', 'web', 'twitter', 'kron', 'urand']
ALGORITHMS = ['bc', 'sssp', 'tc', 'bfs', 'pr', 'cc']
MILLION = 1000000

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
RESULTS_DIR = os.path.join(SCRIPT_DIR, '..', 'results_performance')
OUTPUT_DIR = os.path.join(SCRIPT_DIR, '..', 'figures')


def find_stats_file(results_dir: str, algorithm: str, stats_dir: str, graph: str) -> str:
  """Return the single matching vanilla stats file for an algorithm/graph pair."""
  pattern = os.path.join(
      results_dir,
      algorithm,
      stats_dir,
      f'{algorithm}-{graph}-30-1-*',
  )
  matches = sorted(glob.glob(pattern))
  if len(matches) != 1:
    raise FileNotFoundError(
        f'Expected exactly one match for {algorithm}/{stats_dir}/{graph}, found {len(matches)}'
    )
  return matches[0]


def read_major_faults(stats_file: str) -> int:
  """Read major fault count from a .faults.stats file."""
  with open(stats_file, 'r', encoding='utf-8') as handle:
    for line in handle:
      if line.startswith('Major-Faults'):
        return int(line.split()[1])
  raise ValueError(f'Major-Faults not found in {stats_file}')


def read_user_instructions(stats_file: str) -> int:
  """Read user instruction count from a .perf.stats file."""
  with open(stats_file, 'r', encoding='utf-8') as handle:
    for line in handle:
      if line.startswith('User-Instructions:'):
        return int(line.split()[1])
  raise ValueError(f'User-Instructions not found in {stats_file}')


def collect_graph_bars(results_dir: str) -> List[List[float]]:
  """Collect FPMI values arranged as [graph][algorithm]."""
  graph_bars = []
  for graph in GRAPHS:
    graph_fpmi = []
    for algorithm in ALGORITHMS:
      faults_file = find_stats_file(results_dir, algorithm, 'faults', graph)
      perf_file = find_stats_file(results_dir, algorithm, 'perf', graph)
      major_faults = read_major_faults(faults_file)
      user_instructions = read_user_instructions(perf_file)
      fpmi = major_faults / (user_instructions / MILLION)
      graph_fpmi.append(fpmi)
    graph_bars.append(graph_fpmi)
  return graph_bars


def plot_graph_bars(graph_bars: List[List[float]], output_file: str, dpi: int = 200, show_plot: bool = False) -> None:
  """Render and save the grouped FPMI bar chart."""
  fig, ax = plt.subplots(figsize=(5.5, 2.5), dpi=80, facecolor='w', edgecolor='k')

  cmap = plt.get_cmap('tab20c')
  colors = cmap([4, 5, 12, 13, 14])

  x = np.arange(len(ALGORITHMS))
  width = 0.15
  offset = -width * 2

  for graph_index, graph in enumerate(GRAPHS):
    ax.bar(
        x + offset,
        graph_bars[graph_index],
        width,
        color=colors[graph_index],
        label=graph,
        edgecolor='black',
        zorder=3,
    )
    offset += width

  ax.set_yscale('log')
  ax.set_ylabel('FPMI (log scale)', fontsize=11)
  ax.set_xlabel('Algorithms', fontsize=11)
  ax.set_xticks(x, ALGORITHMS)
  ax.grid()
  ax.grid(zorder=4)
  ax.legend(loc='lower center', bbox_to_anchor=(0.5, 0.85), framealpha=0.6, ncol=5)

  plt.subplots_adjust(
      left=0.12,
      right=0.967,
      bottom=0.175,
      top=0.985,
      wspace=0.023,
      hspace=0.15,
  )

  os.makedirs(os.path.dirname(output_file), exist_ok=True)
  plt.savefig(output_file, dpi=dpi)
  print('Saved plot to:', output_file)

  if show_plot:
    plt.show()


def main() -> None:
  parser = argparse.ArgumentParser(description='Plot vanilla FPMI directly from raw stats')
  parser.add_argument('-s', '--show', action='store_true', help='Show the plot window')
  parser.add_argument('--results-dir', default=RESULTS_DIR, help='Directory containing performance results')
  parser.add_argument('--output-file', default=os.path.join(OUTPUT_DIR, 'Fig.1.pdf'), help='Output plot file path')
  parser.add_argument('--dpi', type=int, default=200, help='Output figure DPI')
  args = parser.parse_args()

  # Avoid backend issues on headless systems unless interactive display is requested.
  if not args.show and os.environ.get('DISPLAY', '') == '':
    plt.switch_backend('Agg')

  graph_bars = collect_graph_bars(args.results_dir)
  plot_graph_bars(graph_bars, output_file=args.output_file, dpi=args.dpi, show_plot=args.show)


if __name__ == '__main__':
  main()