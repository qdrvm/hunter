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
    "https://github.com/harrm/WasmEdge/archive/refs/tags/0.13.3-qdrvm1.zip"
    SHA1
    b02234c1e2fb40ed35c7df8cc92907617f9087e0
)

hunter_cmake_args(
    WasmEdge
    CMAKE_ARGS
    WASMEDGE_BUILD_TOOLS=OFF
    ${WASMEDGE_FLAGS}
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(WasmEdge)
hunter_download(PACKAGE_NAME WasmEdge)
