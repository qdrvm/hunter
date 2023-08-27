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
    WasmEdge
    VERSION
    0.13.3
    URL
    "https://github.com/WasmEdge/WasmEdge/archive/refs/tags/0.13.3.zip"
    SHA1
    f733538b806025c09fabc7d3f5e4f49338c41e70
)

hunter_cmake_args(
    WasmEdge
    CMAKE_ARGS
    WASMEDGE_BUILD_TOOLS=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(WasmEdge)
hunter_download(PACKAGE_NAME WasmEdge)
