#
# Copyright Quadrivium LLC
# All Rights Reserved
# SPDX-License-Identifier: Apache-2.0
#

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME lsquic
    VERSION 4.0.9-qdrvm-1
    URL  https://github.com/qdrvm/lsquic/archive/refs/tags/v4.0.9-qdrvm-1.zip
    SHA1 de4788a0a3c9edf46e96524a20f6dbe893f935ef
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)

hunter_cacheable(lsquic)
hunter_download(PACKAGE_NAME lsquic)