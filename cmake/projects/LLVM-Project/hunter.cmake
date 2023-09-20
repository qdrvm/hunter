# Copyright (c) 2013, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_check_toolchain_definition)

hunter_add_version(
    PACKAGE_NAME LLVM-Project
    VERSION      17.0.1
    URL          https://github.com/llvm/llvm-project/archive/refs/tags/llvmorg-17.0.1.tar.gz
    SHA1         f7ad189f8833032ed572d5ca7fb315a9e561322e
)

hunter_cmake_args(
    LLVM-Project
	CMAKE_ARGS 
		CMAKE_POSITION_INDEPENDENT_CODE=ON
)

hunter_pick_scheme(DEFAULT url_sha1_llvm_project)
hunter_cacheable(LLVM-Project)
hunter_download(PACKAGE_NAME LLVM-Project PACKAGE_INTERNAL_DEPS_ID "48")

