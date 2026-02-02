#!/bin/bash
sudo cgcreate -g memory:u_bench_group
mem_size=$1  # in MB
mem_limit_bytes=$((mem_size * 1024 * 1024))
for cmd in cgcreate cgset; do
  if ! command -v "$cmd" >/dev/null 2>&1; then
    echo "$cmd not found. Installing libcgroup-tools..."
    sudo apt-get update
    sudo apt-get install -y libcgroup-tools
    break
  fi
done

if [ ! -d /sys/fs/cgroup/memory ]; then
  sudo mkdir -p /sys/fs/cgroup/memory
  sudo mount -t cgroup -o memory memory /sys/fs/cgroup/memory
fi
if [ ! -d /sys/fs/cgroup/memory/u_bench_group ]; then
  sudo cgcreate -g memory:u_bench_group
fi
sudo cgset -r memory.limit_in_bytes="$mem_limit_bytes" u_bench_group