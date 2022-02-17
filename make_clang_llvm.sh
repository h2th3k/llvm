#!/bin/bash
#this script is to build llvm and clang for aarch64 on x86
#script src:https://github.com/stevens-s3lab/asan-stm/blob/main/llvm_build.md

cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../install \
	-DLLVM_TARGETS_TO_BUILD="AArch64" -DLLVM_ENABLE_PROJECTS="clang" \
	-DLLVM_DEFAULT_TARGET_TRIPLE=aarch64-linux-gnu ../llvm
