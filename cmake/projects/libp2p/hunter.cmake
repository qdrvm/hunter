# Copyright (c) 2016-2017, Ruslan Baratov
# Copyright (c) 2020, Soramitsu Co., Ltd.
# All rights reserved.
# SPDX-License-Identifier: Apache-2.0

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cmake_args)

hunter_add_version(
    PACKAGE_NAME
    libp2p
    VERSION
    0.0.1
    URL
    "https://github.com/soramitsu/cpp-libp2p/archive/v0.0.1.tar.gz"
    SHA1
    3107cdb5d073c862c9a2b3316eeff71b5eaec14c
)

hunter_add_version(
    PACKAGE_NAME
    libp2p
    VERSION
    0.0.1-p0
    URL
    "https://github.com/soramitsu/cpp-libp2p/archive/v0.0.1-p0.tar.gz"
    SHA1
    cc0ecbc75a9afb556fd32276e09e3e0a4f347370
)

hunter_add_version(
    PACKAGE_NAME
    libp2p
    VERSION
    0.0.2
    URL
    "https://github.com/soramitsu/cpp-libp2p/archive/v0.0.2.tar.gz"
    SHA1
    197bf8a8ed89b2cbdc5ccbdc8ec01be23ee5d2f7
)

hunter_add_version(
    PACKAGE_NAME
    libp2p
    VERSION
    0.0.2-p0
    URL
    "https://github.com/soramitsu/cpp-libp2p/archive/v0.0.2-p0.tar.gz"
    SHA1
    6156058ee32588502d0f5b8e7899f33a8de0476f
)

hunter_add_version(
    PACKAGE_NAME 
    libp2p
    VERSION 
    0.0.2-p1
    URL 
    "https://github.com/libp2p/cpp-libp2p/archive/0.0.2-p1.tar.gz"
    SHA1 
    23350b7e2b306bd306b4989b8a08da94ed732fb0
)

hunter_add_version(
    PACKAGE_NAME
    libp2p
    VERSION
    0.0.2-p2
    URL
    "https://github.com/libp2p/cpp-libp2p/archive/v0.0.2-p2.tar.gz"
    SHA1
    77227a5836abecf7a4b95c0f87d03c28e72c4296)

hunter_add_version(
    PACKAGE_NAME
    libp2p
    VERSION
    0.0.3
    URL
    "https://github.com/libp2p/cpp-libp2p/archive/v0.0.3.tar.gz"
    SHA1
    656c9bb654cf8bfe67f38a4c6ef11114bf4f815d)

hunter_add_version(
    PACKAGE_NAME
    libp2p
    VERSION
    0.0.4
    URL
    "https://github.com/libp2p/cpp-libp2p/archive/v0.0.4.tar.gz"
    SHA1
    8da1248c7d8ccc3ce0998ee6089bb6d7d482dfb4)

hunter_add_version(
    PACKAGE_NAME
    libp2p
    VERSION
    0.1.0
    URL
    "https://github.com/libp2p/cpp-libp2p/archive/v0.1.0.tar.gz"
    SHA1
    973563d901d5297e7caed9140d5fed66bbe72a15)

hunter_cmake_args(
    libp2p
    CMAKE_ARGS
      TESTING=OFF
      EXAMPLES=OFF
      EXPOSE_MOCKS=ON
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(libp2p)
hunter_download(PACKAGE_NAME libp2p)
