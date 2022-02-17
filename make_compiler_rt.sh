#!/bin/bash
#this script is to build compiler-rt for aarch64
#component like llvm-config and clang is from the ../build/bin folder built for clang and llvm
#if not specify the install location, after cmake file is produced exec "make install" will put the compiler-rt binary into the current folder

cmake ../compiler-rt -DCMAKE_INSTALL_PREFIX=../install \
	-DLLVM_CONFIG_PATH=/home/shan/llvm-12.0.0-aarch64/llvm-12-aarch64-koss/llvm-project-llvmorg-12.0.0/build/bin/llvm-config \
       	-DCOMPILER_RT_DEFAULT_TARGET_TRIPLE=aarch64-linux-gnu -DCOMPILER_RT_BUILD_LIBFUZZER=OFF \
	-DCOMPILER_RT_INSTALL_PATH=../install -DCMAKE_SYSROOT=/home/shan/llvm-12.0.0-aarch64/dr-root \
	-DCMAKE_C_COMPILER=/home/shan/llvm-12.0.0-aarch64/llvm-12-aarch64-koss/llvm-project-llvmorg-12.0.0/build/bin/clang
