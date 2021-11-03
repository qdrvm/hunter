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
    "https://github.com/soramitsu/scale-codec-cpp/archive/56a7144661e0b06ad8f8193040b95c42d6b940d8.tar.gz"
    SHA1
    5211e7fba87a6863d7e856f54ab80ffc77cb9955
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(scale)
hunter_download(PACKAGE_NAME scale)
