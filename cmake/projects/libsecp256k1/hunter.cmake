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
    0.5.1
    URL
    "https://github.com/qdrvm/libsecp256k1/archive/refs/tags/0.5.1.zip"
    SHA1
    fa6b24765235d4a729f528990ad99daeecdc517a
)

hunter_cmake_args(
    libsecp256k1
    CMAKE_ARGS
    SECP256K1_BUILD_TEST=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(libsecp256k1)
hunter_download(PACKAGE_NAME libsecp256k1)
