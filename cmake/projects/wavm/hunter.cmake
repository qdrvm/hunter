# Copyright (c) 2016-2019, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cmake_args)

hunter_add_version(
    PACKAGE_NAME
    wavm
    VERSION
    1.0.3
    URL
    "https://github.com/soramitsu/WAVM/archive/refs/tags/1.0.3.zip"
    SHA1
    67cafaec3c810a5e8d7bb9416148d7532a0071ed
)

hunter_add_version(
    PACKAGE_NAME
    wavm
    VERSION
    1.0.4
    URL
    "https://github.com/soramitsu/WAVM/archive/refs/tags/1.0.4.zip"
    SHA1
    919aafc29dae892bf4eacd724e7058ad00ca8b8e
)

hunter_add_version(
    PACKAGE_NAME
    wavm
    VERSION
    1.0.4-r
    URL
    "https://github.com/soramitsu/WAVM/archive/refs/heads/uninit-diag.zip"
    SHA1
    fa7b5dbfbd63a31ccfd90b54c48e624ee64492f9
)

hunter_cmake_args(
    wavm
    CMAKE_ARGS
    WAVM_ENABLE_FUZZ_TARGETS=OFF
    WAVM_BUILD_EXAMPLES=OFF
    WAVM_BUILD_TESTS=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(wavm)
hunter_download(PACKAGE_NAME wavm)
