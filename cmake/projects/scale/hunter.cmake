# Copyright (c) 2016-2019, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cmake_args)

hunter_add_version(
    PACKAGE_NAME scale
    VERSION      1.0.7
    URL  https://github.com/soramitsu/scale-codec-cpp/archive/refs/tags/v1.0.7.tar.gz
    SHA1 70edda2cb1081e6b3179e633ac5569402dfb613e)

hunter_add_version(
    PACKAGE_NAME scale
    VERSION      1.1.0
    URL  https://github.com/soramitsu/scale-codec-cpp/archive/refs/tags/v1.1.0.tar.gz
    SHA1 ab95ac4126f27496942d328e96f2571b75e9378b)

hunter_cmake_args(
    scale
    CMAKE_ARGS
      BUILD_TESTS=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(scale)
hunter_download(PACKAGE_NAME scale)
