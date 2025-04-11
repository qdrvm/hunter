include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME qtils
    VERSION 0.0.1
    URL  https://github.com/qdrvm/qtils/archive/refs/tags/v0.0.1.zip
    SHA1 d65d41ea8e227fc9a93357850415aaefc71aca46
)

hunter_add_version(
    PACKAGE_NAME qtils
    VERSION 0.0.2
    URL  https://github.com/qdrvm/qtils/archive/refs/tags/v0.0.2.zip
    SHA1 cf06ed101bcfccc87a2c1fae8d0dab7d76ee0f41
)

hunter_add_version(
    PACKAGE_NAME qtils
    VERSION 0.0.3
    URL  https://github.com/qdrvm/qtils/archive/refs/tags/v0.0.3.zip
    SHA1 6554da456edce62ffe413aeaf836ad3a6753369b
)

hunter_add_version(
    PACKAGE_NAME qtils
    VERSION 0.0.4
    URL  https://github.com/qdrvm/qtils/archive/refs/tags/v0.0.4.zip
    SHA1 808212b183d0de419984e1e3734523f0040ac636
)

hunter_add_version(
    PACKAGE_NAME qtils
    VERSION 0.1.0
    URL  https://github.com/qdrvm/qtils/archive/refs/tags/v0.1.0.tar.gz
    SHA1 acc28902af7dc5d74ac33d486ad2261906716f5e
)

hunter_add_version(
    PACKAGE_NAME qtils
    VERSION 0.1.1
    URL  https://github.com/qdrvm/qtils/archive/refs/tags/v0.1.1.tar.gz
    SHA1 f0dbd86efa45ceb009cd5b0b13761b7815323d70
)

hunter_cmake_args(
    qtils
    CMAKE_ARGS
      QTILS_BUILD_TESTS=OFF
      FORMAT_ERROR_WITH_FULLTYPE=OFF
)      

hunter_pick_scheme(DEFAULT url_sha1_cmake)

hunter_cacheable(qtils)
hunter_download(PACKAGE_NAME qtils)
