#ifndef LIBPFQ_H_
#define LIBPFQ_H_

#include <omp.h>
#include <stddef.h>

#include <iostream>
#include <vector>

#include <unistd.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <sys/uio.h>
#include <sys/mman.h>

// require for resume function
#include "XSbench_header.h"

using namespace std;

#define P_MADVISE 1
#define MADVISE 2

#define PAGE_SIZE 4096
#define MAX_IOVEC_SIZE 1024 // exceeding this value (1024) will cause problems with process_madvise() calls since they don't support more than 1024 requests
#define NR_THREADS 256
#define CHUNK_SIZE 131072       // Chunk size for parallel for loop
#define MIN(a, b) ((a) < (b) ? (a) : (b))

extern void* ptr; // will hold the starting address of pagefault status array
extern volatile int* pf_status_array; 
extern long unsigned int pagefault_queue_size; // number of pagefaults to be stored in the queue
extern int batching_mode;
extern int status_idx;             // Index to access the page fault status array 
extern bool pre_faulted;       // Flag to check if the region is prefaulted. Required by vertex centric graphs
extern bool break_flag[NR_THREADS];         // Flag to break from the loop when a page fault occurs.
/* ===========================================================================
 * PROCESS-MADVISE WRAPPER FUNCTIONS
 * ========================================================================== */
extern int pidfd;  // this is necessary for process_madvise
#define SYS_process_madvise 440
// #define SYS_pidfd_open 434   //it was defined somewhere else in the header files
inline int process_madvise(int pidfd, const void *addr, size_t length, int advice, unsigned long flags){
  return syscall(SYS_process_madvise, pidfd, addr, length, advice, flags);
}
inline int pidfd_open(pid_t pid, unsigned int flags){
  return syscall(SYS_pidfd_open, pid, flags);
}
/* ===========================================================================
 * APP-SPECIFIC SECTION
 * ========================================================================== */
/* Global variables to be accessed by the resume functions */
extern unsigned long long local_verification[NR_THREADS]; // reduction variable for verification

/* Used in Simulation.c and required by resume function. Their value does not change 
and is constant among all threads*/
extern int * num_nucs_global;
extern double * concs_global;
extern double * unionized_energy_array_global;
extern int * index_grid_global;
extern NuclideGridPoint * nuclide_grid_global;

extern Inputs* in_global;
extern SimulationData* SD_global;

extern volatile int dummy_faulty_data;

/**
 * @brief State structure to hold the information required to resume the iteration
 * @param faulty_address The address that caused the page fault
 */
struct state{
  // required fields
  int * faulty_address; // causes page fault
  // add your custom fields here
  double p_energy;
  int mat;
  int j; // loop variable in calculate_micro_xs
  int i; // loop variable in the inner loop of the main kernel
  int idx;
  double macro_xs_vector[5];
  uint64_t seed;

  int status_idx; // index to access pf_status_array
};

void r_calculate_micro_xs(double p_energy, int nuc, long n_isotopes,
                           long n_gridpoints,
                           double * __restrict__ egrid, int * __restrict__ index_data,
                           NuclideGridPoint * __restrict__ nuclide_grids,
                           long idx, double * __restrict__ xs_vector);

void f_calculate_macro_xs( double p_energy, int mat, long n_isotopes,
                         long n_gridpoints, int * __restrict__ num_nucs,
                         double * __restrict__ concs,
                         double * __restrict__ egrid, int * __restrict__ index_data,
                         NuclideGridPoint * __restrict__ nuclide_grids,
                         int * __restrict__ mats,
                         double * __restrict__ macro_xs_vector, int grid_type, int hash_bins, 
                         int max_num_nucs, struct state* s);  

void r_calculate_macro_xs( double p_energy, int mat, long n_isotopes,
                         long n_gridpoints, int * __restrict__ num_nucs,
                         double * __restrict__ concs,
                         double * __restrict__ egrid, int * __restrict__ index_data,
                         NuclideGridPoint * __restrict__ nuclide_grids,
                         int * __restrict__ mats,
                         double * __restrict__ macro_xs_vector, int grid_type, int hash_bins, 
                         int max_num_nucs, struct state* s, bool* bf, bool* first_iteration);

void resume_iteration(state &s);                         
void flush_iteration(state &s);


             
/* ===========================================================================
 * VAR SETUP MACROS REQUIRED BY TRY-CATCH
 * ========================================================================== */
// Setting up variables outside of the parallel region

extern bool first_itr;          // Flag to check if it is the first iteration of the loop
#define SETUP_GLOBAL_VARS() \
  first_itr = true; 

extern int omp_tid;                // OpenMP thread id 
// Setting up variables inside the parallel region
#define SETUP_TLOCAL_VARS() \
  if(first_itr){           \
    status_idx = (syscall(SYS_gettid) % 1024) * 32; \
    omp_tid = omp_get_thread_num(); \
    first_itr = false; \
  }

#define INIT(u, chunk_size)                                       \
  if ((u) % (chunk_size) == 0) {                                  \
      status_idx = (syscall(SYS_gettid) % 1024) * 32;             \
      pre_faulted = false;                                        \
  }
/* ===========================================================================
 * TRY-CATCH MACROS
 * ========================================================================== */
#define PAGE_FAULT -1

#define TRY int __error_code = 0; do

#define CATCH while(0);                       \
  asm volatile("" ::: "memory");              \
  if (pf_status_array[status_idx] == 1) {     \
    do {                                      \
      pf_status_array[status_idx] = 0;        \
      __error_code = (PAGE_FAULT); break;     \
    } while (0);                              \
  }                                           \
  asm volatile("" ::: "memory");              \
  if (__error_code)

/* ===========================================================================
 * QUEUEING MACROS
 * ========================================================================== */
#define ENQUEUE(s,resume_func)                              \
  curr_queue[omp_tid].push_back(s);                         \
  if (curr_queue[omp_tid].size() == pagefault_queue_size)   \
  {                                                         \
    process_pagefaults(resume_func);                        \
  }
  
#define ENQUEUE_R(s,resume_func)                            \
  curr_queue[omp_tid].push_back(s);                 
  
#define CHECK_QUEUE_SIZE(resume_func)                        \
  while (curr_queue[omp_tid].size() == pagefault_queue_size) \
  {                                                          \
    process_pagefaults(resume_func);                         \
  }


#define FLUSH_QUEUES(resume_func) clear_queues(resume_func)
#define FLUSH_QUEUE(resume_func) clear_queue(resume_func)

// Define clauses for OpenMP parallel regions where TRY-CATCH is used
#define PFH_CLAUSES firstprivate(status_idx,first_itr,omp_tid,pre_faulted)

extern vector<state> curr_queue[NR_THREADS];
extern vector<state> shipped_queue[NR_THREADS];
extern vector<state> ready_queue[NR_THREADS];

inline void pagein_queue(vector<state> &queue){
  struct iovec regions[MAX_IOVEC_SIZE];
  int index = 0;
  for (auto q_it = queue.begin(); q_it != queue.end(); ++q_it)
  {
    struct state s = *q_it;
    int *faulty_address = s.faulty_address;
    void *page = (void *)faulty_address;
    page = (void *)(((long long)page >> 12) << 12);
    // size_t start = (size_t)page;
    size_t advise_length = PAGE_SIZE;
    regions[index].iov_base = page;
    regions[index].iov_len = advise_length;
    index++;
    if(index >= MAX_IOVEC_SIZE){
      process_madvise(pidfd, regions, index, MADV_WILLNEED, 0);
      index = 0;
    }
  }
  if(index)
    process_madvise(pidfd, regions, index, MADV_WILLNEED, 0);  
}

inline void rotate_queues(int tid){
  ready_queue[tid].swap(shipped_queue[tid]);
  shipped_queue[tid].swap(curr_queue[tid]);
  curr_queue[tid].clear();
}

inline void resume_queue(vector<state> &queue, void (*func)(state&)){
  for (auto rq_it = queue.begin(); rq_it != queue.end(); ++rq_it)
  {
    func(*rq_it);
  }
}

// not inlined before
void clear_queues(void (*func)(state&));
// not inlined before
void clear_queue(void (*func)(state&));
// not inlined before
void process_pagefaults(void (*func)(state&));

/* ===========================================================================
 * KERNEL-SPECIFIC SECTION
 * ========================================================================== */
// extern unsigned long *ips;
// extern unsigned long *ret_ips;
void touch_ips(unsigned long *ip, unsigned long *ret_ip, int size);

// Touch pages to ensure they are in memory
void touch_pages(volatile int* address, size_t num_bytes);

// Allocates pf_status_array
void allocate_pf_status_array();

// Get file descriptor required for process_madvise and store it in pidfd
void prepare_pmadvise();

// syscall to register the page fault status array with the kernel
void register_pf_status_array();

// syscall to register the special PCs (ips) and their return PCs (ret_ips) with the kernel
void register_ips_and_retips(unsigned long *ips, unsigned long *ret_ips, int size);

// syscall to unregister the page fault status array, as well as ips and ret_ips, and free the allocated memory
void unregister_and_free_arrays();

// void touch_ips(unsigned long *ip, unsigned long *ret_ip, int size){
//   for(int i = 0; i < size; i++){
//     (void)ip[i];
//     (void)ret_ip[i];
//   }
// }

// // Touch pages to ensure they are in memory
// void touch_pages(volatile int* address, size_t num_bytes) {
//     size_t ints_per_page = 4096 / sizeof(int);
//     size_t num_ints = num_bytes / sizeof(int);
//     for (size_t i = 0; i < num_ints; i += ints_per_page) {
//         address[i] = 0;
//     }
// }

// // Allocates pf_status_array
// void allocate_pf_status_array(){
//   ptr = mmap(NULL, 32*1024*sizeof(int), PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS | MAP_POPULATE, -1, 0);
//   if (ptr == MAP_FAILED) {
//     printf("Failed to allocate memory using mmap\n");
//   }
//   if(mlock(ptr, 32*1024*sizeof(int))){
//     printf("Failed to lock pf_status_array\n");
//   }
//   pf_status_array = (volatile int*)ptr;
//   touch_pages(pf_status_array, 32*1024*sizeof(int));
// }

// // Get file descriptor required for process_madvise and store it in pidfd
// void prepare_pmadvise(){
//   if(batching_mode == P_MADVISE){
//     pid_t pid = getpid();
//     pidfd = syscall(SYS_pidfd_open, pid, 0); // this is necessary for process_madvise
//   }
// }

// // syscall to register the page fault status array with the kernel
// void register_pf_status_array(){
//   syscall(550,pf_status_array,32*1024);
// }

// // syscall to register the special PCs (ips) and their return PCs (ret_ips) with the kernel
// void register_ips_and_retips(unsigned long *ips, unsigned long *ret_ips, int size){
//   syscall(548, ips, ret_ips, size);
// }

// // syscall to unregister the page fault status array, as well as ips and ret_ips, and free the allocated memory
// void unregister_and_free_arrays(){
//   syscall(548, NULL, NULL, 0);
//   syscall(550, NULL, 0);
//   munlock(ptr, 32*1024*sizeof(int));
//   munmap(ptr, 32*1024*sizeof(int));
// }


//



#endif  // LIBPFQ_H_
