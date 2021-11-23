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
    1.0.5
    URL https://github.com/soramitsu/soramitsu-sr25519-crust/archive/152b9f5fdc33c9d081561a92c36578e347cc9732.zip
    SHA1 444040aa4a5e11f94940995e13eb7c4e4511d6fb
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


