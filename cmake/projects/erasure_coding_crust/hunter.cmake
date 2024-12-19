# Copyright (c) 2016-2017, Alexander Lednev
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
    erasure_coding_crust
    VERSION
    0.0.1
    URL https://github.com/qdrvm/erasure-coding-crust/archive/refs/tags/v0.0.1.zip
    SHA1 a3ed370ab594726d7d1581ed1e10adf48365005d
)

hunter_add_version(
    PACKAGE_NAME
    erasure_coding_crust
    VERSION
    0.0.2
    URL https://github.com/qdrvm/erasure-coding-crust/archive/refs/tags/v0.0.2.zip
    SHA1 b5b860358236011c92a6c7f6134d12199f0a5818
)

hunter_add_version(
    PACKAGE_NAME
    erasure_coding_crust
    VERSION
    0.0.3
    URL https://github.com/qdrvm/erasure-coding-crust/archive/refs/tags/v0.0.3.zip
    SHA1 f8084f0a0de3d584ea2938803ca869aefa31ba10
)

hunter_add_version(
    PACKAGE_NAME
    erasure_coding_crust
    VERSION
    0.0.4
    URL https://github.com/qdrvm/erasure-coding-crust/archive/refs/tags/v0.0.4.zip
    SHA1 79cadfffaa530943d0c3fe2cb6125fd01510b664
)

hunter_add_version(
    PACKAGE_NAME
    erasure_coding_crust
    VERSION
    0.0.5
    URL https://github.com/qdrvm/erasure-coding-crust/archive/refs/tags/v0.0.5.zip
    SHA1 d306a2118920bccf6734c54772594a10b004d477
)

hunter_add_version(
    PACKAGE_NAME
    erasure_coding_crust
    VERSION
    0.0.6
    URL https://github.com/qdrvm/erasure-coding-crust/archive/refs/tags/v0.0.6.zip
    SHA1 229c5566eb3a0a8c236faf14e4881f277ccd8a9c
)

hunter_add_version(
    PACKAGE_NAME
    erasure_coding_crust
    VERSION
    0.0.8
    URL https://github.com/qdrvm/erasure-coding-crust/archive/refs/tags/v0.0.8.tar.gz
    SHA1 6bcdb6327f5da2dcec5c70f2fa63b95a44925af0
)

hunter_add_version(
    PACKAGE_NAME
    erasure_coding_crust
    VERSION
    0.0.9
    URL https://github.com/qdrvm/erasure-coding-crust/archive/refs/tags/v0.0.9.tar.gz
    SHA1 c57cfac550d29ca4b523d707e29895866910ea1d
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(erasure_coding_crust)
hunter_download(PACKAGE_NAME erasure_coding_crust)


