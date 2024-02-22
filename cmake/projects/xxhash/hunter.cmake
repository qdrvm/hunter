# Copyright (c) 2016-2018, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    xxhash
    VERSION
    0.8.2
    URL
    "https://github.com/Cyan4973/xxHash/archive/v0.8.2.tar.gz"
    SHA1
    8df702581ebc48a5e05be0f1ede6e1e9139e4da1
)

hunter_pick_scheme(DEFAULT url_sha1_make_only)
hunter_cacheable(xxhash)
hunter_download(PACKAGE_NAME xxhash)
