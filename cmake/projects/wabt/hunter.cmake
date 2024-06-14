include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME wabt
    VERSION latest
    URL  https://github.com/qdrvm/wabt/archive/17951f2e4cb290f25c72c6ca03d4abae7caed0f4.zip
    SHA1 2f50078d868d98032e4aa4c003d92b6ce796d0ef
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
