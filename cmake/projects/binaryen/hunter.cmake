# Copyright (c) 2016-2018, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cmake_args)

hunter_add_version(
    PACKAGE_NAME
    binaryen
    VERSION
    version_101
    URL
    "https://github.com/soramitsu/binaryen/archive/refs/tags/version_101.tar.gz"
    SHA1
    c8dcb3081d3416587927bcadd66864b7e6e11b26
)

hunter_cmake_args(
    binaryen
    CMAKE_ARGS
        BUILD_LLVM_DWARF=OFF
        BUILD_STATIC_LIB=ON
        ENABLE_WERROR=OFF   # some new compilers (g++-{7,8}) produce warnings so build may fail. we explicitly disable -Werror
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(binaryen)
hunter_download(PACKAGE_NAME binaryen)
