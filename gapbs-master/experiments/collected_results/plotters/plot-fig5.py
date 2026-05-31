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
  vanilla_tuple, tos_tuple, batching_tuple = (), (), ()
  vanilla_basename, tos_basename, batching_basename = get_filenames(alg, graph)
  baseline_elapsed = get_time_stats(vanilla_basename)[3] * NUM_CORES

  for run in [vanilla_basename, tos_basename, batching_basename]:
    basename = run
    user, system, idle, elapsed = get_time_stats(basename)
    if run != tos_basename:
      blkio_delay, irq_delay = get_taskstat(basename)
      syswide_irq = get_sysproc_stats(basename)
      # pf_irq is the portion of syswide_irq that was due to handling page fault irqs
      pf_irq = syswide_irq - irq_delay if syswide_irq > irq_delay else 0.0
      # Adjust times to avoid double counting
      # pf_irq overlaps with idle time and should be counted as system time
      system += pf_irq
      idle -= pf_irq

      system += irq_delay
      idle -= irq_delay

      # decoupling blkio_delay(idle_pf) from idle time
      idle_other = idle - blkio_delay 
      if idle_other < 0:
        idle_other = 0.0
    else:
      blkio_delay, irq_delay = 0.0, 0.0
      syswide_irq = get_sysproc_stats(basename)
      system += syswide_irq
      idle -= syswide_irq
      idle_other = idle
    # Normalize by baseline elapsed time
    user_bar = user / baseline_elapsed
    system_bar = system / baseline_elapsed
    idle_other_bar = idle_other / baseline_elapsed
    idle_pf_bar = blkio_delay / baseline_elapsed
    total_bar = user_bar + system_bar + idle_other_bar + idle_pf_bar
    if run == vanilla_basename:
      # bars[alg][graph]['vanilla'] = (user_bar, system_bar, idle_other_bar, idle_pf_bar, idle_irq_bar, total_bar)
      vanilla_tuple = (user_bar, system_bar, idle_other_bar, idle_pf_bar, total_bar)
    elif run == tos_basename:
      # bars[alg][graph]['tos'] = (user_bar, system_bar, idle_other_bar, idle_pf_bar, idle_irq_bar, total_bar)
      tos_tuple = (user_bar, system_bar, idle_other_bar, idle_pf_bar, total_bar)
    elif run == batching_basename:
      # bars[alg][graph]['batching'] = (user_bar, system_bar, idle_other_bar, idle_pf_bar, idle_irq_bar, total_bar) 
      batching_tuple = (user_bar, system_bar, idle_other_bar, idle_pf_bar, total_bar)
    else:
      raise ValueError("Unexpected run type")
  return vanilla_tuple, tos_tuple, batching_tuple


def plot_bars(bars, output_file, dpi=200, show_plot=False):
  # Define colors for each bar segment
  cmap = plt.get_cmap("tab20")
  colors = cmap([14,15,7,6])
  labels = ['User', 'System', 'Idle Other', 'Idle Page Fault']
  
  run_types = ['vanilla', 'tos', 'batching']
  n_graphs = len(graphs)
  
  fig, axs = plt.subplots(3, 2, figsize=(5.5, 6.5), sharey=True)
  axs = axs.flatten()
  
  x = np.arange(n_graphs)  # positions for each graph
  width = 0.25  # width of each bar
  y_max = 1.2
  
  for idx, alg in enumerate(algs):
    ax = axs[idx]
    
    for ri, run_type in enumerate(run_types):
      offsets = x + (ri - 1) * width  # center the three bars around each graph position
      
      # Gather segment values for this run_type across all graphs
      user_vals = []
      system_vals = []
      idle_other_vals = []
      idle_pf_vals = []
      
      for graph in graphs:
        tup = bars[alg][graph][run_type]
        user_vals.append(tup[0])
        system_vals.append(tup[1])
        idle_other_vals.append(tup[2])
        idle_pf_vals.append(tup[3])
      
      # Plot stacked bars
      bottom = np.zeros(n_graphs)
      ax.bar(offsets, user_vals, width, bottom=bottom, color=colors[0], 
             edgecolor='black', linewidth=0.5)
      bottom += np.array(user_vals)
      
      ax.bar(offsets, system_vals, width, bottom=bottom, color=colors[1], 
             edgecolor='black', linewidth=0.5)
      bottom += np.array(system_vals)
      
      ax.bar(offsets, idle_other_vals, width, bottom=bottom, color=colors[2], 
             edgecolor='black', linewidth=0.5)
      bottom += np.array(idle_other_vals)
      
      ax.bar(offsets, idle_pf_vals, width, bottom=bottom, color=colors[3], 
             edgecolor='black', linewidth=0.5)
      
      # Annotate bars that exceed y_max
      total_heights = np.array(user_vals) + np.array(system_vals) + np.array(idle_other_vals) + np.array(idle_pf_vals)
      for i, (offset, total_h) in enumerate(zip(offsets, total_heights)):
        if total_h > y_max:
          ax.text(offset, y_max - 0.01, f'{total_h:.2f}', ha='center', va='top', 
                  fontsize=7, color='black', fontweight='bold', rotation=90)
    
    ax.set_title(alg)
    ax.set_xticks(x)
    ax.set_xticklabels(graphs, fontsize=8)
    ax.set_ylim(0, y_max)
    ax.axhline(1.0, color='red', linestyle='--', linewidth=1, alpha=0.5)
    ax.grid(axis='y', linestyle=':', alpha=0.5)
    
    if idx % 2 == 0:
      ax.set_ylabel('Normalized Execution Time')
  
  # Add a single legend at the top for all segments
  from matplotlib.patches import Patch
  segment_handles = [Patch(facecolor=colors[i], edgecolor='black', label=labels[i]) for i in range(4)]
  fig.legend(handles=segment_handles, loc='upper center', bbox_to_anchor=(0.5, 1.01), 
             ncol=4, fontsize=10)
  
  plt.tight_layout()
  plt.subplots_adjust(top=0.923, bottom=0.037, right=0.99, left=0.118, hspace=0.274, wspace=0.037)
  
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
  parser.add_argument('--output-file', default=os.path.join(FIGURES_DIR, 'Fig.5.pdf'), help='Output plot file path')
  parser.add_argument('--dpi', type=int, default=200, help='Output figure DPI')
  args = parser.parse_args()
  if not args.show and os.environ.get('DISPLAY', '') == '':
    plt.switch_backend('Agg')
  os.chdir(args.results_dir)
  for alg in algs:
    bars[alg] = {}
    for graph in graphs:
      bars[alg][graph] = {}
      vanilla_tuple, tos_tuple, batching_tuple = extract_bars(alg, graph)
      bars[alg][graph]['vanilla']= vanilla_tuple
      bars[alg][graph]['tos']= tos_tuple
      bars[alg][graph]['batching']= batching_tuple
  plot_bars(bars, output_file=args.output_file, dpi=args.dpi, show_plot=args.show)
