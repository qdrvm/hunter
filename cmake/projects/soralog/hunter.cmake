# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME soralog
    VERSION "0.0.9"
    URL "https://github.com/qdrvm/soralog/archive/v0.0.9.tar.gz"
    SHA1 "a5df392c969136e9cb2891d7cc14e3e6d34107d6"
)

hunter_add_version(
    PACKAGE_NAME soralog
    VERSION "0.1.3"
    URL "https://github.com/qdrvm/soralog/archive/v0.1.3.tar.gz"
    SHA1 "4a550cd7c21dd51a62171d83818188db14d4691b"
)

hunter_add_version(
    PACKAGE_NAME soralog
    VERSION "0.1.5"
    URL  "https://github.com/qdrvm/soralog/archive/refs/tags/v0.1.5.tar.gz"
    SHA1 "88664218fc6430ed8d782aaeec665b43ec10c702"
)

hunter_add_version(
    PACKAGE_NAME soralog
    VERSION 0.2.2
    URL  https://github.com/qdrvm/soralog/archive/refs/tags/v0.2.2.tar.gz
    SHA1 58c70f24deac4e583bba9e94a3df9fcba399b570
)

hunter_add_version(
    PACKAGE_NAME soralog
    VERSION 0.2.3
    URL  https://github.com/qdrvm/soralog/archive/refs/tags/v0.2.3.zip
    SHA1 cda3eb2c170e066f8cc104b1b968ba0a244b4f6c
)

hunter_add_version(
    PACKAGE_NAME soralog
    VERSION 0.2.4
    URL  https://github.com/qdrvm/soralog/archive/refs/tags/v0.2.4.zip
    SHA1 a7583daed77a9c06e884fe0cfe66c92a79e466d9
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
