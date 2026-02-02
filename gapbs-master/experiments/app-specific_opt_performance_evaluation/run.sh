#!/bin/bash

# This script runs gapbs $kernels on $graphs with $available_memory
# and overcommitting factor of $ocfs. While running them, it counts
# and measures major-faults, minor-faults, cycles:u, cycles:k,
# context-switches, instructions:u, instructions:k, L3MPKI:u, L3MPKI:k,
# IPC, swap_ra, swap_ra_hits, PPMI.
# It also read and measure disk statistics every second in
# /sys/block/<device>/<partition>/stat including swap ins, swap outs,
# swap ins(sectors), swap outs(sectors)
# Disk average queue is also monitored every second using dstat tool

RESULT_DIR="results" # "." for current folder

kernels=("bc_batching_nopt" "bfs_batching_nopt" "sssp_batching_nopt" "cc_batching_nopt") 
graphs=("road" "kron" "twitter" "urand" "web")   #("road" "kron" "twitter" "urand" "web")

available_memory=("30") #("100" "90" "80" "70" "60" "50" "40" "30")

ocfs=("1") #("1" "2" "4" "8" "16" "32" "64" "128")
batching=("-q")   #("" "-q")         batch pagefaults(-q) or not
batching_mode=("") #("" "-o")    use process_madvise or madvise(-o)
queue_sizes=("-y512") #("-y16" "-y1024") page fault queue size. Max supported size is -y1024.

omp_trace="OFF"                       # "ON" or "OFF"
system_trace="OFF"                    # "ON" or "OFF"

swap_readahead="ON"                   # "ON" or "OFF"
file_readahead="ON"                   # "ON" or "OFF"
NUM_SWAP_PARTITIONS=1                 #can be 1, 2, 3, and 4 in our system (terra)
NUM_CORES=$(lscpu | grep -w "CPU(s):" | grep -v "NUMA" | awk '{print $2}') #8
GRAPH_DIR="/share/graphs"
file_partition="sda1" #might be nvme0n1p2. use lsblk to figure it out
#file_partition="nvme0n1p2"  #might be nvme1n1p2. use lsblk to figure it out

declare -A kernel_args
kernel_args["bc"]="-i3 -n5"       		# Default "-i4 -n16"
kernel_args["bfs"]="-n5"          		# Default "-n64"
kernel_args["cc"]="-n5"           		# "-n5" Default "-n16"
kernel_args["pr"]="-i1000 -t1e-4 -n5" # Default "-i1000 -t1e-4 -n16"
kernel_args["sssp"]="-n3 -d2"     		# Default "-n64 -d2"
kernel_args["tc"]="-n1"      					# Default "-n3 -p"		# p is defined for partial exe
kernel_args["tc_road"]="-n3" 					# Default "-n3 -p"		# p is defined for partial exe

########################################  FUNCTIONS  ###############################
# measures the workload size in MB
function measure_workload_size() {
	local kernel=$1
	local graph_path=$2
	# local graph=$(echo $graph_path | awk -F'/' '{print $4}' | sed 's/U\.sg//' | sed 's/\.sg//' | sed 's/\.wsg//')
	local graph
	graph=$(basename "$graph_path" | sed -E 's/(U\.sg|\.sg|\.wsg)//')		# get the graph name and remove extensions 
	local max_rss=0
	# dont measure workload size, since it takes too much time.
	# instead use premeasured sizes
	# Check if kernel is 'tc', or starts with 'tc_' or 'tc-'
	case "$kernel" in
		tc|tc_*|tc-*)
			case "$graph" in
				road)    echo "603"	;;
				kron)    echo "18598" ;;
				twitter) echo "10359" ;;
				urand)   echo "18877" ;;
				web)     echo "14935" ;; # relabeling makes max RSS smaller
			esac
			;;
		bc|bc_*|bc-*)
			case "$graph" in
				road)    echo "1304" 	;;
				kron)    echo "20409" ;;
				twitter) echo "13717" ;;
				urand)   echo "20976" ;;
				web)     echo "17101" ;;
			esac
			;;
		bfs|bfs_*|bfs-*)
			case "$graph" in
				road)    echo "1022" 	;;
				kron)    echo "18599" ;;
				twitter) echo "12919" ;;
				urand)   echo "18879" ;;
				web)     echo "16271" ;;
			esac
			;;
		cc|cc_*|cc-*)
			case "$graph" in
				road)    echo "603" ;;
				kron)    echo "18598" ;;
				twitter) echo "10360" ;;
				urand)   echo "18879" ;;
				web)     echo "14935" ;;
			esac
			;;
		pr|pr_*|pr-*)
			case "$graph" in
				road)    echo "1016" ;;
				kron)    echo "18599" ;;
				twitter) echo "12918" ;;
				urand)   echo "18879" ;;
				web)     echo "16271" ;;
			esac
			;;
		sssp|sssp_*|sssp-*)
			case "$graph" in
				road)    echo "18745" ;;
				kron)    echo "35348" ;;
				twitter) echo "24579" ;;
				urand)   echo "36992" ;;
				web)     echo "31526" ;;
			esac
			;;
		*)
			/usr/bin/time -v -o max_rss.txt ../../"$kernel" -f "$graph_path" -n1 -p >/dev/null
			max_rss=$(grep Maximum max_rss.txt | awk '{print $6}') # max_rss in kB
			max_rss=$((max_rss / 1000))                            # max_rss in MB
			rm max_rss.txt
			echo $max_rss
			;;
	esac
}

# return the proper graph for the specified kernel (sg, wsg, U.sg)
function get_proper_graph() {
	local kernel=$1
	local graph=$2

	case "$kernel" in
		sssp|sssp_*|sssp-*)
			echo "$GRAPH_DIR/$graph.wsg" # sssp uses weighted graphs (.wsg)
			;;
		tc|tc_*|tc-*)
			echo "$GRAPH_DIR/${graph}U.sg" # tc uses undirected graphs (U.sg)
			;;
		cc|cc_*|cc-*)
			echo "$GRAPH_DIR/${graph}.sg" # cc uses undirected graphs (.sg)
			;;
		bc|bc_*|bc-*)
			echo "$GRAPH_DIR/${graph}U.sg" # bc uses undirected graphs (.sg)
			;;
		*)
			echo "$GRAPH_DIR/$graph.sg" # other kernels use non-weighted graphs (.sg)
			;;
	esac
}

# return the proper args for the specified kernel (e.g. -n1)
function get_kernel_args() {
	local kernel=$1
	local graph=$2
	case $kernel in
		bc|bc_*|bc-*)
			echo "${kernel_args["bc"]}" ;;
		bfs|bfs_*|bfs-*)
			echo "${kernel_args["bfs"]}" ;;
		cc|cc_*|cc-*)
			echo "${kernel_args["cc"]}" ;;
		pr|pr_*|pr-*)
			echo "${kernel_args["pr"]}" ;;
		sssp|sssp_*|sssp-*)
			echo "${kernel_args["sssp"]}" ;;
		tc|tc_*|tc-*)
			if [ "$graph" == "road" ]; then
				echo "${kernel_args["tc_road"]}"
			else
				echo "${kernel_args["tc"]}"
			fi
			;;
		*)
			echo ;;
	esac
}

#turns on swap readheads
function turn_on_swap_ra() {
	if ! sudo -n true 2>/dev/null; then
		echo "Warning: This script requires sudo privileges. ⚠️"
		exit 1
	fi
	echo 3 >/proc/sys/vm/page-cluster #swap readahead is turned on with 2^3=8 pages
	# sudo sysctl -w vm.page-cluster=3  #does the same as above
}
#turns off swap readheads
function turn_off_swap_ra() {
	if ! sudo -n true 2>/dev/null; then
		echo "Warning: This script requires sudo privileges. ⚠️"
		exit 1
	fi
	echo 0 >/proc/sys/vm/page-cluster #swap readahead is turned on with 2^3=8 pages
	# sudo sysctl -w vm.page-cluster=0  #does the same as above
}
#turns on file readheads
function turn_on_file_ra() {
	sudo blockdev --setra 256 /dev/$file_partition #file readahead is turned on with 256 sectors = 32 pages
}
#turns off file readheads
function turn_off_file_ra() {
	sudo blockdev --setra 0 /dev/$file_partition #file readahead is turned off
}
# Sets the number of active swap partitions to $1
function set_swap_partition_count() {
	local swap_partitions=$1

	# Find all swap-capable partitions (use -lp for list format and full paths)
	readarray -t all_swap < <(lsblk -lp -o NAME,FSTYPE | grep swap | awk '{print $1}')

	# Turn off all active swap
	sudo swapoff -a 2>/dev/null || true

	# Turn on only the requested number of swap partitions
	for ((i = 0; i < swap_partitions && i < ${#all_swap[@]}; i++)); do
		sudo swapon --priority=0 "${all_swap[$i]}"
	done
  swapon -s
}

function adjust_the_settings() {
	echo "Number of cores: $NUM_CORES"
	echo -n "Kernels: "
	printf "%s " "${kernels[@]}"
	echo
	echo -n "Graphs: "
	printf "%s " "${graphs[@]}"
	echo
	echo -n "Available memories: "
	printf "%s " "${available_memory[@]}"
	echo
	echo -n "Over Committing Factors: "
	printf "%s " "${ocfs[@]}"
	echo
	echo "Swap Readahead: $swap_readahead"
	if [ "$swap_readahead" == "ON" ]; then
		turn_on_swap_ra
		echo "Swap readahead turned on"
	else
		turn_off_swap_ra
		echo "Swap readahead turned off"
	fi
	echo "File Readahead: $file_readahead"
	if [ "$file_readahead" == "ON" ]; then
		turn_on_file_ra
		echo "File readahead turned on"
	else
		turn_off_file_ra
		echo "File readahead turned off"
	fi
	echo "Number of swap partitions: $NUM_SWAP_PARTITIONS"
	set_swap_partition_count "$NUM_SWAP_PARTITIONS"
	swap_partitions=$(lsblk | awk '/\[SWAP\]/{print $4}')
	echo "Active Swap Partitions: $swap_partitions"
	echo "Graph Directory: $GRAPH_DIR"
	echo
}

# Sets the memory limit for the cgroup 'gapbs_group' in MB
function set_memory_limit() {
	local workload_size=$1
	local memory_percentage=$2

	for cmd in cgcreate cgset; do
		if ! command -v "$cmd" >/dev/null 2>&1; then
			echo "$cmd not found. Installing libcgroup-tools..."
			sudo apt-get update
			sudo apt-get install -y libcgroup-tools
			break
		fi
	done

	local mem_size=$((workload_size * memory_percentage / 100))

	# Set memory limit for the cgroup in bytes
	# Convert memory size from MB to bytes
	local mem_limit_bytes=$((mem_size * 1024 * 1024))
	# Ensure memory cgroup is mounted and gapbs_group exists
	if [ ! -d /sys/fs/cgroup/memory ]; then
		sudo mkdir -p /sys/fs/cgroup/memory
		sudo mount -t cgroup -o memory memory /sys/fs/cgroup/memory
	fi
	if [ ! -d /sys/fs/cgroup/memory/gapbs_group ]; then
		sudo cgcreate -g memory:gapbs_group
	fi
	# echo "$mem_limit_bytes" | sudo tee /sys/fs/cgroup/memory/gapbs_group/memory.limit_in_bytes >/dev/null
	sudo cgset -r memory.limit_in_bytes="$mem_limit_bytes" gapbs_group


	if [ "${MEM_LIMIT_SLEEP:-0}" -eq 1 ]; then
		sleep 1
	fi
	echo "$mem_size"
}

function build_filename() {
	local kernel=$1
	local graph=$2
	local percentage=$3
	local ocf=$4
	local batch=$5
	local batch_mode=$6
	local quese_size=$7

	local filename="$kernel-$graph-$percentage-$ocf"

	if [ -n "$batch" ] && [ "$batch" == "-q" ]; then
		filename="$filename-batched"
		if [ -n "$batch_mode" ]; then
			filename="$filename-$batch_mode"
		else
			filename="$filename-no"
		fi
		if [ -n "$quese_size" ]; then
			filename="$filename-$quese_size"
		else
			filename="$filename-no"
		fi
	else
		filename="$filename-not_batched-no-no"
	fi

	echo "$filename"
}

function clear_pagecache() {
	sync
	sudo sh -c 'echo 1 > /proc/sys/vm/drop_caches'
	sleep 1
	sync
}

function calculate_diffs() {
  python3 ../../get_proc_stat_diffs.py stat_begin.stats stat_end.stats > proc-stat.stats
  python3 ../../get_proc_sched_diffs.py sched_begin.stats sched_end.stats > proc-sched.stats
  python3 ../../get_system_stat_diffs.py proc_stat_begin.stats proc_stat_end.stats > sysproc-stat.stats
}

# Execute a single benchmark run
function execute_benchmark() {
  local kernel=$1
  local graph=$2
  local graph_path=$3
  local args=$4
  local percentage=$5
  local ocf=$6
  local batch=$7
  local batch_mode=$8
  local queue_size=$9
  local mem_size=${10}
  local threads=${11}
  local output_dirs=("${@:12}")

  # Create associative array for cleaner stat file mapping
  declare -A stat_dirs
  stat_dirs["disk"]="${output_dirs[0]}"
  stat_dirs["perf"]="${output_dirs[1]}"
  stat_dirs["time"]="${output_dirs[2]}"
  stat_dirs["proc-stat"]="${output_dirs[3]}"
  stat_dirs["proc-sched"]="${output_dirs[4]}"
  stat_dirs["taskstats"]="${output_dirs[5]}"
  stat_dirs["faults"]="${output_dirs[6]}"
  stat_dirs["omp"]="${output_dirs[7]}"
  stat_dirs["trace"]="${output_dirs[8]}"
  stat_dirs["sysproc-stat"]="${output_dirs[9]}"
  stat_dirs["log"]="${output_dirs[10]}"
  
  local cmd_args="$args $batch $batch_mode $queue_size"
  local output_file_name
  output_file_name=$(build_filename "$kernel" "$graph" "$percentage" "$ocf" "$batch" "$batch_mode" "$queue_size")
  output_file_name="$output_file_name-$NUM_SWAP_PARTITIONS-$mem_size"
  
  # clear_pagecache
  # Prepare the command with "sudo OMP_NUM_THREADS=$threads" later
  local command="cgexec -g memory:gapbs_group ../../$kernel -f $graph_path $cmd_args"
  if [ "$system_trace" == "ON" ]; then
    trace_cmd="trace-cmd record -p function -l swapin_readahead -e sched_switch -e sched_wakeup -e sched_waking -e sched_stat_iowait -e sched_process_exit -e block_rq_insert -e block_rq_issue -e block_rq_complete -e block_io_start -e block_io_done -e block_bio_complete -e irq_handler_entry -e irq_handler_exit -e page_fault_user"
    command="$trace_cmd $command"
  fi
  command="KMP_SETTINGS=1 KMP_BLOCKTIME=0 OMP_NUM_THREADS=$threads $command"
  if [ "$omp_trace" == "ON" ]; then
    command="bash -c \"source ../../omp_runtime_visualizer/env_setup.sh && $command\""
  fi

  command="sudo $command >"${stat_dirs["log"]}/$output_file_name.log" 2>&1"

  echo "$command"
  echo "⏳"
  
  # Execute the benchmark
  if ! eval "$command"; then
    echo "ERROR: Benchmark execution failed for $kernel $graph ❌" >&2
    return 1
  fi
  
  sleep 0.2

  echo " Calculating diffs... ⏳"
  calculate_diffs
  echo " Created proc-stat.stats and proc-sched.stats ✅"

  # Clean up intermediate files
  rm -f stat_begin.stats stat_end.stats  
  rm -f sched_begin.stats sched_end.stats
  rm -f proc_stat_begin.stats proc_stat_end.stats
  echo " Removed intermediate files 🧹"
  
  echo " Saving statistics and trace files... 💾"
  # Move statistics files
  for stat_type in disk perf time sysproc-stat proc-stat proc-sched taskstats faults; do
    local stat_file="${stat_type}.stats"
    if [[ -f "$stat_file" ]]; then
      if [[ -n "${stat_dirs[$stat_type]}" ]]; then
        mv "$stat_file" "${stat_dirs[$stat_type]}/$output_file_name.$stat_type.stats"
      else
        echo "WARNING: No directory mapping for stat type $stat_type ⚠️" >&2
      fi
    else
      echo "WARNING: $stat_file not found ⚠️" >&2
    fi
  done
  # Move trace file if system_trace is enabled
  if [ "$system_trace" == "ON" ]; then
    local trace_file="trace.dat"
    if [[ -f "$trace_file" ]]; then
      mv "$trace_file" "${stat_dirs["trace"]}/$output_file_name.trace.dat"
    fi
  fi

  # Get omp plot and stats if enabled
  if [ "$omp_trace" == "ON" ]; then
    echo " Generating OMP stats and plot... ⏳"
    log_file="${stat_dirs["log"]}/${output_file_name}.log"
    parsed_log_file="${stat_dirs["log"]}/${output_file_name}.parsed.log"
    python3 ../../omp_runtime_visualizer/tools/ompt_parser.py "$log_file" > "$parsed_log_file"
    python3 ../../omp_runtime_visualizer/tools/timeline_plotter.py "$parsed_log_file" -s >/dev/null 2>&1
    mv omp_threads.stats "${stat_dirs["omp"]}/${output_file_name}.omp.stats"
    mv thread_timeline.pdf "${stat_dirs["omp"]}/${output_file_name}.timeline.pdf"
    echo " Generated OMP stats and plot ✅"
  fi  
  echo "----------------------------------------"
  return 0
}

# Execute benchmark for batched mode
function execute_batched_benchmark() {
  local kernel=$1 graph=$2 graph_path=$3 args=$4 percentage=$5 ocf=$6 
  local batch=$7 mem_size=$8 threads=$9
  local output_dirs=("${@:10}")
  
  for batch_mode in "${batching_mode[@]}"; do
    for queue_size in "${queue_sizes[@]}"; do
        execute_benchmark "$kernel" "$graph" "$graph_path" "$args" "$percentage" "$ocf" \
          "$batch" "$batch_mode" "$queue_size" "$mem_size" "$threads" "${output_dirs[@]}"
    done
  done
}

# Execute benchmark for non-batched mode
function execute_non_batched_benchmark() {
  local kernel=$1 graph=$2 graph_path=$3 args=$4 percentage=$5 ocf=$6 
  local batch=$7 mem_size=$8 threads=$9
  local output_dirs=("${@:10}")
  
  # For non-batched mode, use empty values for batch_mode, queue_size, and readahead_size
  execute_benchmark "$kernel" "$graph" "$graph_path" "$args" "$percentage" "$ocf" \
    "$batch" "" "" "$mem_size" "$threads" "${output_dirs[@]}"
}

# Main benchmark execution function
function run_benchmarks() {
  for kernel in "${kernels[@]}"; do
    echo "📌 Processing kernel: $kernel"
    
    # Create directory structure
    local kernel_dir="$RESULT_DIR/$kernel"
    local disk_stats_dir="$kernel_dir/disk"
    local perf_stats_dir="$kernel_dir/perf"
    local time_stats_dir="$kernel_dir/time"
    local proc_stat_stats_dir="$kernel_dir/proc-stat"
    local proc_sched_stats_dir="$kernel_dir/proc-sched"
    local taskstats_dir="$kernel_dir/taskstats"
    local faults_dir="$kernel_dir/faults"
    local omp_stats_dir="$kernel_dir/omp"
    local trace_dir="$kernel_dir/trace"
    local systemwide_proc_stat_stats_dir="$kernel_dir/sysproc-stat"
    local log_dir="$kernel_dir/log"
    local output_dirs=("$disk_stats_dir" "$perf_stats_dir" "$time_stats_dir" "$proc_stat_stats_dir" "$proc_sched_stats_dir" "$taskstats_dir" "$faults_dir" "$omp_stats_dir" "$trace_dir" "$systemwide_proc_stat_stats_dir" "$log_dir")
    
    if [[ ! -d "$kernel_dir" ]]; then
      echo "Creating directory structure for kernel $kernel... ⏳"
      mkdir -p "${output_dirs[@]}"
    fi
    
    for graph in "${graphs[@]}"; do
      echo "Processing graph: $graph ☍"
      
      local graph_path
      graph_path=$(get_proper_graph "$kernel" "$graph")
      local args
      args=$(get_kernel_args "$kernel" "$graph")
      local workload_size
      workload_size=$(measure_workload_size "$kernel" "$graph_path")
      
      echo "($kernel,$graph) workload_size = $workload_size MB 💿"
      
      for percentage in "${available_memory[@]}"; do
        local mem_size
        mem_size=$(set_memory_limit "$workload_size" "$percentage")
        echo "Set memory limit to $mem_size MB ($percentage% of $workload_size MB) 🔻"
        
        for ocf in "${ocfs[@]}"; do
          local threads=$((ocf * NUM_CORES))
          
          
          for batch in "${batching[@]}"; do
            if [[ "$batch" == "-q" ]]; then
              execute_batched_benchmark "$kernel" "$graph" "$graph_path" "$args" \
                "$percentage" "$ocf" "$batch" "$mem_size" "$threads" \
                "${output_dirs[@]}"
            else
              execute_non_batched_benchmark "$kernel" "$graph" "$graph_path" "$args" \
                "$percentage" "$ocf" "$batch" "$mem_size" "$threads" \
                "${output_dirs[@]}"
            fi
          done
          
        done
      done
    done
  done
}

function enable_kernel_delay_accounting() {
  if ! sudo -n true 2>/dev/null; then
    echo "Error: This script requires sudo privileges for kernel delay accountings. ⚠️"
    exit 1
  fi
  sudo sysctl -w kernel.perf_event_paranoid=-1
  sudo sysctl -w kernel.kptr_restrict=0
  sudo sh -c 'echo 1 > /proc/sys/kernel/task_delayacct'
  sudo sh -c 'echo 1 > /proc/sys/kernel/sched_schedstats'
  # sudo sh -c 'echo 1 > /proc/sys/kernel/bpf_stats_enabled'
}

# Main script execution
function main() {
    echo "Starting performance evaluation script... 🚀"
    echo "Ensuring kernel delay accountings are enabled... ⏳"
    enable_kernel_delay_accounting
    
    if [[ ! -d "$RESULT_DIR" ]]; then
        mkdir -p -v "$RESULT_DIR"
    fi
    
    if [[ ! -d "$GRAPH_DIR" ]]; then
        echo "ERROR: Graph directory does not exist: $GRAPH_DIR ❌" >&2
        exit 1
    fi
    
    echo "Creating cgroup 'gapbs_group' if it doesn't exist... ⏳"
    sudo cgcreate -g memory:gapbs_group
    adjust_the_settings
    
    run_benchmarks
    
    echo "All benchmarks completed! 🎉"
    echo "Restoring default system settings... ♻️"
    turn_on_swap_ra
    turn_on_file_ra
}

# Execute main function
main "$@"
