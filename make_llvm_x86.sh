#/bin/bash
#this script is to make llvm, clang and compiler-rt for x86 on athena
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../install \
-DLLVM_ENABLE_PROJECTS="clang;compiler-rt" -DLLVM_TARGETS_TO_BUILD=X86 -DLLVM_USE_LINKER=lld ../llvm
