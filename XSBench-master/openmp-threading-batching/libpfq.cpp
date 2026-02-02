#include "libpfq.h"

void* ptr = NULL; // will hold the starting address of pagefault status array
volatile int* pf_status_array; 
long unsigned int pagefault_queue_size = 8; // number of pagefaults to be stored in the queue
int batching_mode = P_MADVISE;
int status_idx = 0;             // Index to access the page fault status array 
bool pre_faulted = false;       // Flag to check if the region is prefaulted. Required by vertex centric graphs
bool break_flag[NR_THREADS] = {false};
/* ===========================================================================
 * PROCESS-MADVISE WRAPPER FUNCTIONS
 * ========================================================================== */
int pidfd;  // this is necessary for process_madvise


/* ===========================================================================
 * APP-SPECIFIC SECTION
 * ========================================================================== */
/* Global variables to be accessed by the resume functions */
unsigned long long local_verification[NR_THREADS] = {0}; // reduction variable for verification

int * num_nucs_global;
double * concs_global;
double * unionized_energy_array_global;
int * index_grid_global;
NuclideGridPoint * nuclide_grid_global;

Inputs* in_global;
SimulationData* SD_global;

volatile int dummy_faulty_data=0;


/* ===========================================================================
 * VAR SETUP MACROS REQUIRED BY TRY-CATCH
 * ========================================================================== */
// Setting up variables outside of the parallel region

bool first_itr = true;          // Flag to check if it is the first iteration of the loop
int omp_tid = 0;                // OpenMP thread id 

/* ===========================================================================
 * TRY-CATCH MACROS
 * ========================================================================== */

/* ===========================================================================
 * QUEUEING MACROS
 * ========================================================================== */

vector<state> curr_queue[NR_THREADS];
vector<state> shipped_queue[NR_THREADS];
vector<state> ready_queue[NR_THREADS];

void clear_queues(void (*func)(state&)){
  int num_threads = omp_get_max_threads();
  #pragma omp parallel for
  for (int i = 0; i < num_threads; i++)
  {
    int tid = i;
    pagein_queue(curr_queue[tid]);
  }
  #pragma omp barrier
  // resume work
  #pragma omp parallel for
  for (int i = 0; i < num_threads; i++)
  {
    int tid = i;
    resume_queue(shipped_queue[tid],func);
    resume_queue(curr_queue[tid],func);
    curr_queue[tid].clear();
    shipped_queue[tid].clear();
  }
}
// not inlined before
void clear_queue(void (*func)(state&)){
  int tid = omp_get_thread_num();
  pagein_queue(curr_queue[tid]);
  resume_queue(shipped_queue[tid],func);
  resume_queue(curr_queue[tid],func);
  curr_queue[tid].clear();
  shipped_queue[tid].clear();
}
// not inlined before
void process_pagefaults(void (*func)(state&)){
  // const Graph &g = *(graph_pointer);
  int tid = omp_get_thread_num();
  pagein_queue(curr_queue[tid]);  
  rotate_queues(tid);
  // ready_queue size should be checked since at the begining there's nothing in it to resume
  if (ready_queue[tid].size() != pagefault_queue_size)
    return;
  resume_queue(ready_queue[tid], func);
  ready_queue[tid].clear();
}

/* ===========================================================================
 * KERNEL-SPECIFIC SECTION
 * ========================================================================== */

// unsigned long *ips;
// unsigned long *ret_ips;


void touch_ips(unsigned long *ip, unsigned long *ret_ip, int size){
  for(int i = 0; i < size; i++){
    (void)ip[i];
    (void)ret_ip[i];
  }
}

// Touch pages to ensure they are in memory
void touch_pages(volatile int* address, size_t num_bytes) {
    size_t ints_per_page = 4096 / sizeof(int);
    size_t num_ints = num_bytes / sizeof(int);
    for (size_t i = 0; i < num_ints; i += ints_per_page) {
        address[i] = 0;
    }
}

// Allocates pf_status_array
void allocate_pf_status_array(){
  ptr = mmap(NULL, 32*1024*sizeof(int), PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS | MAP_POPULATE, -1, 0);
  if (ptr == MAP_FAILED) {
    printf("Failed to allocate memory using mmap\n");
  }
  if(mlock(ptr, 32*1024*sizeof(int))){
    printf("Failed to lock pf_status_array\n");
  }
  pf_status_array = (volatile int*)ptr;
  touch_pages(pf_status_array, 32*1024*sizeof(int));
}

// Get file descriptor required for process_madvise and store it in pidfd
void prepare_pmadvise(){
  if(batching_mode == P_MADVISE){
    pid_t pid = getpid();
    pidfd = syscall(SYS_pidfd_open, pid, 0); // this is necessary for process_madvise
  }
}

// syscall to register the page fault status array with the kernel
void register_pf_status_array(){
  syscall(550,pf_status_array,32*1024);
}

// syscall to register the special PCs (ips) and their return PCs (ret_ips) with the kernel
void register_ips_and_retips(unsigned long *ips, unsigned long *ret_ips, int size){
  long int errcode = -1;
  errcode = syscall(548, ips, ret_ips, size);
  printf("Registered ips: %lx %lx %lx\n", ips[0], ips[1], ips[2]);
  printf("pid: %d\n", getpid());
  printf("register_ips_and_retips syscall returned: %ld\n", errcode);
}

// syscall to unregister the page fault status array, as well as ips and ret_ips, and free the allocated memory
void unregister_and_free_arrays(){
  syscall(548, NULL, NULL, 0);
  syscall(550, NULL, 0);
  munlock(ptr, 32*1024*sizeof(int));
  munmap(ptr, 32*1024*sizeof(int));
}

void flush_iteration(state &s){
  // restore the state
  uint64_t seed = s.seed;
  double p_energy = s.p_energy;
  int mat = s.mat;
  int i = s.i;
  double *macro_xs_vector = s.macro_xs_vector;
  struct state s_r;
  s_r.j = s.j; // loop variable in calculate_micro_xs
  s_r.idx = s.idx; // idx in calculate_macro_xs
  s_r.status_idx = s.status_idx; // index to access pf_status_array

  int omp_tid = omp_get_thread_num();
  // bool * bf = &break_flag[omp_tid];
  // break_flag[omp_tid] = false;
  // continue the iteration
  for( ; i < in_global->lookups; i++ )
  {
    f_calculate_macro_xs(
        p_energy,        // Sampled neutron energy (in lethargy)
        mat,             // Sampled material type index neutron is in
        in_global->n_isotopes,   // Total number of isotopes in simulation
        in_global->n_gridpoints, // Number of gridpoints per isotope in simulation
        num_nucs_global,     // 1-D array with number of nuclides per material
        concs_global,        // Flattened 2-D array with concentration of each nuclide in each material
        unionized_energy_array_global, // 1-D Unionized energy array
        index_grid_global,   // Flattened 2-D grid holding indices into nuclide grid for each unionized energy level
        nuclide_grid_global, // Flattened 2-D grid holding energy levels and XS_data for all nuclides in simulation
        SD_global->mats,         // Flattened 2-D array with nuclide indices defining composition of each type of material
        macro_xs_vector, // 1-D array with result of the macroscopic cross section (5 different reaction channels)
        in_global->grid_type,    // Lookup type (nuclide, hash, or unionized)
        in_global->hash_bins,    // Number of hash bins used (if using hash lookup type)
        SD_global->max_num_nucs,  // Maximum number of nuclides present in any material
        &s_r
        );
    
    double max = -1.0;
    int max_idx = 0;
    for(int j = 0; j < 5; j++ )
    {
      if( macro_xs_vector[j] > max )
      {
        max = macro_xs_vector[j];
        max_idx = j;
      }
    }
    local_verification[omp_tid] += max_idx+1;

    uint64_t n_forward = 0;
    for( int j = 0; j < 5; j++ )
      if( macro_xs_vector[j] > 1.0 )
        n_forward++;
    if( n_forward > 0 )
      seed = fast_forward_LCG(seed, n_forward);

    p_energy = LCG_random_double(&seed);
    mat      = pick_mat(&seed);

    // reset the macro_xs_vector for the next iteration
    for(int j = 0; j < 5; j++ )
      macro_xs_vector[j] = 0.0;
  } 
}

void resume_iteration(state &s){
  // restore the state
  uint64_t seed = s.seed;
  double p_energy = s.p_energy;
  int mat = s.mat;
  int i = s.i;
  double *macro_xs_vector = s.macro_xs_vector;
  struct state s_r;
  s_r.j = s.j; // loop variable in calculate_micro_xs
  s_r.idx = s.idx; // idx in calculate_macro_xs
  s_r.status_idx = s.status_idx; // index to access pf_status_array

  int omp_tid = omp_get_thread_num();
  int status_idx = s.status_idx;
  bool first_iteration = true;
  // bool * bf = &break_flag[omp_tid];
  // break_flag[omp_tid] = false;
  // continue the iteration
  for( ; i < in_global->lookups; i++ )
  {
    r_calculate_macro_xs(
        p_energy,        // Sampled neutron energy (in lethargy)
        mat,             // Sampled material type index neutron is in
        in_global->n_isotopes,   // Total number of isotopes in simulation
        in_global->n_gridpoints, // Number of gridpoints per isotope in simulation
        num_nucs_global,     // 1-D array with number of nuclides per material
        concs_global,        // Flattened 2-D array with concentration of each nuclide in each material
        unionized_energy_array_global, // 1-D Unionized energy array
        index_grid_global,   // Flattened 2-D grid holding indices into nuclide grid for each unionized energy level
        nuclide_grid_global, // Flattened 2-D grid holding energy levels and XS_data for all nuclides in simulation
        SD_global->mats,         // Flattened 2-D array with nuclide indices defining composition of each type of material
        macro_xs_vector, // 1-D array with result of the macroscopic cross section (5 different reaction channels)
        in_global->grid_type,    // Lookup type (nuclide, hash, or unionized)
        in_global->hash_bins,    // Number of hash bins used (if using hash lookup type)
        SD_global->max_num_nucs,  // Maximum number of nuclides present in any material
        &s_r,
        &break_flag[omp_tid],
        &first_iteration
        );

    if (break_flag[omp_tid]){
      s_r.i = i;
      s_r.seed = seed;
      s_r.p_energy = p_energy;
      s_r.mat = mat;
      s_r.status_idx = status_idx;
      break_flag[omp_tid] = false;
      // if(omp_tid == 0){
      //   printf("Enqueuing from resume_iteration\n");
      //   printf("current curr_queue_size: %ld\n", curr_queue[omp_tid].size());
      // }
      ENQUEUE_R(s_r, resume_iteration);
      return; // we return here (instead of break)
    }
    
    double max = -1.0;
    int max_idx = 0;
    for(int j = 0; j < 5; j++ )
    {
      if( macro_xs_vector[j] > max )
      {
        max = macro_xs_vector[j];
        max_idx = j;
      }
    }
    local_verification[omp_tid] += max_idx+1;

    uint64_t n_forward = 0;
    for( int j = 0; j < 5; j++ )
      if( macro_xs_vector[j] > 1.0 )
        n_forward++;
    if( n_forward > 0 )
      seed = fast_forward_LCG(seed, n_forward);

    p_energy = LCG_random_double(&seed);
    mat      = pick_mat(&seed);

    // reset the macro_xs_vector for the next iteration
    for(int j = 0; j < 5; j++ )
      macro_xs_vector[j] = 0.0;
  } 
}

void f_calculate_macro_xs( double p_energy, int mat, long n_isotopes,
                         long n_gridpoints, int * __restrict__ num_nucs,
                         double * __restrict__ concs,
                         double * __restrict__ egrid, int * __restrict__ index_data,
                         NuclideGridPoint * __restrict__ nuclide_grids,
                         int * __restrict__ mats,
                         double * __restrict__ macro_xs_vector, int grid_type, int hash_bins, 
                         int max_num_nucs, struct state* s){

  long idx = -1;                        
  int j = 0;


  if (s->j != -1){  // resuming from a page fault
    idx = s->idx;
    j = s->j; // loop variable in calculate_micro_xs
    s->j = -1; // reset j
    s->idx = -1; // reset idx
  }else{  // not resuming from a page fault
    idx = grid_search( n_isotopes * n_gridpoints, p_energy, egrid);
  }
  
  
  for( ; j < num_nucs[mat]; j++ )
  {
    double xs_vector[5];
    int p_nuc = mats[mat*max_num_nucs + j];
    double conc = concs[mat*max_num_nucs + j];
    
    r_calculate_micro_xs( p_energy, p_nuc, n_isotopes,
		                    n_gridpoints, egrid, index_data,
		                    nuclide_grids, idx, xs_vector);
    for( int k = 0; k < 5; k++ )
			macro_xs_vector[k] += xs_vector[k] * conc;
  }
}

void r_calculate_macro_xs( double p_energy, int mat, long n_isotopes,
                         long n_gridpoints, int * __restrict__ num_nucs,
                         double * __restrict__ concs,
                         double * __restrict__ egrid, int * __restrict__ index_data,
                         NuclideGridPoint * __restrict__ nuclide_grids,
                         int * __restrict__ mats,
                         double * __restrict__ macro_xs_vector, int grid_type, int hash_bins, 
                         int max_num_nucs, struct state* s, bool* bf, bool* first_iteration){

  long idx = -1;                        
  int j = 0;


  if (s->j != -1){  // resuming from a page fault
    idx = s->idx;
    j = s->j; // loop variable in calculate_micro_xs
    s->j = -1; // reset j
    s->idx = -1; // reset idx
  }else{  // not resuming from a page fault
    idx = grid_search( n_isotopes * n_gridpoints, p_energy, egrid);
  }
  int status_idx = s->status_idx;
  
  for( ; j < num_nucs[mat]; j++ )
  {
    double xs_vector[5];
    int p_nuc = mats[mat*max_num_nucs + j];
    double conc = concs[mat*max_num_nucs + j];
    if (!(*first_iteration)){
      long faulty_idx = idx * n_isotopes + p_nuc;
      int* faulty_address = &index_data[faulty_idx];
      // volatile NuclideGridPoint * low;
      TRY{
        // if(index_data[idx * n_isotopes + p_nuc] == n_gridpoints-1){ // simulate a page fault
        //   low =&nuclide_grids[p_nuc*n_gridpoints + index_data[idx * n_isotopes + p_nuc]];
        //   faulty_data += low->total_xs;
        // }
        dummy_faulty_data = *faulty_address; // may cause a page fault here too
      }CATCH{
        *bf = true;
        s->faulty_address = faulty_address;
        s->j = j;
        s->idx = idx;
        for (int k=0; k<5; k++)
          s->macro_xs_vector[k] = macro_xs_vector[k];
        return; // return immediately, calculate_micro_xs will be reexecuted again from the begining
      }
    }else{
      *first_iteration = false;
    }
		
    r_calculate_micro_xs( p_energy, p_nuc, n_isotopes,
		                    n_gridpoints, egrid, index_data,
		                    nuclide_grids, idx, xs_vector);
    for( int k = 0; k < 5; k++ )
			macro_xs_vector[k] += xs_vector[k] * conc;
  }
}

void r_calculate_micro_xs(double p_energy, int nuc, long n_isotopes,
                           long n_gridpoints,
                           double * __restrict__ egrid, int * __restrict__ index_data,
                           NuclideGridPoint * __restrict__ nuclide_grids,
                           long idx, double * __restrict__ xs_vector){
  // Variables
	double f;
	NuclideGridPoint * low, * high;

	// If using only the nuclide grid, we must perform a binary search
	// to find the energy location in this particular nuclide's grid.
	
		// pull ptr from energy grid and check to ensure that
		// we're not reading off the end of the nuclide's grid
  if( index_data[idx * n_isotopes + nuc] == n_gridpoints - 1 )
    low = &nuclide_grids[nuc*n_gridpoints + index_data[idx * n_isotopes + nuc] - 1];
  else
    low = &nuclide_grids[nuc*n_gridpoints + index_data[idx * n_isotopes + nuc]];
	
	high = low + 1;
	
	// calculate the re-useable interpolation factor
	f = (high->energy - p_energy) / (high->energy - low->energy);

	// Total XS
	xs_vector[0] = high->total_xs - f * (high->total_xs - low->total_xs);
	
	// Elastic XS
	xs_vector[1] = high->elastic_xs - f * (high->elastic_xs - low->elastic_xs);
	
	// Absorbtion XS
	xs_vector[2] = high->absorbtion_xs - f * (high->absorbtion_xs - low->absorbtion_xs);
	
	// Fission XS
	xs_vector[3] = high->fission_xs - f * (high->fission_xs - low->fission_xs);
	
	// Nu Fission XS
	xs_vector[4] = high->nu_fission_xs - f * (high->nu_fission_xs - low->nu_fission_xs);
}