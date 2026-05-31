import glob
import os
import numpy as np
import matplotlib.pyplot as plt


NUM_CORES = 16
apps = ['XSBench','XSBench_batching']
# algs=['bc','bfs','cc','pr','sssp','tc']
# graphs={'road','kron','twitter','urand','web'}
# graphs = ['road', 'web', 'twitter', 'kron', 'urand']
bars = {} # bars[app] = (user_bar, system_bar, idle_other_bar, idle_pf_bar, idle_irq_bar, total_bar)

# Function to get filenames for a given algorithm and graph
def get_filenames():
  vanilla_pattern = f"{apps[0]}/faults/XSBench-30-1-*"
  vanilla_file = glob.glob(vanilla_pattern)[0]
  vanilla_basename = os.path.basename(vanilla_file).split('.')[0]

  tos_pattern = f"{apps[0]}/faults/XSBench-30-16-*"
  tos_file = glob.glob(tos_pattern)[0]
  tos_basename = os.path.basename(tos_file).split('.')[0]

  batching_pattern = f"{apps[1]}/faults/XSBench-30-1-*"
  batching_file = glob.glob(batching_pattern)[0]
  batching_basename = os.path.basename(batching_file).split('.')[0]
  return vanilla_basename, tos_basename, batching_basename

def get_time_stats(basename, batching):
  # run_type = basename.split('-')[0]
  stats_file = f"XSBench/time/{basename}.time.stats"
  if batching:
    stats_file = f"XSBench_batching/time/{basename}.time.stats"
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

def get_taskstat(basename, batching):
  # run_type = basename.split('-')[0]
  taskstat_file = f"XSBench/taskstats/{basename}.taskstats.stats"
  if batching:
    taskstat_file = f"XSBench_batching/taskstats/{basename}.taskstats.stats"
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

def get_sysproc_stats(basename, batching):
  # run_type = basename.split('-')[0]
  sysproc_file = f"XSBench/sysproc-stat/{basename}.sysproc-stat.stats"
  if batching:
    sysproc_file = f"XSBench_batching/sysproc-stat/{basename}.sysproc-stat.stats"
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

def extract_bars():
  vanilla_tuple, tos_tuple, batching_tuple = (), (), ()
  vanilla_basename, tos_basename, batching_basename = get_filenames()
  baseline_elapsed = get_time_stats(vanilla_basename,False)[3] * NUM_CORES
  for run in [vanilla_basename, tos_basename, batching_basename]:
    batching = (run == batching_basename)
    basename = run
    user, system, idle, elapsed = get_time_stats(basename,batching)
    if run != tos_basename:
      blkio_delay, irq_delay = get_taskstat(basename, batching)
      syswide_irq = get_sysproc_stats(basename, batching)
      pf_irq = syswide_irq - irq_delay if syswide_irq > irq_delay else 0.0
      # Adjust times to avoid double counting
      # pf_irq overlaps with idle time and should be counted as system time
      system += pf_irq
      idle -= pf_irq

      system += irq_delay
      idle -= irq_delay

      idle_other = idle - blkio_delay 
      if idle_other < 0:
        idle_other = 0.0
    else:
      blkio_delay, irq_delay = 0.0, 0.0
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

def report_stats():
  vanilla = 1.0
  # tos = 1.0
  batching = 1.0
  
  vanilla_performance   = bars['vanilla'][5]
  tos_performance       = bars['tos'][5]
  batching_performance  = bars['batching'][5]

  # vanilla *= vanilla_performance
  # if (alg == 'sssp' and graph == 'road'):
  #   tos *= vanilla_performance
  # else:
  #   tos *= tos_performance
  # batching *= batching_performance

  vanilla_avg_perf = vanilla_performance
  tos_avg_perf = tos_performance
  batching_avg_perf = batching_performance
  print(f'Geometric Mean Performance:')
  print(f'  Vanilla: {vanilla_avg_perf:.3f}')
  print(f'  ToS:     {tos_avg_perf:.3f}')
  print(f'  Batching:{batching_avg_perf:.3f}')
  return vanilla_avg_perf, tos_avg_perf, batching_avg_perf

def print_stats(bars, alg, graph):
  print(f'Algorithm: {alg}, Graph: {graph}')
  print(f'  Vanilla: User: {bars[alg][graph]["vanilla"][0]*100:.1f}%')
  print(f'           System: {bars[alg][graph]["vanilla"][1]*100:.1f}%')
  print(f'           Idle Other: {bars[alg][graph]["vanilla"][2]*100:.1f}%')
  print(f'           Idle PF: {bars[alg][graph]["vanilla"][3]*100:.1f}%')
  print(f'           Idle IRQ: {bars[alg][graph]["vanilla"][4]*100:.1f}%')
  print(f'           Total: {bars[alg][graph]["vanilla"][5]*100:.1f}%')

  print(f'  ToS:     User: {bars[alg][graph]["tos"][0]*100:.1f}%')
  print(f'           System: {bars[alg][graph]["tos"][1]*100:.1f}%')
  print(f'           Idle Other: {bars[alg][graph]["tos"][2]*100:.1f}%')
  print(f'           Idle PF: {bars[alg][graph]["tos"][3]*100:.1f}%')
  print(f'           Idle IRQ: {bars[alg][graph]["tos"][4]*100:.1f}%')
  print(f'           Total: {bars[alg][graph]["tos"][5]*100:.1f}%')

  print(f'  Batching: User: {bars[alg][graph]["batching"][0]*100:.1f}%')
  print(f'           System: {bars[alg][graph]["batching"][1]*100:.1f}%')
  print(f'           Idle Other: {bars[alg][graph]["batching"][2]*100:.1f}%')
  print(f'           Idle PF: {bars[alg][graph]["batching"][3]*100:.1f}%')
  print(f'           Idle IRQ: {bars[alg][graph]["batching"][4]*100:.1f}%')
  print(f'           Total: {bars[alg][graph]["batching"][5]*100:.1f}%')
  print('===================')

def plot_bars(bars):
  vanilla_avg_perf,tos_avg_perf, batching_avg_perf = report_stats()
  # Define colors for each bar segment
  colors = ["#4FB600", "#007BFF", "#0400FF", "#FF9D9A", "#D14548"]
  labels = ['User', 'System', 'Idle Other', 'Idle PF', 'Idle IRQ']

  run_types = ['vanilla', 'tos', 'batching']
  x = np.arange(1)  # the label locations
  width = 0.25  # width of each bar

  fig, axs = plt.subplots(1, 1, sharey=True)
  # axs = axs.flatten()
  
  # for idx, alg in enumerate(algs):
  #   ax = axs[idx]
  #   bottoms = np.zeros(len(graphs))
  ax = axs
  for i, run_type in enumerate(run_types):
    user_bars = []
    system_bars = []
    idle_other_bars = []
    idle_pf_bars = []
    idle_irq_bars = []
    
    tup = bars[run_type]
    user_bars.append(tup[0])
    system_bars.append(tup[1])
    idle_other_bars.append(tup[2])
    idle_pf_bars.append(tup[3])
    idle_irq_bars.append(tup[4])
    # bar_bottom = np.zeros(len(graphs))
    
    bar_btm = np.zeros(1)
    p1 = ax.bar(x + (i - 1) * width, user_bars, width, label='User' if i == 0 else "", color=colors[0], edgecolor='black')
    bar_btm += np.array(user_bars)
    p2 = ax.bar(x + (i - 1) * width, system_bars, width, bottom=bar_btm, label='System' if i == 0 else "", color=colors[1], edgecolor='black')
    bar_btm += np.array(system_bars)
    p3 = ax.bar(x + (i - 1) * width, idle_irq_bars, width, bottom=bar_btm, label='System IRQ' if i == 0 else "", color=colors[2], edgecolor='black')
    bar_btm += np.array(idle_irq_bars)
    p4 = ax.bar(x + (i - 1) * width, idle_other_bars, width, bottom=bar_btm, label='Idle Other' if i == 0 else "", color=colors[3], edgecolor='black')
    bar_btm += np.array(idle_other_bars)
    p5 = ax.bar(x + (i - 1) * width, idle_pf_bars, width, bottom=bar_btm, label='Idle PF' if i == 0 else "", color=colors[4], edgecolor='black')
  
  ax.set_title('XSBench Performance Comparison')
  ax.set_xticks(x)
  ax.set_xticklabels(['XSBench'])
  ax.set_ylabel('Execution Time (Normalized)')
  ax.legend(loc='upper right', ncol=2)
  ax.set_ylim(0, 1.2)
  ax.axhline(1.0, color='red', linestyle='--', linewidth=1)
  ax.axhline(vanilla_avg_perf, color='green', linestyle='--', linewidth=1)
  ax.axhline(tos_avg_perf, color='blue', linestyle='--', linewidth=1)
  ax.axhline(batching_avg_perf, color='orange', linestyle='--', linewidth=1)
  ax.grid(axis='y')
  ax.yaxis.set_tick_params(labelleft=True)

  fig.tight_layout()
  # fig.subplots_adjust(right=0.85)
  # fig.subplots_adjust(left=0.037, right=0.979, top=0.964, bottom=0.039, hspace=0.168, wspace=0.414)
  
  plt.show()

# main
if __name__ == "__main__":

  bars = {}
  vanilla_tuple, tos_tuple, batching_tuple = extract_bars()
  bars['vanilla'] = vanilla_tuple
  bars['tos'] = tos_tuple
  bars['batching'] = batching_tuple
  # print_stats(bars, alg, graph)

  print(bars)
  # plot_bars(bars)
  