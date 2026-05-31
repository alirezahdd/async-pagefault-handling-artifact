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
  return vanilla_basename

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
  vanilla_tuple= ()
  vanilla_basename = get_filenames(alg, graph)
  
  basename = vanilla_basename
  user, system, idle, elapsed = get_time_stats(basename)
  # irq_delay is the time that task was interrupted (so it was runable) to handle irqs 
  # blkio_delay is the time that task was waiting for blkio (idle-pf)
  blkio_delay, irq_delay = get_taskstat(basename)
  syswide_irq = get_sysproc_stats(basename)
  # pf_irq is the portion of syswide_irq that was due to handling page fault irqs
  pf_irq = syswide_irq - irq_delay if syswide_irq > irq_delay else 0.0

  # Adjust times to avoid double counting
  system += pf_irq
  system += irq_delay

  idle -= pf_irq
  idle -= irq_delay

  # decoupling blkio_delay(idle_pf) from idle time
  idle_other = idle - blkio_delay
  if idle_other < 0:
    idle_other = 0.0

  user_bar = user / (elapsed * NUM_CORES)
  system_bar = system / (elapsed * NUM_CORES)
  idle_other_bar = idle_other / (elapsed * NUM_CORES)
  idle_pf_bar = blkio_delay / (elapsed * NUM_CORES)
  total_bar = user_bar + system_bar + idle_other_bar + idle_pf_bar
  vanilla_tuple = (user_bar, system_bar, idle_other_bar, idle_pf_bar, total_bar)
  
  return vanilla_tuple


def plot_bars(bars, output_file, dpi=200, show_plot=False):
  # Define colors for each bar segment
  cmap = plt.get_cmap("tab20")
  colors = cmap([14,15,7,6])
  labels = ['User', 'System', 'Idle Other', 'Idle Page Fault']

  # Prepare layout
  n_algs = len(algs)
  n_graphs = len(graphs)
  x = np.arange(n_algs)
  group_width = 0.8
  bar_width = group_width / float(n_graphs)

  fig, ax = plt.subplots(figsize=(5.5, 2.5))

  # Store bar heights for annotation
  bar_heights = {}  # bar_heights[alg_idx][graph_idx] = (offset, total_height)
  
  for gi, graph in enumerate(graphs):
    offsets = x - (group_width/2) + gi * bar_width + bar_width/2
    if gi == 2:
      offsets += bar_width/4

    # gather segment values for this graph across all algorithms
    user_vals = [bars[alg][graph][0] for alg in algs]
    system_vals = [bars[alg][graph][1] for alg in algs]
    idle_other_vals = [bars[alg][graph][2] for alg in algs]
    idle_pf_vals = [bars[alg][graph][3] for alg in algs]

    # plot stacked bars
    bottom = np.zeros(n_algs)
    ax.bar(offsets, user_vals, bar_width, bottom=bottom, color=colors[0], edgecolor='black', linewidth=0.5)
    bottom += np.array(user_vals)

    ax.bar(offsets, system_vals, bar_width, bottom=bottom, color=colors[1], edgecolor='black', linewidth=0.5)
    bottom += np.array(system_vals)

    ax.bar(offsets, idle_other_vals, bar_width, bottom=bottom, color=colors[2], edgecolor='black', linewidth=0.5)
    bottom += np.array(idle_other_vals)

    ax.bar(offsets, idle_pf_vals, bar_width, bottom=bottom, color=colors[3], edgecolor='black', linewidth=0.5)
    bottom += np.array(idle_pf_vals)
    
    # Store heights and offsets for annotations
    for alg_idx in range(n_algs):
      if alg_idx not in bar_heights:
        bar_heights[alg_idx] = {}
      bar_heights[alg_idx][gi] = (offsets[alg_idx], bottom[alg_idx])

  # Add annotations for HL and LL (one per group)
  for alg_idx in range(n_algs):
    # Annotate HL group (first two bars)
    hl_offsets = [bar_heights[alg_idx][gi][0] for gi in [0, 1]]
    hl_heights = [bar_heights[alg_idx][gi][1] for gi in [0, 1]]
    hl_center_x = np.mean(hl_offsets)
    hl_max_height = max(hl_heights)
    ax.text(hl_center_x, hl_max_height + 0.02, 'HL', ha='center', va='bottom', 
            fontsize=7, fontweight='bold')
    
    # Annotate LL group (next three bars)
    ll_offsets = [bar_heights[alg_idx][gi][0] for gi in [2, 3, 4]]
    ll_heights = [bar_heights[alg_idx][gi][1] for gi in [2, 3, 4]]
    ll_center_x = np.mean(ll_offsets)
    ll_max_height = max(ll_heights)
    ax.text(ll_center_x, ll_max_height + 0.02, 'LL', ha='center', va='bottom', 
            fontsize=7, fontweight='bold')

  # Create legend handles
  from matplotlib.patches import Patch, Rectangle
  legend_handles = [Patch(facecolor=colors[i], edgecolor='black', label=labels[i]) for i in range(4)]

  ax.set_xticks(x)
  ax.set_xticklabels(algs)
  ax.set_ylabel('Execution Time Breakdown')
  ax.set_ylim(0, 1.0)
  
  # Add boxes around groups
  group_ranges = [(0, 2), (2, 4), (4, 6)]  # (start_alg_index, end_alg_index)
  for start_idx, end_idx in group_ranges:
    rect = Rectangle(
      (start_idx - 0.5, -0.28), 
      end_idx - start_idx, 
      1.28, 
      linewidth=1.2, 
      edgecolor='gray', 
      facecolor='none',
      clip_on=False,
      transform=ax.transData
    )
    ax.add_patch(rect)
  
  # Add group labels
  group_labels = ['Traversal-Centric', 'Mixed', 'Vertex-Centric']
  group_positions = [0.5, 2.5, 4.5]  # centers of each group
  for pos, label in zip(group_positions, group_labels):
    ax.text(pos, -0.18, label, ha='center', va='top', fontsize=9, fontweight='bold', transform=ax.transData)
  
  # Add x-axis label below group labels
  ax.text(2.5, -0.32, 'Algorithm', ha='center', va='top', fontsize=10, transform=ax.transData)
  
  ax.legend(handles=legend_handles, loc='center', bbox_to_anchor=(0.5, 1.14), ncol=len(labels), frameon=False)
  ax.grid(axis='y', linestyle='--', alpha=0.5)

  plt.tight_layout()
  plt.subplots_adjust(top=0.878, right=0.983, left=0.106, bottom=0.265)
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
  parser.add_argument('--output-file', default=os.path.join(FIGURES_DIR, 'Fig.2.pdf'), help='Output plot file path')
  parser.add_argument('--dpi', type=int, default=200, help='Output figure DPI')
  args = parser.parse_args()
  if not args.show and os.environ.get('DISPLAY', '') == '':
    plt.switch_backend('Agg')
  os.chdir(args.results_dir)
  for alg in algs:
    bars[alg] = {}
    for graph in graphs:
      bars[alg][graph] = {}
      vanilla_tuple = extract_bars(alg, graph)
      bars[alg][graph]= vanilla_tuple
  plot_bars(bars, output_file=args.output_file, dpi=args.dpi, show_plot=args.show)
