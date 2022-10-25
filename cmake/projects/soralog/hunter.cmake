# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME soralog
    VERSION "0.0.9"
    URL "https://github.com/soramitsu/soralog/archive/v0.0.9.tar.gz"
    SHA1 "a5df392c969136e9cb2891d7cc14e3e6d34107d6"
)

hunter_add_version(
    PACKAGE_NAME soralog
    VERSION "0.1.2"
    URL "https://github.com/soramitsu/soralog/archive/v0.1.2.tar.gz"
    SHA1 "f3de7b8ef5069b29104216919dfcaa790c0f5e13"
)

hunter_add_version(
    PACKAGE_NAME soralog
    VERSION "0.1.3"
    URL "https://github.com/soramitsu/soralog/archive/v0.1.3.tar.gz"
    SHA1 "4a550cd7c21dd51a62171d83818188db14d4691b"
)

hunter_add_version(
    PACKAGE_NAME soralog
    VERSION "0.1.4"
    URL "https://github.com/soramitsu/soralog/archive/v0.1.4.tar.gz"
    SHA1 "78fb38f212fa49029aff24c669a39648d9b4e68b"
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
