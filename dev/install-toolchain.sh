# ====================
# The script will download, build and install the development toolchain.
# This whole process might take several minutes.
# ====================

# Install and upgrade packages
sudo apt update
sudo apt install git make nasm unzip qemu-system-x86 -y
sudo apt upgrade git make nasm unzip qemu-system-x86 -y

# Download a pre-built (untested) toolchain - this is ~840MB
wget https://github.com/lordmilko/i686-elf-tools/releases/download/15.2.0/x86_64-elf-tools-linux.zip
unzip x86_64-elf-tools-linux.zip
rm -f x86_64-elf-tools-linux.zip
