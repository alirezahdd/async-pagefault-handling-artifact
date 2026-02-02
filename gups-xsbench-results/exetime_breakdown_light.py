import glob
import os
import numpy as np
import matplotlib.pyplot as plt
import argparse


NUM_CORES = 16
# algs=['bc','sssp','tc','bfs','pr','cc']

# graphs = ['road', 'web', 'twitter', 'kron', 'urand']
bars = {} # bars[alg][graph] = (user_bar, system_bar, idle_other_bar, idle_pf_bar, total_bar)
bars['XSBench'] = {}
bars['GUPS'] = {}
bars['XSBench']['vanilla'] = (0.03962241345136854, 0.6728022831779565, 0.030295137858903514, 0.25728016551177135, 0.9999999999999999)
bars['XSBench']['tos'] = (0.056282950979041575, 0.6263744456689723, 0.1281541302951763, 0.0, 0.8108115269431901)
bars['XSBench']['batching'] = (0.04310260747497001, 0.5727497632905869, 0.010254230820462232, 0.004858852652342117, 0.6309654542383613)

bars['GUPS']['vanilla'] = (0.0114409078902596, 0.8110601116214752, 0.006064738397704996, 0.17143424209056032, 1.0000000000000002)
bars['GUPS']['batching'] = (0.013212435173397624, 0.6431233828694853, 0.0, 2.1333509508042464e-05, 0.656357151552391)

def plot_bars(bars, show_plot=False):
  # Define colors for each bar segment
  cmap = plt.get_cmap("tab20")
  colors = cmap([14,15,7,6])
  labels = ['User', 'System', 'Idle Other', 'Idle Page Fault']
  
  benchmarks = list(bars.keys())  # ['XSBench', 'GUPS']
  
  # Calculate width ratios based on number of modes per benchmark
  width_ratios = [len(bars[benchmark].keys()) for benchmark in benchmarks]
  
  fig = plt.figure(figsize=(5.5, 2))
  gs = fig.add_gridspec(1, len(benchmarks), width_ratios=width_ratios, wspace=0.25)
  axs = [fig.add_subplot(gs[i]) for i in range(len(benchmarks))]
  
  width = 0.6  # width of each bar
  y_max = 1.2
  
  for idx, benchmark in enumerate(benchmarks):
    ax = axs[idx]
    modes = list(bars[benchmark].keys())
    n_modes = len(modes)
    x = np.arange(n_modes)  # positions for each mode
    
    for mi, mode in enumerate(modes):
      tup = bars[benchmark][mode]
      user_val = tup[0]
      system_val = tup[1]
      idle_other_val = tup[2]
      idle_pf_val = tup[3]
      
      # Plot stacked bars
      bottom = 0
      ax.bar(x[mi], user_val, width, bottom=bottom, color=colors[0], 
             edgecolor='black', linewidth=0.5)
      bottom += user_val
      
      ax.bar(x[mi], system_val, width, bottom=bottom, color=colors[1], 
             edgecolor='black', linewidth=0.5)
      bottom += system_val
      
      ax.bar(x[mi], idle_other_val, width, bottom=bottom, color=colors[2], 
             edgecolor='black', linewidth=0.5)
      bottom += idle_other_val
      
      ax.bar(x[mi], idle_pf_val, width, bottom=bottom, color=colors[3], 
             edgecolor='black', linewidth=0.5)
      bottom += idle_pf_val
      
      # Annotate bars that exceed y_max
      if bottom > y_max:
        ax.text(x[mi], y_max - 0.05, f'{bottom:.2f}', ha='center', va='top', 
                fontsize=7, color='black', fontweight='bold', rotation=0)
    
    ax.set_title(benchmark, fontsize=12, fontweight='bold')
    ax.set_xticks(x)
    if modes[0] == 'vanilla':
      modes[0] = 'Vanilla'
    if modes[1] == 'tos':
      modes[1] = 'TOS'
    if modes[1] == 'batching':
      modes[1] = 'Batching'
    if len(modes) > 2:
      if modes[2] == 'batching':
        modes[2] = 'Batching'
    ax.set_xticklabels(modes, fontsize=9)
    ax.set_ylim(0, y_max)
    ax.set_xlim(-0.5, n_modes - 0.5)
    ax.axhline(1.0, color='red', linestyle='--', linewidth=1, alpha=0.5)
    ax.grid(axis='y', linestyle=':', alpha=0.5)
    
    if idx == 0:
      ax.set_ylabel('Normalized Execution Time', fontsize=11)
    else:
      ax.set_yticklabels([])
  
  # Add legend as a column on the right side
  from matplotlib.patches import Patch
  segment_handles = [Patch(facecolor=colors[i], edgecolor='black', label=labels[i]) for i in range(4)]
  fig.legend(handles=segment_handles, loc='center right', bbox_to_anchor=(0.99, 0.5), 
             ncol=1, fontsize=10, frameon=True)
  
  plt.subplots_adjust(top=0.88, bottom=0.15, right=0.677, left=0.08)
  
  # folder_name = 'figures'
  # if not os.path.exists(folder_name):
  #   os.makedirs(folder_name)
  filename = 'gups_xsb_exetime_breakdown_light.pdf'
  plt.savefig(filename, dpi=200)
  print('Saved plot to:', filename)
  if show_plot:
    plt.show()


# main
if __name__ == "__main__":
  parser = argparse.ArgumentParser(description='Generate execution time breakdown plots')
  parser.add_argument('-s', '--show', action='store_true', help='Show the plot window')
  args = parser.parse_args()
  # os.chdir('..')
  plot_bars(bars, show_plot=args.show)

