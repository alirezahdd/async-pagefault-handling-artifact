#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>
#include "u_benchmark.h"

#include "libpfq_single.h"

#define GB (1024ULL * 1024 * 1024)
#define MB (1024ULL * 1024)
#define SIZE (4 * MB)
#define PAGE_SIZE 4096
#define NUM_PAGES (SIZE / PAGE_SIZE)

int main(int argc, char *argv[]) {
  // Allocate 4MB (1000 pages)
  char *memory = (char *)malloc(SIZE);
  // initilize the array with pseudorandom data
  fill_memory_with_prng(memory, SIZE, 123456789u);
  printf("Memory allocated and initialized.\n");

  // Generate random page sequence (using same seed for reproducibility)
  uint64_t *page_sequence = (uint64_t *)malloc(NUM_PAGES * sizeof(uint64_t));
  // Use PRNG to generate random page order
  unsigned int prng_state = 123456789u;
  for (uint64_t i = 0; i < NUM_PAGES; i++) {
    prng_state = prng_state * 1664525u + 1013904223u;
    page_sequence[i] = (prng_state % NUM_PAGES) * PAGE_SIZE;
  }

  // preparing try-catch mechanism
  const int num_special_pcs = 1;
  prepare_try_catch_mechanism(num_special_pcs);
  ips[0] = 0x4016db;
  ret_ips[0] = 0x3;
  register_ips_and_retips(ips, ret_ips, num_special_pcs);

  // 
  long long sum = 0;
  volatile char dummy;
  
  for (uint64_t i = 0; i < NUM_PAGES; i++) {
    INIT(i);
    uint64_t offset = page_sequence[i];
    volatile char* address = &memory[offset];
    TRY{
      dummy = *address; // trouble maker - triggers page fault exception without handling
    } CATCH {
      state s = {address, &sum};
      ENQUEUE(s, resume_iteration);
      printf("Page fault at access to offset: %lu\n", offset);
      continue;
    }
    sum += dummy;
  }
  FLUSH_QUEUE(resume_iteration);

  printf("Sum of accessed bytes: %lld\n", sum);

  free(page_sequence);
  free(memory);
  unregister_and_free_arrays();

  printf("Random access complete\n");
  return 0;
}
