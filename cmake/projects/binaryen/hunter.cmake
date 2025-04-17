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
    1.38.28-p0
    URL
    "https://github.com/Warchant/binaryen/archive/1.38.28-p0.tar.gz"
    SHA1
    6c95a5a46a9e17a04521bb775266f2bae1763287
)

hunter_add_version(
    PACKAGE_NAME
    binaryen
    VERSION
    1.38.28-p1
    URL
    "https://github.com/Warchant/binaryen/archive/1.38.28-p1.tar.gz"
    SHA1
    f8ff97ee1e16862e8c88bfea2ffb88247ad65223
)

hunter_add_version(
    PACKAGE_NAME
    binaryen
    VERSION
    1.38.28-patch.1
    URL
    "https://github.com/qdrvm/binaryen/archive/refs/tags/1.38.28-patch.1.zip"
    SHA1
    ff287b5fca707f812e9d6dd70f6e45658536f179
)

hunter_add_version(
    PACKAGE_NAME binaryen
    VERSION 1.38.28-patch.2
    URL  https://github.com/qdrvm/binaryen/archive/refs/tags/1.38.28-patch.2.zip
    SHA1 a54b2c721f259d6856beddef20f5c66861949bb0
)

hunter_add_version(
    PACKAGE_NAME binaryen
    VERSION 1.38.28-patch.3
    URL  https://github.com/qdrvm/binaryen/archive/refs/tags/1.38.28-patch.3.zip
    SHA1 b520efa0ed39a1b198bb85163c843496d06fde44
)

hunter_add_version(
    PACKAGE_NAME binaryen
    VERSION 1.38.28-patch.4
    URL  https://github.com/iceseer/binaryen/archive/refs/heads/fix/cmake_upd_version.zip
    SHA1 b3e394ad3246efd8b8daf21a7b52f1f7fa3c024f
)

hunter_cmake_args(
    binaryen
    CMAKE_ARGS
        BUILD_LLVM_DWARF=OFF
        BUILD_STATIC_LIB=ON
        BUILD_TOOLS=OFF     # we don't want to build executables by default
        ENABLE_WERROR=OFF   # some new compilers (g++-{7,8}) produce warnings so build may fail. we explicitly disable -Werror
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(binaryen)
hunter_download(PACKAGE_NAME binaryen)
