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
    1.0.0
    URL
    "https://github.com/soramitsu/scale-codec-cpp/archive/68997addc96065c643646ce1c6ff7e36683a051f.tar.gz"
    SHA1
    1b8e17369f9e247e04ea7d26f3fc6247c3908f71
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(scale)
hunter_download(PACKAGE_NAME scale)
