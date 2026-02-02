#ifndef U_BENCHMARK_H_
#define U_BENCHMARK_H_
#include <unistd.h>
#include <sched.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/resource.h>
#include <sys/time.h>
#include <sys/mman.h>
#include <sys/uio.h>
#include <sys/syscall.h>


void fill_memory_with_prng(char *memory, size_t size, uint32_t seed);

void print_stats(uint64_t* buffer, int nr_pf);

typedef uint64_t u64;
#define MAX_RANDOM_PCS 4

struct random_access_pcs {
	u64 pcs[MAX_RANDOM_PCS];
	int count;
};

inline void pass_rpcs(struct random_access_pcs* rpcs){
  int ret = syscall(557, rpcs);
  if(ret){
    printf("pass_rpcs syscall failed with return code %d\n", ret);
  }
}

inline void enable_pf_recording(){
  int ret = syscall(551);
  if(ret){
    printf("enable_pf_recording syscall failed with return code %d\n", ret);
  }
}

inline void disable_pf_recording(){
  int ret = syscall(552);
  if(ret){
    printf("disable_pf_recording syscall failed with return code %d\n", ret);
  }
}

inline int get_pf_records(uint64_t* buffer, int size){
  int ret = syscall(553, buffer, size);
  return ret;
}

#endif  // U_BENCHMARK_H_
