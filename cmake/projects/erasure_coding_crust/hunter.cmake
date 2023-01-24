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
    URL https://github.com/soramitsu/erasure-coding-crust/archive/refs/tags/v0.0.1.zip
    SHA1 a3ed370ab594726d7d1581ed1e10adf48365005d
)

hunter_add_version(
    PACKAGE_NAME
    erasure_coding_crust
    VERSION
    0.0.2
    URL https://github.com/soramitsu/erasure-coding-crust/archive/refs/tags/v0.0.2.zip
    SHA1 b5b860358236011c92a6c7f6134d12199f0a5818
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(erasure_coding_crust)
hunter_download(PACKAGE_NAME erasure_coding_crust)


