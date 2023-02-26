# Copyright (c) 2016-2017, Ruslan Baratov
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
    schnorrkel_crust
    VERSION
    1.0.9
    URL https://github.com/soramitsu/soramitsu-sr25519-crust/archive/06687079c939e9f1a106d0b096b6db671e29db8d.zip
    SHA1 937e59fba3631247703845b1478293d953e47778
)

hunter_add_version(
    PACKAGE_NAME
    schnorrkel_crust
    VERSION
    1.0.8
    URL https://github.com/soramitsu/soramitsu-sr25519-crust/archive/62795502ac50b82f3d5a1b084513f6defea002ba.zip
    SHA1 a4aa4d8c4fe69189d761a7853dae162695fd2bcd
)

hunter_add_version(
    PACKAGE_NAME
    schnorrkel_crust
    VERSION
    1.0.7
    URL https://github.com/soramitsu/soramitsu-sr25519-crust/archive/bf9ff91a8f6974c82b6f5ba73c7802f4ed688330.zip
    SHA1 de118b668c5dc69ec98dcd42f80302c43de38faa
)

hunter_add_version(
    PACKAGE_NAME
    schnorrkel_crust
    VERSION
    1.0.6
    URL https://github.com/soramitsu/soramitsu-sr25519-crust/archive/0dd1d2f641a109088c64f78a9c1b4823fa549c50.zip
    SHA1 8c372b040f5426fec26ef58b1b81b7802632dd8b
)

hunter_add_version(
    PACKAGE_NAME
    schnorrkel_crust
    VERSION
    1.0.5
    URL https://github.com/soramitsu/soramitsu-sr25519-crust/archive/refs/tags/1.0.5.zip
    SHA1 a083b6a2681c728cb4b4071e27829b7de8d68ab3
)

hunter_add_version(
    PACKAGE_NAME
    schnorrkel_crust
    VERSION
    0.3.0
    URL https://github.com/soramitsu/soramitsu-sr25519-crust/archive/3a5f7002f12248c8d994e828a1a856ee7ccd8803.zip
    SHA1 275ff897dae74faf874ee7169a9815279861748c
)

hunter_add_version(
    PACKAGE_NAME
    schnorrkel_crust
    VERSION
    0.2.0
    URL https://github.com/soramitsu/soramitsu-sr25519-crust/archive/f2ab23af56bba1ba611b7be8d9bbafd63a22dec3.zip
    SHA1 767099ca5a3ae806a893c7f5cf6e3631da486e3d
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(schnorrkel_crust)
hunter_download(PACKAGE_NAME schnorrkel_crust)


