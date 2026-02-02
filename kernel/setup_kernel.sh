#!/bin/bash

set -e

KERNEL_VERSION="6.7.2"
KERNEL_URL="https://www.kernel.org/pub/linux/kernel/v6.x/linux-${KERNEL_VERSION}.tar.gz"
KERNEL_TAR="linux-${KERNEL_VERSION}.tar.gz"
KERNEL_EXTRACTED="linux-${KERNEL_VERSION}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
KERNEL_DIR="$SCRIPT_DIR/../linux-${KERNEL_VERSION}-modified-pf-handler"
PATCH_FILE="kernel-modifications.patch"

echo "Custom Kernel Installation Script"
echo "Linux Kernel ${KERNEL_VERSION}"
echo ""

if [[ $EUID -ne 0 ]]; then
   echo "ERROR: This script must be run as root" 
   echo "Please run: sudo $0"
   exit 1
fi

if [[ ! -f "$SCRIPT_DIR/$PATCH_FILE" ]]; then
    echo "ERROR: Patch file not found: $PATCH_FILE"
    exit 1
fi

echo "Installing required dependencies..."
apt-get update
apt-get install -y build-essential libncurses-dev bison flex libssl-dev \
    libelf-dev bc wget tar gzip cpio rsync kmod

if [[ -f "$KERNEL_TAR" ]]; then
    echo "Kernel tarball already exists, skipping download"
else
    echo "Downloading Linux kernel ${KERNEL_VERSION}..."
    wget -O "$KERNEL_TAR" "$KERNEL_URL"
fi

if [[ -d "$KERNEL_DIR" ]]; then
    echo "Removing old kernel directory..."
    rm -rf "$KERNEL_DIR"
fi

echo "Extracting kernel source..."
tar -xzf "$KERNEL_TAR"
mv "$KERNEL_EXTRACTED" "$KERNEL_DIR"

echo "Applying patch..."
cd "$KERNEL_DIR"
patch -p1 < "$SCRIPT_DIR/$PATCH_FILE"

if [[ ! -f ".config" ]]; then
    echo "Setting up kernel configuration..."
    if [[ -f "/boot/config-$(uname -r)" ]]; then
        cp "/boot/config-$(uname -r)" .config
        make olddefconfig
    else
        make defconfig
    fi
fi

echo "Compiling kernel (using $(nproc) cores)..."
make -j$(nproc)

echo "Installing kernel modules..."
make modules_install

echo "Installing kernel..."
make install

echo "Installing kernel headers to /usr..."
make headers_install INSTALL_HDR_PATH=/usr

echo "Updating GRUB..."
update-grub || echo "WARNING: GRUB update failed"

echo ""
echo "Installation complete."
echo "Reboot your system to use the new kernel."
echo "After reboot, verify with: uname -r"
