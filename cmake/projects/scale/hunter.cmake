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

hunter_add_version(
    PACKAGE_NAME scale
    VERSION      1.1.1
    URL  https://github.com/soramitsu/scale-codec-cpp/archive/refs/tags/v1.1.1.zip
    SHA1 6bf8a0aacad91e03684ecebc7cb38b8cccdf769c)

hunter_add_version(
    PACKAGE_NAME scale
    VERSION      1.1.2
    URL  https://github.com/soramitsu/scale-codec-cpp/archive/refs/tags/v1.1.2.zip
    SHA1 807a50794f2207793c7292e98d98a12970007411)

hunter_add_version(
    PACKAGE_NAME scale
    VERSION      1.1.3
    URL  https://github.com/soramitsu/scale-codec-cpp/archive/refs/tags/v1.1.3.zip
    SHA1 58a8e69df85399bddeb905252405be9f6d6b4f56
    )

hunter_add_version(
    PACKAGE_NAME scale
    VERSION      1.1.4
    URL  https://github.com/soramitsu/scale-codec-cpp/archive/refs/tags/v1.1.4.zip
    SHA1 25c2321cabff72890772f8ad34d2526531be45f5
    )

hunter_add_version(
    PACKAGE_NAME scale
    VERSION      1.1.5
    URL  https://github.com/qdrvm/scale-codec-cpp/archive/refs/tags/v1.1.5.tar.gz
    SHA1 531c74cb9449aaeb8747933a1496d7b6d139a08c
    )

hunter_add_version(
    PACKAGE_NAME scale
    VERSION      2.0.0
    URL  https://github.com/qdrvm/scale-codec-cpp/archive/refs/tags/v2.0.0.tar.gz
    SHA1 a83f0a034693809b948451ff774aeb58462a0f96
    )
    
hunter_cmake_args(
    scale
    CMAKE_ARGS
      BUILD_TESTS=OFF
      JAM_COMPATIBLE=OFF
      CUSTOM_CONFIG_SUPPORT=OFF
      MAX_AGGREGATE_FIELDS=20
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(scale)
hunter_download(PACKAGE_NAME scale)
