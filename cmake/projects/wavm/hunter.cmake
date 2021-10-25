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
    1.0.2
    URL
    "https://github.com/soramitsu/WAVM/archive/7efbcced0d41d5f7bc6cd254d624e5f7174b54fc.tar.gz"
    SHA1
    dd22c11c5faf95a6f6b05ecff18f0e8cab475771
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
