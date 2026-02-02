/* ----------------------------------------------------------------------
   gups = algorithm for the HPCC RandomAccess (GUPS) benchmark
          single-threaded version without MPI

   Modified from original by Steve Plimpton, sjplimp@sandia.gov, Sandia National Laboratories
   www.cs.sandia.gov/~sjplimp
   Copyright (2006) Sandia Corporation
------------------------------------------------------------------------- */

/* random update GUPS code, single-threaded version
   compile with -DCHECK to check if table updates happen correctly */

#include "stdio.h"
#include "stdlib.h"
#include "sys/time.h"

#include "profiling_utils.h"

#define MAX(a,b) ((a) > (b) ? (a) : (b))

/* machine defs
   compile with -DLONG64 if a "long" is 64 bits
   else compile with no setting if "long long" is 64 bit */

#ifdef LONG64
#define POLY 0x0000000000000007UL
#define PERIOD 1317624576693539401L
#define ZERO64B 0L
typedef long s64Int;
typedef unsigned long u64Int;
#else
#define POLY 0x0000000000000007ULL
#define PERIOD 1317624576693539401LL
#define ZERO64B 0LL
typedef long long s64Int;
typedef unsigned long long u64Int;
#endif

u64Int HPCC_starts(s64Int n);
double get_time();

int main(int narg, char **arg)
{
  initialize_perf_measurements();
  int i, iterate, niterate;
  int nlocal, nlocalm1, logtable, index;
  int chunk;
  double t0, Gups;
  u64Int *table;
  u64Int ran, datum, nglobal, nupdates;

  /* command line args = N M chunk
     N = length of global table is 2^N
     M = # of update sets
     chunk = # of updates in one set */

  if (narg != 4) {
    printf("Syntax: gups N M chunk\n");
    exit(1);
  }

  logtable = atoi(arg[1]);  // N
  niterate = atoi(arg[2]);  // M
  chunk = atoi(arg[3]);     // chunk

  /* nglobal = entire table
     nlocal = size of table (same as nglobal for single-threaded)
     nlocalm1 = local size - 1 (for index computation) */

  nglobal = ((u64Int) 1) << logtable;
  nlocal = nglobal;
  nlocalm1 = nlocal - 1;

  /* allocate local memory */

  table = (u64Int *) malloc(nlocal*sizeof(u64Int));

  if (!table) {
    printf("Table allocation failed\n");
    exit(1);
  }

  /* initialize global array
     global array starts with table[i] = i */

  for (i = 0; i < nlocal; i++) table[i] = i;

  /* start random # at beginning of stream */

  nupdates = (u64Int) chunk * niterate;
  ran = HPCC_starts(0);

  /* loop:
       generate chunk random values
       use values to update local table */

  printf("Starting single-threaded GUPS benchmark...\n");
  printf("Table size: %lld\n", nglobal);
  printf("Number of updates: %lld\n", nupdates);

  t0 = get_time();
  start_disk_stats("disk.stats");
  start_taskstats();                    
  snapshot_proc_pid(BEGIN);
  snapshot_proc_stat(BEGIN);
  start_counters(&perf_ctrs);
  trace_marker("BenchmarkKernel_Start");
  start_time_stats();
  // ompt_mark_roi_start();
  // benchmarking region start
  for (iterate = 0; iterate < niterate; iterate++) {
    for (i = 0; i < chunk; i++) {
      ran = (ran << 1) ^ ((s64Int) ran < ZERO64B ? POLY : ZERO64B);
      datum = ran;
      index = datum & nlocalm1;
      table[index] ^= datum;
    }
  }
  // benchmarking region end
  // ompt_mark_roi_end();
  stop_time_stats();
  trace_marker("BenchmarkKernel_End");
  stop_counters(&perf_ctrs, &user_time, &kernel_time ,&user_instructions, &kernel_instructions);
  snapshot_proc_stat(END);
  snapshot_proc_pid(END);
  stop_taskstats();
  stop_disk_stats();
  cleanup_counters(&perf_ctrs);
  measure_time_stats();
  t0 = get_time() - t0;

  /* calculate GUPS */
  Gups = nupdates / t0 / 1.0e9;

  printf("Update time (secs): %9.3f\n", t0);
  printf("Gups: %9.6f\n", Gups);

  /* clean up */
  free(table);
  
  return 0;
}

/* start random number generator at Nth step of stream
   routine provided by HPCC */

u64Int HPCC_starts(s64Int n)
{
  int i, j;
  u64Int m2[64];
  u64Int temp, ran;

  while (n < 0) n += PERIOD;
  while (n > PERIOD) n -= PERIOD;
  if (n == 0) return 0x1;

  temp = 0x1;
  for (i=0; i<64; i++) {
    m2[i] = temp;
    temp = (temp << 1) ^ ((s64Int) temp < 0 ? POLY : 0);
    temp = (temp << 1) ^ ((s64Int) temp < 0 ? POLY : 0);
  }

  for (i=62; i>=0; i--)
    if ((n >> i) & 1)
      break;

  ran = 0x2;
  while (i > 0) {
    temp = 0;
    for (j=0; j<64; j++)
      if ((ran >> j) & 1)
        temp ^= m2[j];
    ran = temp;
    i -= 1;
    if ((n >> i) & 1)
      ran = (ran << 1) ^ ((s64Int) ran < 0 ? POLY : 0);
  }

  return ran;
}

/* get current time in seconds */
double get_time()
{
  struct timeval tv;
  gettimeofday(&tv, NULL);
  return tv.tv_sec + tv.tv_usec / 1000000.0;
}