import glob
import os
import numpy as np
import matplotlib.pyplot as plt


NUM_CORES = 1
apps = ['gups_single_threaded','gups_single_threaded_batching']
# algs=['bc','bfs','cc','pr','sssp','tc']
# graphs={'road','kron','twitter','urand','web'}
# graphs = ['road', 'web', 'twitter', 'kron', 'urand']
bars = {} # bars[app] = (user_bar, system_bar, idle_other_bar, idle_pf_bar, idle_irq_bar, total_bar)

# Function to get filenames for a given algorithm and graph
def get_filenames():
  vanilla_pattern = f"{apps[0]}/faults/{apps[0]}-95-1-*"
  vanilla_file = glob.glob(vanilla_pattern)[0]
  vanilla_basename = os.path.basename(vanilla_file).split('.')[0]

  # tos_pattern = f"{alg}/faults/{alg}-{graph}-30-16-*"
  # tos_file = glob.glob(tos_pattern)[0]
  # tos_basename = os.path.basename(tos_file).split('.')[0]

  batching_pattern = f"{apps[1]}/faults/{apps[1]}-95-1-*"
  batching_file = glob.glob(batching_pattern)[0]
  batching_basename = os.path.basename(batching_file).split('.')[0]
  return vanilla_basename, batching_basename

def get_time_stats(basename):
  run_type = basename.split('-')[0]
  stats_file = f"{run_type}/time/{basename}.time.stats"
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
  run_type = basename.split('-')[0]
  taskstat_file = f"{run_type}/taskstats/{basename}.taskstats.stats"
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
  run_type = basename.split('-')[0]
  sysproc_file = f"{run_type}/sysproc-stat/{basename}.sysproc-stat.stats"
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
  vanilla_tuple, batching_tuple = (), ()
  vanilla_basename, batching_basename = get_filenames()
  baseline_elapsed = get_time_stats(vanilla_basename)[3] * NUM_CORES
  for run in [vanilla_basename, batching_basename]:
    basename = run
    user, system, idle, elapsed = get_time_stats(basename)
    
    blkio_delay, irq_delay = get_taskstat(basename)
    syswide_irq = get_sysproc_stats(basename)
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
    
    # Normalize by baseline elapsed time
    user_bar = user / baseline_elapsed
    system_bar = system / baseline_elapsed
    idle_other_bar = idle_other / baseline_elapsed
    idle_pf_bar = blkio_delay / baseline_elapsed
    
    total_bar = user_bar + system_bar + idle_other_bar + idle_pf_bar 
    if run == vanilla_basename:
      # bars[alg][graph]['vanilla'] = (user_bar, system_bar, idle_other_bar, idle_pf_bar, idle_irq_bar, total_bar)
      vanilla_tuple = (user_bar, system_bar, idle_other_bar, idle_pf_bar, total_bar)
    # elif run == tos_basename:
    #   # bars[alg][graph]['tos'] = (user_bar, system_bar, idle_other_bar, idle_pf_bar, idle_irq_bar, total_bar)
    #   tos_tuple = (user_bar, system_bar, idle_other_bar, idle_pf_bar, idle_irq_bar, total_bar)
    elif run == batching_basename:
      # bars[alg][graph]['batching'] = (user_bar, system_bar, idle_other_bar, idle_pf_bar, idle_irq_bar, total_bar) 
      batching_tuple = (user_bar, system_bar, idle_other_bar, idle_pf_bar, total_bar)
    else:
      raise ValueError("Unexpected run type")
  return vanilla_tuple, batching_tuple


# main
if __name__ == "__main__":

  bars = {}
  vanilla_tuple, batching_tuple = extract_bars()
  bars['vanilla'] = vanilla_tuple
  # bars['tos'] = tos_tuple
  bars['batching'] = batching_tuple
  # print_stats(bars, alg, graph)
  print(bars)
  # plot_bars(bars)
  