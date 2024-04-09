# Copyright (c) 2017, Pawel Bylica
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME rocksdb
    VERSION 5.7.2
    URL "https://github.com/facebook/rocksdb/archive/v5.7.2.tar.gz"
    SHA1 "f14feee1348bc62b733c6db620a02979477e234f"
)

hunter_add_version(
    PACKAGE_NAME rocksdb
    VERSION 5.8.6
    URL "https://github.com/facebook/rocksdb/archive/v5.8.6.tar.gz"
    SHA1 "0610c260676e78b03ba48b2d671ba92bdcff2641")

hunter_add_version(
    PACKAGE_NAME rocksdb
    VERSION 5.14.2
    URL "https://github.com/facebook/rocksdb/archive/v5.14.2.tar.gz"
    SHA1 "376bc537e8c716111214274755f5fe4026e5a354")

hunter_add_version(
    PACKAGE_NAME rocksdb
    VERSION 7.2.2
    URL "https://github.com/facebook/rocksdb/archive/refs/tags/v7.2.2.tar.gz"
    SHA1 "6d908658d8beb1bed850154097cf6bc7d5373580"
)

hunter_add_version(
    PACKAGE_NAME rocksdb
    VERSION 8.0.0
    URL "https://github.com/facebook/rocksdb/archive/refs/tags/v8.0.0.tar.gz"
    SHA1 "596e6ce7f14b5fa81b1df04339e173282bb83307"
)

hunter_add_version(
    PACKAGE_NAME rocksdb
    VERSION 9.0.0
    URL "https://github.com/facebook/rocksdb/archive/refs/tags/v9.0.0.tar.gz"
    SHA1 "82d6749a1fa1d638d4dba9c884ea9c2c48a49d3a"
)


if(MSVC)
    hunter_cmake_args(rocksdb CMAKE_ARGS
        WITH_TESTS=OFF
        PORTABLE=ON
        ROCKSDB_INSTALL_ON_WINDOWS=ON
        FAIL_ON_WARNINGS=OFF)
else()
    hunter_cmake_args(rocksdb CMAKE_ARGS
        WITH_TESTS=OFF
        PORTABLE=ON
        FAIL_ON_WARNINGS=OFF)
endif()

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(rocksdb)
hunter_download(PACKAGE_NAME rocksdb)
