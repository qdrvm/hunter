#!/bin/bash -e

LLVM_PROJECT_LIBS="
  bolt
  clang-tools-extra
  clang
  compiler-rt
  cross-project-tests
  flang
  libc
  libclc
  libcxx
  libcxxabi
  libunwind
  lld
  lldb
  llvm-libgcc
  llvm
  mlir
  openmp
  polly
  pstl
  runtimes
"

for library in ${LLVM_PROJECT_LIBS};
do
  LIBRARY_UPPER=`echo ${library} | tr '[:lower:]' '[:upper:]'`
  echo "${library} -- ${LIBRARY_UPPER}"

  mkdir -p ${library}
  cp hunter.cmake.in ${library}/hunter.cmake
  sed -i.back "s,@llvm_project_component@,${library}," ${library}/hunter.cmake
  sed -i.back "s,@LLVM_PROJECT_COMPONENT@,${LIBRARY_UPPER}," ${library}/hunter.cmake
done
