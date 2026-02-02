#!/usr/bin/env python3
"""
Automatically extract results from GUPS and XSBench plot scripts
and generate the execution time breakdown plot.
"""

import os
import sys
import glob
import subprocess
import importlib.util
import argparse
import numpy as np
import matplotlib.pyplot as plt


def load_module_from_path(module_name, file_path):
    """Dynamically load a Python module from a file path."""
    spec = importlib.util.spec_from_file_location(module_name, file_path)
    module = importlib.util.module_from_spec(spec)
    sys.modules[module_name] = module
    spec.loader.exec_module(module)
    return module


def extract_gups_results():
    """Extract GUPS benchmark results."""
    print("Extracting GUPS results...")
    
    # Get the path to GUPS/gather_stats.py
    script_dir = os.path.dirname(os.path.abspath(__file__))
    gups_script = os.path.join(script_dir, 'GUPS', 'gather_stats_gups.py')
    
    # Save current directory and change to GUPS directory
    original_cwd = os.getcwd()
    gups_dir = os.path.dirname(gups_script)
    os.chdir(gups_dir)
    
    try:
        # Load the GUPS plot_tmp module
        gups_module = load_module_from_path('gups_plot_tmp', gups_script)
        
        # Call extract_bars() function
        vanilla_tuple, batching_tuple = gups_module.extract_bars()
        
        results = {
            'vanilla': vanilla_tuple,
            'batching': batching_tuple
        }
        
        print(f"  GUPS results: {results}")
        return results
        
    finally:
        os.chdir(original_cwd)


def extract_xsbench_results():
    """Extract XSBench benchmark results."""
    print("Extracting XSBench results...")
    
    # Get the path to XSBench/gather_stats.py
    script_dir = os.path.dirname(os.path.abspath(__file__))
    xsbench_script = os.path.join(script_dir, 'XSBench', 'gather_stats_xs.py')
    
    # Save current directory and change to XSBench directory
    original_cwd = os.getcwd()
    xsbench_dir = os.path.dirname(xsbench_script)
    os.chdir(xsbench_dir)
    
    try:
        # Load the XSBench plot_tmp module
        xsbench_module = load_module_from_path('xsbench_plot_tmp', xsbench_script)
        
        # Call extract_bars() function
        vanilla_tuple, tos_tuple, batching_tuple = xsbench_module.extract_bars()
        
        results = {
            'vanilla': vanilla_tuple,
            'tos': tos_tuple,
            'batching': batching_tuple
        }
        
        print(f"  XSBench results: {results}")
        return results
        
    finally:
        os.chdir(original_cwd)


def plot_bars(bars, show_plot=False):
    """Generate the execution time breakdown plot."""
    # Define colors for each bar segment
    cmap = plt.get_cmap("tab20")
    colors = cmap([14, 15, 7, 6])
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
        
        # Format mode labels
        mode_labels = []
        for mode in modes:
            if mode == 'vanilla':
                mode_labels.append('Vanilla')
            elif mode == 'tos':
                mode_labels.append('TOS')
            elif mode == 'batching':
                mode_labels.append('Batching')
            else:
                mode_labels.append(mode.capitalize())
        
        ax.set_xticklabels(mode_labels, fontsize=9)
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
    
    filename = 'gups_xsb_exetime_breakdown_light_auto.pdf'
    plt.savefig(filename, dpi=200)
    print(f'Saved plot to: {filename}')
    
    if show_plot:
        plt.show()


def main():
    parser = argparse.ArgumentParser(description='Generate execution time breakdown plots automatically')
    parser.add_argument('-s', '--show', action='store_true', help='Show the plot window')
    args = parser.parse_args()
    
    # Extract results from both benchmarks
    try:
        gups_results = extract_gups_results()
        xsbench_results = extract_xsbench_results()
        
        # Combine results (XSBench on left, GUPS on right)
        bars = {
            'XSBench': xsbench_results,
            'GUPS': gups_results
        }
        
        # Print combined results for reference
        print("\nCombined results:")
        print(bars)
        
        # Generate plot
        plot_bars(bars, show_plot=args.show)
        
    except Exception as e:
        print(f"Error: {e}", file=sys.stderr)
        import traceback
        traceback.print_exc()
        sys.exit(1)


if __name__ == "__main__":
    main()
