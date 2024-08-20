include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME wabt
    VERSION 1.0.36
    URL  https://github.com/qdrvm/wabt/archive/refs/tags/1.0.36.zip
    SHA1 a7ecd25d322de990c9bd0e9fd193f4d4aeacb11a
)

hunter_cmake_args(wabt CMAKE_ARGS
    BUILD_TESTS=OFF
    BUILD_TOOLS=OFF
    BUILD_LIBWASM=OFF
    USE_INTERNAL_SHA256=ON
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(wabt)
hunter_download(PACKAGE_NAME wabt)
