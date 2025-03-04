# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME soralog
    VERSION 0.2.4
    URL  https://github.com/qdrvm/soralog/archive/refs/tags/v0.2.4.zip
    SHA1 a7583daed77a9c06e884fe0cfe66c92a79e466d9
)

hunter_add_version(
    PACKAGE_NAME soralog
    VERSION 0.2.5
    URL  https://github.com/qdrvm/soralog/archive/refs/tags/v0.2.5.tar.gz
    SHA1 67da2d17e93954c198b4419daa55911342c924a9
)

hunter_cmake_args(
    soralog
    CMAKE_ARGS
      TESTING=OFF
      EXAMPLES=OFF
      EXPOSE_MOCKS=ON
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(soralog)
hunter_download(PACKAGE_NAME soralog)
