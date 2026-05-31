import glob
import os
import numpy as np
import matplotlib.pyplot as plt
import argparse

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
RESULTS_QSIZE_DIR = os.path.join(SCRIPT_DIR, '..', 'results_q_size')
FIGURES_DIR = os.path.join(SCRIPT_DIR, '..', 'figures')


NUM_CORES = 16

# graphs = ['road', 'web', 'twitter', 'kron', 'urand']
graphs = ['web', 'twitter', 'kron', 'urand']
q_sizes = [2, 8, 32, 128, 512]

speedup = {} # bars[alg][graph] = (user_bar, system_bar, idle_other_bar, idle_pf_bar, total_bar)

# Function to get filenames for a given algorithm and graph
def get_filenames(graph, size):
  vanilla_pattern = f"bc/faults/bc-{graph}-30-1-*"
  vanilla_file = glob.glob(vanilla_pattern)[0]
  vanilla_basename = os.path.basename(vanilla_file).split('.')[0]

  batching_pattern = f"bc_batching/faults/bc_batching-{graph}-30-1-*-y{size}-*"
  batching_file = glob.glob(batching_pattern)[0]
  batching_basename = os.path.basename(batching_file).split('.')[0]

  return vanilla_basename, batching_basename

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

def get_taskstat(basename):
  alg = basename.split('-')[0]
  taskstat_file = f"{alg}/taskstats/{basename}.taskstats.stats"
  blkio_delay, irq_delay = 0.0, 0.0
  with open(taskstat_file, 'r') as f:
    lines = f.readlines()
    for line in lines:
      if 'BlkIO_Delay' in line:
        blkio_delay = float(line.split()[1])
      if 'IRQ_Delay' in line:
        irq_delay = float(line.split()[1])
  blkio_delay /= 1e9  # Convert from nanoseconds to seconds
  irq_delay /= 1e9    # Convert from nanoseconds to seconds
  return blkio_delay, irq_delay

def get_sysproc_stats(basename):
  alg = basename.split('-')[0]
  sysproc_file = f"{alg}/sysproc-stat/{basename}.sysproc-stat.stats"
  syswide_irq = 0.0
  jiffies_per_sec = 100  # Typical value; adjust if necessary
  with open(sysproc_file, 'r') as f:
    lines = f.readlines()
    for line in lines:
      if 'cpu_irq' in line:
        syswide_irq = float(line.split()[1])
        break
  syswide_irq /= jiffies_per_sec  # Convert from jiffies to seconds
  return syswide_irq

def extract_speedup(graph, size):
  vanilla_basename, batching_basename = get_filenames(graph, size)
  
  baseline = get_time_stats(vanilla_basename)[3]
  batching = get_time_stats(batching_basename)[3]

  batching_speedup = baseline / batching

  return batching_speedup


def plot(speedups, output_file, dpi=200, show_plot=False):
  # Prepare data for plotting
  fig, ax = plt.subplots(figsize=(5.5, 2))
  
  cmap = plt.get_cmap("tab10")
  colors = [cmap(i) for i in range(len(graphs))]
  # markers = ['o', 's', '^', 'D', 'v']
  markers = ['o', 'o', 'o', 'o', 'o']
  
  # Plot a line for each graph
  for gi, graph in enumerate(graphs):
    x_values = q_sizes
    y_values = [speedups[graph][size] for size in q_sizes]
    
    ax.plot(x_values, y_values, marker=markers[gi], markersize=5, 
            linewidth=2, label=graph, color=colors[gi])
  
  # Add baseline reference line
  # ax.axhline(y=1, color='red', linestyle='--', linewidth=1.5, alpha=0.7, label='baseline')
  
  # Add vertical dotted line at x=512
  ax.axvline(x=512, color='black', linestyle=':', linewidth=2, alpha=0.8, label='selected')
  
  # Set x-axis to log scale
  ax.set_xscale('log', base=2)
  ax.set_xticks(q_sizes)
  ax.set_xticklabels([str(size) for size in q_sizes])
  
  # Labels and legend
  ax.set_xlabel('Queue Size', fontsize=10)
  ax.set_ylabel('Speedup (bc)', fontsize=10)
  ax.legend(loc='center left', bbox_to_anchor=(1, 0.5), fontsize=9)
  ax.grid(True, linestyle=':', alpha=0.5)
  # ax.set_ylim(1.2,1.55)
  
  plt.tight_layout()
  plt.subplots_adjust(top=0.971, bottom=0.229, right=0.804, left=0.117, wspace=0.1)
  
  # Save figure
  output_dir = os.path.dirname(output_file)
  if output_dir:
    os.makedirs(output_dir, exist_ok=True)
  plt.savefig(output_file, dpi=dpi)
  print('Saved plot to:', output_file)
  if show_plot:
    plt.show()


# main
if __name__ == "__main__":
  parser = argparse.ArgumentParser(description='Generate execution time breakdown plots')
  parser.add_argument('-s', '--show', action='store_true', help='Show the plot window')
  parser.add_argument('--results-dir', default=RESULTS_QSIZE_DIR, help='Directory containing q-size results')
  parser.add_argument('--output-file', default=os.path.join(FIGURES_DIR, 'Fig.8.pdf'), help='Output plot file path')
  parser.add_argument('--dpi', type=int, default=200, help='Output figure DPI')
  args = parser.parse_args()
  if not args.show and os.environ.get('DISPLAY', '') == '':
    plt.switch_backend('Agg')
  os.chdir(args.results_dir)
  for graph in graphs:
    speedup[graph] = {}
    for size in q_sizes:
      speedup[graph][size] = extract_speedup(graph,size)
  plot(speedup, output_file=args.output_file, dpi=args.dpi, show_plot=args.show)
