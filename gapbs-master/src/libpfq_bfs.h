#ifndef LIBPFQ_BFS_H_
#define LIBPFQ_BFS_H_

#include <omp.h>
#include <stddef.h>

#include <iostream>
#include <vector>

#include "benchmark.h"
#include "bitmap.h"
#include "builder.h"
#include "command_line.h"
#include "graph.h"
#include "platform_atomics.h"
#include "pvector.h"
#include "sliding_queue.h"
#include "timer.h"
#include "util.h"

#define PAGE_SIZE 4096
#define MAX_IOVEC_SIZE 1024 // exceeding this value (1024) will cause problems with process_madvise() calls since they don't support more than 1024 requests
#define NR_THREADS 256
#define CHUNK_SIZE 131072       // Chunk size for parallel for loop
#define MIN(a, b) ((a) < (b) ? (a) : (b))

void* ptr = NULL; // will hold the starting address of pagefault status array
volatile int* pf_status_array; 
long unsigned int pagefault_queue_size = 8; // number of pagefaults to be stored in the queue
int batching_mode = P_MADVISE;
int status_idx = 0;             // Index to access the page fault status array 
bool pre_faulted = false;       // Flag to check if the region is prefaulted. Required by vertex centric graphs
const Graph* graph_pointer = NULL;  // Global pointer to the graph. Required by the pagein_queue function

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
int64_t local_scout_count[NR_THREADS] = {0};  // thread-local reduction variable 
pvector<NodeID>* parent_pointer = NULL;       // making the parent a global variable

/**
 * @brief State structure to hold the information required to resume the iteration
 * @param pivot_node The current node being processed
 * @param neighborhood_itr The iterator pointing to the faulty address
 * add other fields as required for resuming the iteration
 */
struct state{
  // required fields
  NodeID pivot_node;        // required for the calculating end of the neighborhood
  NodeID* neighborhood_itr; // causes page fault
  // add your custom fields here
  QueueBuffer<NodeID> *lqueue;
};

inline void resume_iteration(state &s);

inline void resume_iteration(state &s){
  const Graph &g = *(graph_pointer);
  pvector<NodeID> &parent = *(parent_pointer);
  int tid = omp_get_thread_num();
  NodeID u = s.pivot_node;
  NodeID* v_iterator = s.neighborhood_itr;
  QueueBuffer<NodeID> &lqueue = *(s.lqueue);
  for (NodeID* v_itr=v_iterator; v_itr<g.out_neigh(u).end(); ++v_itr){
    NodeID v = *v_itr;
    NodeID curr_val = parent[v];
    if (curr_val < 0) {
      if (compare_and_swap(parent[v], curr_val, u)) {
        lqueue.push_back(v);
        local_scout_count[tid] += -curr_val;
      }
    }
  }
}

inline void readahead(NodeID u, NodeID* v_itr, bool* _pre_faulted, pvector<NodeID> *p){
  if(!*(_pre_faulted)){
    struct iovec regions[MAX_IOVEC_SIZE];
    int index = 0;
    NodeID* address_begin = v_itr;
    NodeID last_vertex_in_chunk = MIN(u+((CHUNK_SIZE-(u%CHUNK_SIZE))-1),(*graph_pointer).num_nodes());
    void* last_page_end = (void*) 0;
    pvector<NodeID> &parent = *p;

    for (NodeID ra_u = u; ra_u < last_vertex_in_chunk; ra_u++){
      if (parent[ra_u] >= 0) continue;
      address_begin = (*graph_pointer).in_neigh(ra_u).begin();
      if(ra_u == u)   // only for the first iteration
        address_begin = v_itr;
      void* page_begin = (void*) address_begin;
      page_begin = (void *)(((long long)page_begin >> 12) << 12);

      if(page_begin<=last_page_end)
        continue;

      void* page_end = (void *)((((long long)page_begin >> 12) +8)<< 12); //readahead 8 pages
      size_t advise_length = (size_t)page_end - (size_t)page_begin;
      regions[index].iov_base = page_begin;
      regions[index].iov_len = advise_length;
      index++;
      if(index >= MAX_IOVEC_SIZE) {
        process_madvise(pidfd, regions, index, MADV_WILLNEED, 0);
        index = 0;
      }
      last_page_end = page_end;
    }
    if(index)
      process_madvise(pidfd, regions, index, MADV_WILLNEED, 0);    // prefaulting for the entire chunk of workload (1024 nodes)
    *(_pre_faulted) = true;
  }
  return;
}

/* ===========================================================================
 * VAR SETUP MACROS REQUIRED BY TRY-CATCH
 * ========================================================================== */
// Setting up variables outside of the parallel region

bool first_itr = true;          // Flag to check if it is the first iteration of the loop
#define SETUP_GLOBAL_VARS() \
  first_itr = true; 

int dummy_idx = 0;              // Index to access the dummy array
int omp_tid = 0;                // OpenMP thread id 
// Setting up variables inside the parallel region
#define SETUP_TLOCAL_VARS() \
  if(first_itr){           \
    status_idx = (syscall(SYS_gettid) % 1024) * 32; \
    omp_tid = omp_get_thread_num(); \
    dummy_idx = omp_get_thread_num()*32; \
    first_itr = false; \
    pf_status_array[status_idx]=0; \
  }

#define INIT(u, chunk_size)                                       \
  if ((u) % (chunk_size) == 0) {                                  \
      status_idx = (syscall(SYS_gettid) % 1024) * 32;             \
      pre_faulted = false;                                        \
      pf_status_array[status_idx]=0;                              \
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

#define FLUSH_QUEUES(resume_func) clear_queues(resume_func)
#define FLUSH_QUEUE(resume_func) clear_queue(resume_func)

// Define clauses for OpenMP parallel regions where TRY-CATCH is used
#define PFH_CLAUSES firstprivate(status_idx,first_itr,dummy_idx,omp_tid,pre_faulted)

vector<state> curr_queue[NR_THREADS];
vector<state> shipped_queue[NR_THREADS];
vector<state> ready_queue[NR_THREADS];

inline void pagein_queue(vector<state> &queue){
  const Graph &g = *(graph_pointer);

  struct iovec regions[MAX_IOVEC_SIZE];
  int index = 0;
  for (auto q_it = queue.begin(); q_it != queue.end(); ++q_it)
  {
    struct state s = *q_it;
    NodeID pivot = s.pivot_node;
    NodeID *v_neighborhood_end = g.out_neigh(pivot).end();
    NodeID *faulty_address = s.neighborhood_itr;
    void *page = (void *)faulty_address;
    page = (void *)(((long long)page >> 12) << 12);

    size_t start = (size_t)page;
    size_t end = (size_t)v_neighborhood_end;
    size_t advise_length = end - start;

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
}

inline void resume_queue(vector<state> &queue, void (*func)(state&)){
  for (auto rq_it = queue.begin(); rq_it != queue.end(); ++rq_it)
  {
    func(*rq_it);
  }
}

void clear_queues(void (*func)(state&))
{
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

void clear_queue(void (*func)(state&))
{
  int tid = omp_get_thread_num();
  pagein_queue(curr_queue[tid]);
  resume_queue(shipped_queue[tid],func);
  resume_queue(curr_queue[tid],func);
  curr_queue[tid].clear();
  shipped_queue[tid].clear();
}

void process_pagefaults(void (*func)(state&))
{
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
    // size_t ints_per_page = 4096 / sizeof(int);
    size_t num_ints = num_bytes / sizeof(int);
    for (size_t i = 0; i < num_ints; i += 32) {
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


#endif  // LIBPFQ_BFS_H_
