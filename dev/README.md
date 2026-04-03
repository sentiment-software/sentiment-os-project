# Development Environment
## Toolchain
- `x86_64-elf` cross-compiler toolchain with gcc, gdb, ld
- `make` to build
- `nasm` and `ndisasm` for Assembly
- `qemu` for emulated testing

## Install the toolchain
1. `cd` into the `dev` directory
2. Run `./install-toolchain.sh`
3. Add the toolchain binaries to your PATH in your preferred profile.<br>
   For example:<br>
  `echo "export PATH=~/sentiment-os-project/dev/bin:$PATH" >> ~/.zshrc;source ~/.zshrc`