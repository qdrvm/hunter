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
    "https://github.com/qdrvm/libsecp256k1/archive/refs/tags/v0.4.1-qdrvm1.zip"
    SHA1
    2b34abc1bdfcae185bdfbee1c71a6f27aaa5644d
)

hunter_cmake_args(
    libsecp256k1
    CMAKE_ARGS
    SECP256K1_BUILD_TEST=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(libsecp256k1)
hunter_download(PACKAGE_NAME libsecp256k1)
