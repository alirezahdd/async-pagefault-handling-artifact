import glob
import os
import argparse
import math

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
RESULTS_DIR = os.path.join(SCRIPT_DIR, '..', 'results_performance')
FIGURES_DIR = os.path.join(SCRIPT_DIR, '..', 'figures')


algs=['bc','sssp','tc','bfs','pr','cc']

graphs = ['road', 'web', 'twitter', 'kron', 'urand']
graph_labels = ['R', 'W', 'T', 'K', 'U']

# Function to get filenames for a given algorithm and graph
def get_filenames(alg, graph):
  vanilla_pattern = f"{alg}/faults/{alg}-{graph}-30-1-*"
  vanilla_file = glob.glob(vanilla_pattern)[0]
  vanilla_basename = os.path.basename(vanilla_file).split('.')[0]

  tos_pattern = f"{alg}/faults/{alg}-{graph}-30-16-*"
  tos_file = glob.glob(tos_pattern)[0]
  tos_basename = os.path.basename(tos_file).split('.')[0]

  batching_alg = alg + '_batching'
  batching_pattern = f"{batching_alg}/faults/{batching_alg}-{graph}-30-1-*"
  batching_file = glob.glob(batching_pattern)[0]
  batching_basename = os.path.basename(batching_file).split('.')[0]

  return vanilla_basename, tos_basename, batching_basename

def get_time_stats(basename):
  alg = basename.split('-')[0]
  stats_file = f"{alg}/time/{basename}.time.stats"
  user, system, idle, elapsed = 0.0, 0.0, 0.0, 0.0
  with open(stats_file, 'r') as f:
    lines = f.readlines()
    for line in lines:
      if 'User' in line:
        user = float(line.split()[1])
      if 'System' in line:
        system = float(line.split()[1])
      if 'Idle' in line:
        idle = float(line.split()[1])
      if 'Elapsed' in line:
        elapsed = float(line.split()[1])
  return user, system, idle, elapsed

def extract_speedups(alg, graph):
  vanilla_basename, tos_basename, batching_basename = get_filenames(alg, graph)
  
  baseline = get_time_stats(vanilla_basename)[3]
  tos = get_time_stats(tos_basename)[3]
  batching = get_time_stats(batching_basename)[3]

  tos_speedup = baseline / tos
  batching_speedup = baseline / batching

  return tos_speedup, batching_speedup


def build_speedup_report():
  lines = []
  all_tos_speedups = []
  all_batching_speedups = []
  for alg in algs:
    tos_row = []
    batching_row = []
    for graph in graphs:
      tos_speedup, batching_speedup = extract_speedups(alg, graph)
      tos_row.append(tos_speedup)
      batching_row.append(batching_speedup)

      # Keep the original convention for TOS geomean.
      if not (alg == 'sssp' and graph == 'road'):
        all_tos_speedups.append(tos_speedup)
      all_batching_speedups.append(batching_speedup)

    lines.append(alg.upper())
    lines.append('\t' + '\t'.join(graph_labels))
    lines.append('TOS\t' + '\t'.join(f'{v:.3f}' for v in tos_row))
    lines.append('Ours\t' + '\t'.join(f'{v:.3f}' for v in batching_row))
    lines.append('')

  tos_geomean = math.prod(all_tos_speedups) ** (1.0 / len(all_tos_speedups))
  ours_geomean = math.prod(all_batching_speedups) ** (1.0 / len(all_batching_speedups))
  lines.append(f'TOS Geomean: {tos_geomean:.3f}')
  lines.append(f'Ours Geomean: {ours_geomean:.3f}')
  return '\n'.join(lines)


# main
if __name__ == "__main__":
  parser = argparse.ArgumentParser(description='Export speedup stats table to text')
  parser.add_argument('-s', '--show', action='store_true', help='Print output to stdout')
  parser.add_argument('--results-dir', default=RESULTS_DIR, help='Directory containing performance results')
  parser.add_argument('--output-file', default=os.path.join(FIGURES_DIR, 'speedup_stats.txt'), help='Output text file path')
  args = parser.parse_args()

  os.chdir(args.results_dir)
  report = build_speedup_report()

  output_dir = os.path.dirname(args.output_file)
  if output_dir:
    os.makedirs(output_dir, exist_ok=True)
  with open(args.output_file, 'w', encoding='utf-8') as f:
    f.write(report)

  if args.show:
    print(report)
    print(f'Saved to {args.output_file}')
