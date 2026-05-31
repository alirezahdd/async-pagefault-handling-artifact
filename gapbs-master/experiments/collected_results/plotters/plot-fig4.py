import glob
import os
import numpy as np
import matplotlib.pyplot as plt
import argparse

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
RESULTS_DIR = os.path.join(SCRIPT_DIR, '..', 'results_performance')
FIGURES_DIR = os.path.join(SCRIPT_DIR, '..', 'figures')


NUM_CORES = 16
algs=['bc','sssp','tc','bfs','pr','cc']

graphs = ['road', 'web', 'twitter', 'kron', 'urand']
bars = {} # bars[alg][graph] = (user_bar, system_bar, idle_other_bar, idle_pf_bar, total_bar)

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

def extract_bars(alg, graph):
  vanilla_basename, tos_basename, batching_basename = get_filenames(alg, graph)
  
  baseline = get_time_stats(vanilla_basename)[3]
  tos = get_time_stats(tos_basename)[3]
  batching = get_time_stats(batching_basename)[3]

  tos_speedup = baseline / tos
  batching_speedup = baseline / batching

  return tos_speedup, batching_speedup


def plot_bars(bars, output_file, dpi=200, show_plot=False):
  # Prepare layout
  n_algs = len(algs)
  n_graphs = len(graphs)
  
  # Calculate number of bar pairs per algorithm
  bars_per_alg = n_graphs
  total_bars = n_algs * bars_per_alg
  
  cmap = plt.get_cmap("tab20")
  colors = cmap([4,14,6,0])
  
  # Create x positions for each algorithm group
  x_base = np.arange(n_algs) * (bars_per_alg + 0.5)  # 0.5 for spacing between alg groups
  
  fig, ax = plt.subplots(figsize=(12, 2))
  
  bar_width = 0.4 # Increased from 0.35
  y_min, y_max = 0.5, 1.7
  
  # Collect all speedup values for geometric mean calculation
  all_tos_speedups = []
  all_batching_speedups = []
  
  # Plot bars grouped by algorithm
  x_positions_tos = []
  x_positions_batching = []
  tos_heights = []
  batching_heights = []
  
  for ai, alg in enumerate(algs):
    for gi, graph in enumerate(graphs):
      pos = x_base[ai] + gi
      x_positions_tos.append(pos - bar_width/2)
      x_positions_batching.append(pos + bar_width/2)
      
      tos_val = bars[alg][graph]['tos']
      batching_val = bars[alg][graph]['batching']
      
      tos_heights.append(tos_val)
      batching_heights.append(batching_val)
      
      # Exclude sssp-road from ToS geomean
      if not (alg == 'sssp' and graph == 'road'):
        all_tos_speedups.append(tos_val)
      all_batching_speedups.append(batching_val)
  
  # Plot all bars
  ax.bar(x_positions_tos, tos_heights, bar_width, label='TOS', color=colors[1], edgecolor='black', linewidth=0.5)
  ax.bar(x_positions_batching, batching_heights, bar_width, label='Batching', color=colors[0], edgecolor='black', linewidth=0.5)
  
  # Calculate geometric means
  tos_geomean = np.prod(all_tos_speedups) ** (1.0 / len(all_tos_speedups))
  batching_geomean = np.prod(all_batching_speedups) ** (1.0 / len(all_batching_speedups))

  print(f'ToS Geomean: {tos_geomean:.3f}, Batching Geomean: {batching_geomean:.3f}')
  
  # Draw horizontal lines for geometric means
  ax.axhline(y=tos_geomean, color=colors[1], linestyle='--', linewidth=1.5, label=f'TOS Average', zorder=2)
  ax.axhline(y=batching_geomean, color=colors[0], linestyle='--', linewidth=1.5, label=f'Batching Average', zorder=2)
  ax.axhline(y=1, color='red', linestyle='-', linewidth=1.5, label=f'Baseline', zorder=2)

  # Annotate geomean lines
  # ax.text(x_base[-1] + bars_per_alg , tos_geomean + 0.05, f'{tos_geomean:.2f}', 
  #         va='center', ha='left', fontsize=9, color='steelblue', fontweight='bold')
  # ax.text(x_base[-1] + bars_per_alg , batching_geomean + 0.05, f'{batching_geomean:.2f}', 
  #         va='center', ha='left', fontsize=9, color='coral', fontweight='bold')
  
  # Set y-limits
  ax.set_ylim(y_min, y_max)
  
  # Annotate bars that exceed y_max (rotated 270 degrees, white color)
  for i, (x_tos, h_tos) in enumerate(zip(x_positions_tos, tos_heights)):
    x_tos -= bar_width / 6
    if h_tos > y_max:
      ax.text(x_tos, y_max - 0.03, f'{h_tos:.2f}', ha='center', va='top', 
              fontsize=8, color='white', fontweight='bold', rotation=270)
    elif h_tos < y_min:
      ax.text(x_tos, y_min + 0.03, f'{h_tos:.2f}', ha='center', va='bottom', 
              fontsize=8, color='black', fontweight='bold', rotation=270)
  
  for i, (x_bat, h_bat) in enumerate(zip(x_positions_batching, batching_heights)):
    if h_bat > y_max:
      ax.text(x_bat, y_max - 0.08, f'{h_bat:.2f}', ha='center', va='top', 
              fontsize=8, color='white', fontweight='bold', rotation=270)
    elif h_bat < y_min:
      ax.text(x_bat, y_min + 0.08, f'{h_bat:.2f}', ha='center', va='bottom', 
              fontsize=8, color='white', fontweight='bold', rotation=270)
  
  # Add algorithm labels at the top
  alg_centers = x_base + (bars_per_alg - 1) / 2.0
  for alg_center, alg in zip(alg_centers, algs):
    ax.text(alg_center, 1.02, alg, ha='center', va='bottom', fontsize=10, 
            fontweight='bold', transform=ax.get_xaxis_transform())
  
  # Add graph labels (first letter) at the bottom for x-ticks
  all_x_positions = []
  all_graph_labels = []
  for ai, alg in enumerate(algs):
    for gi, graph in enumerate(graphs):
      pos = x_base[ai] + gi
      all_x_positions.append(pos)
      all_graph_labels.append(graphs[gi][0].upper())
  
  ax.set_xticks(all_x_positions)
  ax.set_xticklabels(all_graph_labels, fontsize=8)
  
  # ax.set_xlabel('Graph')
  ax.set_ylabel('Speedup')
  
  # Add legend at top as a row
  ax.legend(loc='upper center', bbox_to_anchor=(0.5, 1.4), ncol=5)
  ax.grid(axis='y', linestyle=':', alpha=0.5)
  
  # Add vertical lines between algorithm groups
  for i in range(1, n_algs):
    separator_x = (x_base[i] + x_base[i-1] + bars_per_alg - 1) / 2.0 + 0.25
    ax.axvline(x=separator_x - 0.25, color='gray', linestyle='-', linewidth=1.5, alpha=0.6)
  
  # Set x-axis limits to eliminate white space
  x_min = x_base[0] - bar_width/2 - 0.3
  x_max = x_base[-1] + bars_per_alg - 1 + bar_width/2 + 0.3
  ax.set_xlim(x_min, x_max)
  
  plt.tight_layout()
  plt.subplots_adjust(top=0.767, bottom=0.094, right=0.994, left=0.048)  # Add space for top and bottom labels
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
  parser.add_argument('--results-dir', default=RESULTS_DIR, help='Directory containing performance results')
  parser.add_argument('--output-file', default=os.path.join(FIGURES_DIR, 'Fig.4.pdf'), help='Output plot file path')
  parser.add_argument('--dpi', type=int, default=200, help='Output figure DPI')
  args = parser.parse_args()
  if not args.show and os.environ.get('DISPLAY', '') == '':
    plt.switch_backend('Agg')
  os.chdir(args.results_dir)
  for alg in algs:
    bars[alg] = {}
    for graph in graphs:
      bars[alg][graph] = {}
      bars[alg][graph]['tos'], bars[alg][graph]['batching'] = extract_bars(alg, graph)
  plot_bars(bars, output_file=args.output_file, dpi=args.dpi, show_plot=args.show)
