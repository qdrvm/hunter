# Copyright (c) 2016-2019, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cmake_args)

hunter_add_version(
    PACKAGE_NAME
    scale
    VERSION
    1.0.2
    URL
    "https://github.com/soramitsu/scale-codec-cpp/archive/refs/tags/v1.0.2.zip"
    SHA1
    1d9dbcd3f07f14591cb351669eb3801efe9e5038
)

hunter_add_version(
    PACKAGE_NAME
    scale
    VERSION
    1.0.3
    URL
    "https://github.com/soramitsu/scale-codec-cpp/archive/refs/tags/v1.0.3.tar.gz"
    SHA1
    be06848e62dc1c6bcac512224e3b3da728f4502b
)

hunter_add_version(
    PACKAGE_NAME
    scale
    VERSION
    1.0.4
    URL
    "https://github.com/soramitsu/scale-codec-cpp/archive/refs/tags/v1.0.4.tar.gz"
    SHA1
    49be6a2515b351317f12c30a04c2de238f5eb499
)

hunter_add_version(
    PACKAGE_NAME
    scale
    VERSION
    1.0.5
    URL
    "https://github.com/soramitsu/scale-codec-cpp/archive/refs/tags/v1.0.5.tar.gz"
    SHA1
    e38054b0e6aa3a2f30813d7b97189fa8c80fa771
)

hunter_add_version(
    PACKAGE_NAME
    scale
    VERSION
    1.0.6
    URL
    "https://github.com/soramitsu/scale-codec-cpp/archive/refs/tags/v1.0.6.tar.gz"
    SHA1
    744865f657a66f0ae14c691b86c12298325fcb8d
)

hunter_add_version(
    PACKAGE_NAME
    scale
    VERSION
    1.0.7
    URL
    "https://github.com/soramitsu/scale-codec-cpp/archive/refs/tags/v1.0.7.tar.gz"
    SHA1
    70edda2cb1081e6b3179e633ac5569402dfb613e
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(scale)
hunter_download(PACKAGE_NAME scale)
