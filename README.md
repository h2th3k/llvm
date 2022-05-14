# llvm build 
cross compilation and build script for llvm on aarch64 and x64 platform, this repository is for backup the build script.

## script1:make_clang_llvm.sh
This script is to build llvm and clang for aarch64 on x86

## script2:make_compiler_rt.sh
This script is to build compiler-rt for aarch64

## script3:make_llvm_x86.sh
This script is to make llvm, clang and compiler-rt for x86 on athena.

# Build LLVM 12.0.1 On MAC M1 Montery Using CMake
```
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../install \
-DLLVM_TARGETS_TO_BUILD="arm64" -DLLVM_ENABLE_PROJECTS="clang" \
-DLLVM_ENABLE_RUNTIMES="compiler-rt" -DDEFAULT_SYSROOT="$(xcrun --show-sdk-path)" \
-DLLVM_DEFAULT_TARGET_TRIPLE=arm64-apple-darwin21.4.0 ../llvm
```
