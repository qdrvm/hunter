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
    "https://github.com/qdrvm/boost-di/archive/a20eebb6decfba55867a6920e00443a9485f50cd.tar.gz"
    SHA1
    f6f59cb4cf3b586d6985e361ec762a307428ff29
)

hunter_add_version(
    PACKAGE_NAME Boost.DI
    VERSION 1.1.0-p1
    URL  https://github.com/qdrvm/boost-di/archive/d5de6c9840c7fc2e44bf37134b4a14b88151ecc4.zip
    SHA1 3dd986a80393e0ed64e7b0536d4d5a70c21fbb51
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
