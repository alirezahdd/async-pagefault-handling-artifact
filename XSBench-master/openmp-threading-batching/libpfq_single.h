#ifndef LIBPFQ_SINGLE_H_
#define LIBPFQ_SINGLE_H_

#include <omp.h>
#include <stddef.h>

#include <iostream>
#include <vector>
using namespace std;

#define P_MADVISE 1
#define MADVISE 2

#define PAGE_SIZE 4096
#define MAX_IOVEC_SIZE 1024 // exceeding this value (1024) will cause problems with process_madvise() calls since they don't support more than 1024 requests
// #define NR_THREADS 256
#define CHUNK_SIZE 131072       // Chunk size for parallel for loop
#define MIN(a, b) ((a) < (b) ? (a) : (b))

void* ptr = NULL; // will hold the starting address of pagefault status array
volatile int* pf_status_array; 
long unsigned int pagefault_queue_size = 8; // number of pagefaults to be stored in the queue
int batching_mode = P_MADVISE;
int status_idx = 0;             // Index to access the page fault status array 
bool pre_faulted = false;       // Flag to check if the region is prefaulted. Required by vertex centric graphs
// const Graph* graph_pointer = NULL;  // Global pointer to the graph. Required by the pagein_queue function

/* ===========================================================================
 * PROCESS-MADVISE WRAPPER FUNCTIONS
 * ========================================================================== */
int pidfd;  // this is necessary for process_madvise
#define SYS_process_madvise 440
// #define SYS_pidfd_open 434   //it was defined somewhere else in the header files
int process_madvise(int pidfd, const void *addr, size_t length, int advice, unsigned long flags) {
    return syscall(SYS_process_madvise, pidfd, addr, length, advice, flags);
}
int pidfd_open(pid_t pid, unsigned int flags) {
    return syscall(SYS_pidfd_open, pid, flags);
}

/* ===========================================================================
 * APP-SPECIFIC SECTION
 * ========================================================================== */
#define BATCHING_THRESHOLD 16384

/* Global variables to be accessed by the resume functions */
u64Int *global_table = NULL; // the main table to be updated
/**
 * @brief State structure to hold the information required to resume the iteration
 * @param table_element the table element that caused the page fault
 * add other fields as required for resuming the iteration
 */
struct state{
  // required fields
  u64Int* table_element; // causes page fault
  // add your custom fields here
  u64Int datum;
  int index;
};

inline void resume_iteration(state &s);

inline void resume_iteration(state &s){
  // add your custom resume code here
  u64Int datum = s.datum;
  u64Int index = s.index;
  global_table[index] ^= datum;
}


/* ===========================================================================
 * VAR SETUP MACROS REQUIRED BY TRY-CATCH
 * ========================================================================== */
// Setting up variables outside of the parallel region

bool first_itr = true;          // Flag to check if it is the first iteration of the loop
#define SETUP_GLOBAL_VARS() \
  first_itr = true; 

// Setting up variables inside the parallel region
#define SETUP_TLOCAL_VARS() \
  if(first_itr){           \
    status_idx = (syscall(SYS_gettid) % 1024) * 32; \
    first_itr = false; \
  }

#define INIT(iteration)                                           \
  if ((iteration) == 0) {                                         \
      status_idx = (syscall(SYS_gettid) % 1024) * 32;             \
      pf_status_array[status_idx]=0;                              \
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
  curr_queue.push_back(s);                         \
  if (curr_queue.size() == pagefault_queue_size)   \
  {                                                         \
    process_pagefaults(resume_func);                        \
  }                                                         


#define FLUSH_QUEUE(resume_func) clear_queue(resume_func)

vector<state> curr_queue;
vector<state> shipped_queue;
vector<state> ready_queue;

inline void pagein_queue(vector<state> &queue){
  struct iovec regions[MAX_IOVEC_SIZE];
  int index = 0;
  for (auto q_it = queue.begin(); q_it != queue.end(); ++q_it)
  {
    struct state s = *q_it;
    u64Int* faulty_address= s.table_element;
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

inline void rotate_queues(){
  ready_queue.swap(shipped_queue);
  shipped_queue.swap(curr_queue);
}

inline void resume_queue(vector<state> &queue, void (*func)(state&)){
  for (auto rq_it = queue.begin(); rq_it != queue.end(); ++rq_it)
  {
    func(*rq_it);
  }
}

void clear_queue(void (*func)(state&))
{
  pagein_queue(curr_queue);
  resume_queue(shipped_queue,func);
  resume_queue(curr_queue,func);
  curr_queue.clear();
  shipped_queue.clear();
}

void process_pagefaults(void (*func)(state&))
{
  pagein_queue(curr_queue);  
  rotate_queues();
  // ready_queue size should be checked since at the begining there's nothing in it to resume
  if (ready_queue.size() != pagefault_queue_size)
    return;
  resume_queue(ready_queue, func);
  ready_queue.clear();
}

/* ===========================================================================
 * KERNEL-SPECIFIC SECTION
 * ========================================================================== */

unsigned long *ips;
unsigned long *ret_ips;

inline void touch_ips(unsigned long *ip, unsigned long *ret_ip, int size){
  for(int i = 0; i < size; i++){
    (void)ip[i];
    (void)ret_ip[i];
  }
}

// Touch pages to ensure they are in memory
inline void touch_pages(volatile int* address, size_t num_bytes) {
    size_t ints_per_page = 4096 / sizeof(int);
    size_t num_ints = num_bytes / sizeof(int);
    for (size_t i = 0; i < num_ints; i += ints_per_page) {
        address[i] = 0;
    }
}

// Allocates pf_status_array
inline void allocate_pf_status_array(){
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
inline void prepare_pmadvise(){
  if(batching_mode == P_MADVISE){
    pid_t pid = getpid();
    pidfd = syscall(SYS_pidfd_open, pid, 0); // this is necessary for process_madvise
  }
}

// syscall to register the page fault status array with the kernel
inline void register_pf_status_array(){
  syscall(550,pf_status_array,32*1024);
}

// syscall to register the special PCs (ips) and their return PCs (ret_ips) with the kernel
inline void register_ips_and_retips(unsigned long *ips, unsigned long *ret_ips, int size){
  syscall(548, ips, ret_ips, size);
}

// syscall to unregister the page fault status array, as well as ips and ret_ips, and free the allocated memory
inline void unregister_and_free_arrays(){
  syscall(548, NULL, NULL, 0);
  syscall(550, NULL, 0);
  munlock(ptr, 32*1024*sizeof(int));
  munmap(ptr, 32*1024*sizeof(int));
}


#endif  // LIBPFQ_SINGLE_H_
