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
    2b20b866d36cfcd37b8d0ee6167b27eba6c35d32
)

hunter_add_version(
    PACKAGE_NAME WasmEdge
    VERSION 0.14.0-alpha.1-qdrvm1
    URL  https://github.com/qdrvm/WasmEdge/archive/refs/tags/0.14.0-alpha.1-qdrvm1.zip
    SHA1 7c450719d5e880468ed66250f63ae7402d89e9da
)

hunter_add_version(
    PACKAGE_NAME WasmEdge
    VERSION 0.14.0-alpha.1-qdrvm2
    URL  https://github.com/qdrvm/WasmEdge/archive/refs/tags/0.14.0-alpha.1-qdrvm2.zip
    SHA1 9e64cf0a8020ab364eedca45f7b28c790ea34c82
)

hunter_add_version(
    PACKAGE_NAME WasmEdge
    VERSION 0.14.0-alpha.1-qdrvm3
    URL  https://github.com/qdrvm/WasmEdge/archive/refs/tags/0.14.0-alpha.1-qdrvm3.zip
    SHA1 76e2d4804959c486631fa3446e65361f7cef14e0
)

hunter_add_version(
    PACKAGE_NAME WasmEdge
    VERSION 0.14.0-alpha.1-qdrvm4
    URL  https://github.com/qdrvm/WasmEdge/archive/refs/tags/0.14.0-alpha.1-qdrvm4.zip
    SHA1 9fbbf6c47605cc2608fc75e95691f53880237d47
)

hunter_add_version(
    PACKAGE_NAME WasmEdge
    VERSION 0.14.0-rc.5-qdrvm1
    URL  https://github.com/qdrvm/WasmEdge/archive/8b187a1483c75ce87b27f255ae1082fd7adb38a4.zip
    SHA1 c9d6a4f76434b54a509a1993b24d1b9bf0a92a8e
)

hunter_cmake_args(
    WasmEdge
    CMAKE_ARGS
    WASMEDGE_BUILD_TOOLS=OFF
    WASMEDGE_BUILD_PLUGINS=OFF
    ${WASMEDGE_FLAGS}
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(WasmEdge)
hunter_download(PACKAGE_NAME WasmEdge)
