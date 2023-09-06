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
    "https://github.com/qdrvm/WAVM/archive/refs/tags/1.0.3.zip"
    SHA1
    67cafaec3c810a5e8d7bb9416148d7532a0071ed
)

hunter_add_version(
    PACKAGE_NAME
    wavm
    VERSION
    1.0.4
    URL
    "https://github.com/qdrvm/WAVM/archive/refs/tags/1.0.4.zip"
    SHA1
    0a37ea0c295bf8f484394d83d71c2da54e9ef492
)

hunter_add_version(
    PACKAGE_NAME
    wavm
    VERSION
    1.0.5
    URL
    "https://github.com/qdrvm/WAVM/archive/refs/tags/1.0.5.zip"
    SHA1
    46c1abf4928d2422f9a98cb449206b4e3714cc0a
)

hunter_add_version(
    PACKAGE_NAME
    wavm
    VERSION
    1.0.6
    URL
    "https://github.com/qdrvm/WAVM/archive/refs/tags/1.0.6.zip"
    SHA1
    2acb8a46d5bb0d1e39b6850db9372b74302ef96e
)

hunter_add_version(
    PACKAGE_NAME
    wavm
    VERSION
    1.0.7
    URL
    "https://github.com/qdrvm/WAVM/archive/refs/tags/1.0.7.zip"
    SHA1
    81eeb8c5201dfa58459e3622deea279fcbd1a92b
)

hunter_add_version(
    PACKAGE_NAME
    wavm
    VERSION
    1.0.8
    URL
    "https://github.com/qdrvm/WAVM/archive/refs/tags/1.0.8.zip"
    SHA1
    d29b2e1765533dc487aa6e10820c358abde6d724
)

hunter_add_version(
    PACKAGE_NAME
    wavm
    VERSION
    1.0.9
    URL
    "https://github.com/qdrvm/WAVM/archive/refs/tags/1.0.9.zip"
    SHA1
    f7a9303ea7be23f49010500d63ddcdc62703b882
)

hunter_add_version(
    PACKAGE_NAME
    wavm
    VERSION
    1.0.10
    URL
    "https://github.com/qdrvm/WAVM/archive/refs/tags/1.0.10.zip"
    SHA1
    4167be1c8d33bbcac313a9aed1eedb342b5aea25
)

hunter_add_version(
    PACKAGE_NAME
    wavm
    VERSION
    1.0.11
    URL
    "https://github.com/qdrvm/WAVM/archive/refs/tags/1.0.11.zip"
    SHA1
    2198b3e7c5ab49f57867f84bf6337efd025fd55e
)

hunter_add_version(
    PACKAGE_NAME
    wavm
    VERSION
    1.0.12
    URL
    "https://github.com/qdrvm/WAVM/archive/refs/tags/1.0.12.zip"
    SHA1
    97f9003fa39970969ffb6a2d5e9fc2551cae3c0c
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
