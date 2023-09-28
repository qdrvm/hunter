# Copyright (c) 2016-2019, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cmake_args)

hunter_add_version(
    PACKAGE_NAME wavm
    VERSION      1.0.11
    URL  https://github.com/qdrvm/WAVM/archive/refs/tags/1.0.11.zip
    SHA1 2198b3e7c5ab49f57867f84bf6337efd025fd55e
)

hunter_add_version(
    PACKAGE_NAME wavm
    VERSION      1.0.12
    URL  https://github.com/qdrvm/WAVM/archive/refs/tags/1.0.12.zip
    SHA1 97f9003fa39970969ffb6a2d5e9fc2551cae3c0c
)

hunter_add_version(
    PACKAGE_NAME wavm
    VERSION      1.0.13
    URL  https://github.com/qdrvm/WAVM/archive/refs/tags/1.0.13.tar.gz
    SHA1 524302962934f49d09247d705fd00b0548364102
)

hunter_cmake_args(
    wavm
    CMAKE_ARGS
      WAVM_ENABLE_FUZZ_TARGETS=OFF
      WAVM_ENABLE_FUZZ_TARGETS=OFF
      WAVM_ENABLE_STATIC_LINKING=ON
      WAVM_BUILD_EXAMPLES=OFF
      WAVM_BUILD_PROGRAMS=OFF
      WAVM_BUILD_TESTS=OFF
      WAVM_DISABLE_UNIX_SIGNALS=ON
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(wavm)
hunter_download(PACKAGE_NAME wavm)
