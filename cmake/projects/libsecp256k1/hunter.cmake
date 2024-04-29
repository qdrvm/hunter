# Copyright (c) 2020, Soramitsu Co., Ltd.
# All rights reserved.
# SPDX-License-Identifier: Apache-2.0

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    libsecp256k1
    VERSION
    0.4.1-qdrvm1
    URL
    "https://github.com/qdrvm/libsecp256k1/archive/eb16f1d764f914edef6653c76ff83222b610bf79.zip"
    SHA1
    58ff000c8d8c905a9ff242e9ab6c6a172d9e1939
)

hunter_cmake_args(
    libsecp256k1
    CMAKE_ARGS
    SECP256K1_BUILD_TEST=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(libsecp256k1)
hunter_download(PACKAGE_NAME libsecp256k1)
