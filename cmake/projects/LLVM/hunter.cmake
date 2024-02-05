# Copyright (c) 2014-2017, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_configuration_types)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_report_broken_package)
include(hunter_source_subdir)

hunter_add_version(
    PACKAGE_NAME    
    LLVM
    VERSION 
    "17.0.6"
    URL
    "https://github.com/llvm/llvm-project/archive/llvmorg-17.0.6.tar.gz"
    SHA1
    54b1248c4523edfbb5165249ff570bf5ab1d1daa
)

hunter_add_version(
    PACKAGE_NAME
    LLVM
    VERSION
    "16.0.1"
    URL
    "https://github.com/llvm/llvm-project/archive/llvmorg-16.0.1.tar.gz"
    SHA1
    6e07606c50c504c7d0da387879e7db893b65381d
)

hunter_add_version(
    PACKAGE_NAME LLVM
    VERSION      12.0.1-p4
    URL  https://github.com/qdrvm/kagome-llvm/archive/refs/tags/v12.0.1-p4.tar.gz
    SHA1 3c4c5700710fc0e33d3548fce6041ff85f06b960
)

hunter_add_version(
    PACKAGE_NAME LLVM
    VERSION      12.0.1-p3
    URL  https://github.com/qdrvm/kagome-llvm/archive/v12.0.1-p3.tar.gz
    SHA1 486730f487c46f84e70c1e3408c3f919f30e7ece
)

hunter_add_version(
    PACKAGE_NAME LLVM
    VERSION      12.0.1-p3
    URL  https://github.com/qdrvm/kagome-llvm/archive/v12.0.1-p2.tar.gz
    SHA1 10239d9e12bc924e01237655b4cd84c50e0d8a64
)

hunter_add_version(
    PACKAGE_NAME LLVM
    VERSION      12.0.1-p1
    URL  https://github.com/qdrvm/kagome-llvm/archive/v12.0.1-p1.tar.gz
    SHA1 5c90f60281f73c9a4f8d8927c541e39ee43a04fc
)

hunter_add_version(
    PACKAGE_NAME LLVM
    VERSION      6.0.1-p0
    URL  https://github.com/hunter-packages/llvm/archive/v6.0.1-p0.tar.gz
    SHA1 0942eedb9f349f3de7c483600de026192cc9e3ee
)

if(HUNTER_LLVM_VERSION VERSION_GREATER 15.0.1)
    hunter_source_subdir(LLVM SOURCE_SUBDIR llvm)
endif()

hunter_cmake_args(
  LLVM
  CMAKE_ARGS
    LLVM_ENABLE_ZLIB=OFF
    LLVM_INCLUDE_EXAMPLES=OFF
    LLVM_INCLUDE_TESTS=OFF
    LLVM_INCLUDE_DOCS=OFF
)

hunter_configuration_types(LLVM CONFIGURATION_TYPES Release)
hunter_pick_scheme(DEFAULT url_sha1_cmake)

if(MSVC_IDE AND HUNTER_LLVM_VERSION VERSION_LESS 4.0.1)
  hunter_report_broken_package(
      "LLVM build broken on Visual Studio, see:"
      "http://llvm.1065342.n5.nabble.com/Install-Problem-of-Compiler-rt-with-Visual-Studio-Express-2013-for-Windows-Desktop-td66575.html"
      " (use MINGW or NMake generators)"
  )
endif()

hunter_cacheable(LLVM)
hunter_download(PACKAGE_NAME LLVM)
