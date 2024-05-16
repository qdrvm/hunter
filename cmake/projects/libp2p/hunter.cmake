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
    PACKAGE_NAME libp2p
    VERSION 0.1.10
    URL  https://github.com/libp2p/cpp-libp2p/archive/refs/tags/v0.1.10.tar.gz
    SHA1 2f938dcfebf62a68ddc2450242a60d3f0e3d16a1)

hunter_add_version(
    PACKAGE_NAME libp2p
    VERSION 0.1.11
    URL  https://github.com/libp2p/cpp-libp2p/archive/refs/tags/v0.1.11.tar.gz
    SHA1 9e611664ff91b4bb37d26401e5c4b48b6cd3bc6f)

hunter_add_version(
    PACKAGE_NAME libp2p
    VERSION 0.1.12
    URL  https://github.com/libp2p/cpp-libp2p/archive/refs/tags/v0.1.12.tar.gz
    SHA1 9a7cd36ac617d6f3a926f593e9f3d2f4f0466e33)

hunter_add_version(
    PACKAGE_NAME libp2p
    VERSION 0.1.13
    URL  https://github.com/libp2p/cpp-libp2p/archive/refs/tags/v0.1.13.tar.gz
    SHA1 ae97fe389fd46b1480c779c966eee07ec97aec62)

hunter_add_version(
    PACKAGE_NAME libp2p
    VERSION 0.1.15
    URL  https://github.com/libp2p/cpp-libp2p/archive/refs/tags/v0.1.15.tar.gz
    SHA1 a03b163fc33d9e511bb9dce76649e8857632ff8a)

hunter_add_version(
    PACKAGE_NAME libp2p
    VERSION 0.1.16
    URL  https://github.com/libp2p/cpp-libp2p/archive/refs/tags/v0.1.16.tar.gz
    SHA1 a47ab85706d91e8a8244ce7795dae4e601ec6ef0)

hunter_add_version(
    PACKAGE_NAME libp2p
    VERSION 0.1.17
    URL  https://github.com/libp2p/cpp-libp2p/archive/refs/tags/v0.1.17.tar.gz
    SHA1 e6adb1adb411de8772d2a600ca8975d154dbff29)

hunter_add_version(
    PACKAGE_NAME libp2p
    VERSION 0.1.18
    URL  https://github.com/libp2p/cpp-libp2p/archive/refs/tags/v0.1.18.zip
    SHA1 7aaad7f32694dcd88ab92455ebe0dc4e0033f12d)

hunter_add_version(
    PACKAGE_NAME libp2p
    VERSION 0.1.19
    URL  https://github.com/libp2p/cpp-libp2p/archive/refs/tags/v0.1.19.zip
    SHA1 f6937c93fd40aea4b57f2adc8ac711ba3b438718)

hunter_add_version(
    PACKAGE_NAME libp2p
    VERSION 0.1.20
    URL  https://github.com/libp2p/cpp-libp2p/archive/refs/tags/v0.1.20.zip
    SHA1 219a444f875b1c35d535a3e401a7ea55a3ff0655
    )

hunter_add_version(
    PACKAGE_NAME libp2p
    VERSION 0.1.21
    URL  https://github.com/libp2p/cpp-libp2p/archive/refs/tags/v0.1.21.zip
    SHA1 6547a3f4ef4344e6ad51e758d2b1399c606446cd
    )

hunter_add_version(
    PACKAGE_NAME libp2p
    VERSION 0.1.22
    URL  https://github.com/libp2p/cpp-libp2p/archive/refs/tags/v0.1.22.zip
    SHA1 616b2056e43d6463cec3a094b794b497a157d07c
    )

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
