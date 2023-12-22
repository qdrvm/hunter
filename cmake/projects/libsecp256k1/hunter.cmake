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
    0.1
    URL
    "https://github.com/soramitsu/soramitsu-libsecp256k1/archive/v0.1.tar.gz"
    SHA1
    4ffcdc2477794ad588874975184cfa68f7e15e94
)

hunter_add_version(
    PACKAGE_NAME
    libsecp256k1
    VERSION
    0.1-overflow
    URL
    "https://github.com/turuslan/qdrvm-libsecp256k1/archive/30c830edf90c1de7000868e2891c67205b2b8804.zip"
    SHA1
    218180a6648fad365627f936b8f250930e6a1477
)

hunter_cmake_args(
    libsecp256k1
    CMAKE_ARGS
    SECP256K1_BUILD_TEST=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(libsecp256k1)
hunter_download(PACKAGE_NAME libsecp256k1)
