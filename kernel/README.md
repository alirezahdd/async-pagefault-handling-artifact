# Custom Kernel Installation

This directory contains the installation script and patch file for the custom Linux kernel 6.7.2 with asynchronous page fault handling support.

## Contents

- **`setup_kernel.sh`**: Automated installation script
- **`kernel-modifications.patch`**: Patch file with custom kernel modifications

## Quick Install

```bash
sudo ./setup_kernel.sh
sudo reboot
```

## What the Script Does

1. Downloads Linux kernel 6.7.2 source from kernel.org
2. Extracts source to `../linux-6.7.2-modified-pf-handler`
3. Applies custom modifications from the patch file
4. Compiles and installs the kernel
5. Installs kernel modules and headers to `/usr/include`
6. Updates GRUB bootloader

**Time**: 30-60 minutes depending on system

**After reboot**, verify installation:
```bash
uname -r  # Should show: 6.7.2
ls /usr/include/linux/taskstats.h  # Should exist
```

## Requirements

- Ubuntu/Debian-based system
- Root privileges
- ~30 GB free disk space
- Internet connection for downloading kernel source
