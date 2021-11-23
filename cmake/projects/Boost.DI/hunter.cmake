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
    Boost.DI
    VERSION
    1.1.0
    URL
    "https://github.com/soramitsu/soramitsu-boost-di/archive/a20eebb6decfba55867a6920e00443a9485f50cd.tar.gz"
    SHA1
    3c02cffc9b1bc0e7ddf5e226723dfd5a862ad247
)

hunter_cmake_args(
    Boost.DI
	CMAKE_ARGS 
		BOOST_DI_OPT_BUILD_TESTS=OFF 
		BOOST_DI_OPT_BUILD_EXAMPLES=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(Boost.DI)
hunter_download(PACKAGE_NAME Boost.DI)
