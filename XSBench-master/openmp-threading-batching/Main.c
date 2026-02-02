#include "XSbench_header.h"
#include "profiling_utils.h"

#ifdef MPI
#include<mpi.h>
#endif

int main( int argc, char* argv[] )
{
  initialize_perf_measurements();
	// =====================================================================
	// Initialization & Command Line Read-In
	// =====================================================================
	int version = 20;
	int mype = 0;
	double omp_start, omp_end;
	int nprocs = 1;
	unsigned long long verification;

	#ifdef MPIc
	MPI_Init(&argc, &argv);
	MPI_Comm_size(MPI_COMM_WORLD, &nprocs);
	MPI_Comm_rank(MPI_COMM_WORLD, &mype);
	#endif

	#ifdef AML
	aml_init(&argc, &argv);
	#endif

	// Process CLI Fields -- store in "Inputs" structure
	Inputs in = read_CLI( argc, argv );
  in_global = &in;

	// Set number of OpenMP Threads
	#ifdef OPENMP
	omp_set_num_threads(in.nthreads); 
	#endif

  pagefault_queue_size = in.pagefault_q_size;
  batching_mode = P_MADVISE;
  allocate_pf_status_array();
  prepare_pmadvise();
  register_pf_status_array();
  // unsigned long *ips = (unsigned long *)malloc(3 * sizeof(unsigned long));
  // unsigned long *ret_ips = (unsigned long *)malloc(3 * sizeof(unsigned long));
  unsigned long* ips = (unsigned long *)malloc(3 * sizeof(unsigned long));
  unsigned long* ret_ips = (unsigned long *)malloc(3 * sizeof(unsigned long));
  ips[0] = 0x406a5b;  // 1st t maker
  ret_ips[0] = 0x8;
  ips[1] = 0x40a8c8; // 2nd t maker
  ret_ips[1] = 0xa;
  ips[2] = 0xfefefe; // 3rd t maker
  ret_ips[2] = 0x0;
  register_ips_and_retips(ips, ret_ips, 3);
  printf("Registered ips: %lx %lx %lx\n", ips[0], ips[1], ips[2]);
  printf("Registered ret_ips: %lx %lx %lx\n", ret_ips[0], ret_ips[1], ret_ips[2]);
  // touch pages to make sure they reside in memory before starting the benchmark
  // touch_pages(pf_status_array, 32*1024*sizeof(int));
  // touch_ips(ips, ret_ips, 3);

	// Print-out of Input Summary
	if( mype == 0 )
		print_inputs( in, nprocs, version );

	// =====================================================================
	// Prepare Nuclide Energy Grids, Unionized Energy Grid, & Material Data
	// This is not reflective of a real Monte Carlo simulation workload,
	// therefore, do not profile this region!
	// =====================================================================
	
	SimulationData SD;

	// If read from file mode is selected, skip initialization and load
	// all simulation data structures from file instead
	if( in.binary_mode == READ )
		SD = binary_read(in);
	else
		SD = grid_init_do_not_profile( in, mype );

	// If writing from file mode is selected, write all simulation data
	// structures to file
	if( in.binary_mode == WRITE && mype == 0 )
		binary_write(in, SD);

  SD_global = &SD;

	// =====================================================================
	// Cross Section (XS) Parallel Lookup Simulation
	// This is the section that should be profiled, as it reflects a 
	// realistic continuous energy Monte Carlo macroscopic cross section
	// lookup kernel.
	// =====================================================================

	if( mype == 0 )
	{
		printf("\n");
		border_print();
		center_print("SIMULATION", 79);
		border_print();
	}

  ///*
  
  //*/  


	// Start Simulation Timer
	omp_start = get_time();
  start_disk_stats("disk.stats");
  start_taskstats();                    
  snapshot_proc_pid(BEGIN);
  snapshot_proc_stat(BEGIN);
  start_counters(&perf_ctrs);
  trace_marker("BenchmarkKernel_Start");
  start_time_stats();
  // ompt_mark_roi_start();

	// Run simulation
	if( in.simulation_method == EVENT_BASED )
	{
		if( in.kernel_id == 0 )
			verification = run_event_based_simulation(in, SD, mype);
		else if( in.kernel_id == 1 )
			verification = run_event_based_simulation_optimization_1(in, SD, mype);
		else
		{
			printf("Error: No kernel ID %d found!\n", in.kernel_id);
			exit(1);
		}
	}
	else
		verification = run_history_based_simulation(in, SD, mype);

	if( mype == 0)	
	{	
		printf("\n" );
		printf("Simulation complete.\n" );
	}
  stop_time_stats();
  trace_marker("BenchmarkKernel_End");
  stop_counters(&perf_ctrs, &user_time, &kernel_time ,&user_instructions, &kernel_instructions);
  snapshot_proc_stat(END);
  snapshot_proc_pid(END);
  stop_taskstats();
  stop_disk_stats();
	// End Simulation Timer
	omp_end = get_time();
  cleanup_counters(&perf_ctrs);
  measure_time_stats();

	// =====================================================================
	// Output Results & Finalize
	// =====================================================================

	// Final Hash Step
	verification = verification % 999983;

	// Print / Save Results and Exit
	int is_invalid_result = print_results( in, mype, omp_end-omp_start, nprocs, verification );

	#ifdef MPI
	MPI_Finalize();
	#endif

	#ifdef AML
	aml_finalize();
	#endif

  ///*
  unregister_and_free_arrays();
  //*/

	return is_invalid_result;
}
