#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>
#include "u_benchmark.h"

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

  long long sum = 0;
  volatile char dummy;
  
  for (uint64_t i = 0; i < NUM_PAGES; i++) {
    uint64_t offset = page_sequence[i];
    volatile char* address = &memory[offset];
    dummy = *address; // trouble maker - triggers page fault exception without handling
    sum += dummy;
  }

  printf("Sum of accessed bytes: %lld\n", sum);

  free(page_sequence);
  free(memory);

  printf("Random access complete\n");
  return 0;
}
