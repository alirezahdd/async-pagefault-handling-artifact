import glob
import os
import numpy as np
import argparse

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
RESULTS_DIR = os.path.join(SCRIPT_DIR, '..', 'results_performance')
FIGURES_DIR = os.path.join(SCRIPT_DIR, '..', 'figures')

NUM_CORES = 16
algs = ['bc', 'sssp', 'tc', 'bfs', 'pr', 'cc']
graphs = ['road', 'web', 'twitter', 'kron', 'urand']
graph_labels = ['R', 'W', 'T', 'K', 'U']

def get_filenames(alg, graph):
    vanilla_file = glob.glob(f"{alg}/faults/{alg}-{graph}-30-1-*")[0]
    vanilla_basename = os.path.basename(vanilla_file).split('.')[0]
    batching_alg = alg + '_batching'
    batching_file = glob.glob(f"{batching_alg}/faults/{batching_alg}-{graph}-30-1-*")[0]
    batching_basename = os.path.basename(batching_file).split('.')[0]
    return vanilla_basename, batching_basename

def get_time_stats(basename):
    alg = basename.split('-')[0]
    stats_file = f"{alg}/time/{basename}.time.stats"
    user, system, idle, elapsed = 0.0, 0.0, 0.0, 0.0
    with open(stats_file, 'r') as f:
        for line in f:
            if 'User' in line:    user = float(line.split()[1])
            if 'System' in line:  system = float(line.split()[1])
            if 'Idle' in line:    idle = float(line.split()[1])
            if 'Elapsed' in line: elapsed = float(line.split()[1])
    return user, system, idle, elapsed

def get_taskstat(basename):
    alg = basename.split('-')[0]
    taskstat_file = f"{alg}/taskstats/{basename}.taskstats.stats"
    blkio_delay, irq_delay = 0.0, 0.0
    with open(taskstat_file, 'r') as f:
        for line in f:
            if 'BlkIO_Delay' in line: blkio_delay = float(line.split()[1])
            if 'IRQ_Delay' in line:   irq_delay = float(line.split()[1])
    return blkio_delay / 1e9, irq_delay / 1e9

def get_sysproc_stats(basename):
    alg = basename.split('-')[0]
    sysproc_file = f"{alg}/sysproc-stat/{basename}.sysproc-stat.stats"
    with open(sysproc_file, 'r') as f:
        for line in f:
            if 'cpu_irq' in line:
                return float(line.split()[1]) / 100
    return 0.0

def get_idle_pf(basename, baseline_elapsed):
    user, system, idle, elapsed = get_time_stats(basename)
    blkio_delay, irq_delay = get_taskstat(basename)
    syswide_irq = get_sysproc_stats(basename)
    pf_irq = syswide_irq - irq_delay if syswide_irq > irq_delay else 0.0
    system += pf_irq + irq_delay
    idle -= pf_irq + irq_delay
    # idle_pf is blkio_delay normalized by baseline
    return blkio_delay / baseline_elapsed

def main():
    parser = argparse.ArgumentParser(description='Export normalized idle page-fault reduction table')
    parser.add_argument('-s', '--show', action='store_true', help='Print output to stdout')
    parser.add_argument('--results-dir', default=RESULTS_DIR, help='Directory containing performance results')
    parser.add_argument('--output-file', default=os.path.join(FIGURES_DIR, 'idlepf_stats.txt'), help='Output text file path')
    args = parser.parse_args()

    os.chdir(args.results_dir)

    lines = []
    all_normalized = []
    for alg in algs:
        baseline_row = []
        batching_row = []
        for graph in graphs:
            vanilla_basename, batching_basename = get_filenames(alg, graph)
            baseline_elapsed = get_time_stats(vanilla_basename)[3] * NUM_CORES
            baseline_row.append(get_idle_pf(vanilla_basename, baseline_elapsed))
            batching_row.append(get_idle_pf(batching_basename, baseline_elapsed))

        normalized = [(a - b) / a if a > 0 else 0.0 for a, b in zip(baseline_row, batching_row)]

        all_normalized.extend(normalized)

        lines.append(alg.upper())
        lines.append('\t' + '\t'.join(graph_labels))
        lines.append('Ours\t' + '\t'.join(f'{v:.3f}' for v in normalized))
        lines.append('')

    overall_avg = np.mean(all_normalized)
    output = '\n'.join(lines)
    if args.show:
        print(output)
        print(f'Overall Average Reduction: {overall_avg:.3f}')

    output_dir = os.path.dirname(args.output_file)
    if output_dir:
        os.makedirs(output_dir, exist_ok=True)
    with open(args.output_file, 'w', encoding='utf-8') as f:
        f.write(output)
        f.write(f'\nOverall Average Reduction: {overall_avg:.3f}\n')
    if args.show:
        print(f'Saved to {args.output_file}')


if __name__ == '__main__':
    main()
