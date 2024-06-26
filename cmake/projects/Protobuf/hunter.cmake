# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    Protobuf
    VERSION
    "2.4.1-p0"
    URL
    "https://github.com/hunter-packages/protobuf/archive/v2.4.1-p0.tar.gz"
    SHA1
    c57c846131f804622057d83bf44144c179613e44
)

hunter_add_version(
    PACKAGE_NAME
    Protobuf
    VERSION
    "3.0.0-p1"
    URL
    "https://github.com/hunter-packages/protobuf/archive/v3.0.0-hunter-3.tar.gz"
    SHA1
    242443553ca20ab279427330e175a3c33ecbf265
)

hunter_add_version(
    PACKAGE_NAME
    Protobuf
    VERSION
    "3.0.0"
    URL
    "https://github.com/hunter-packages/protobuf/archive/v3.0.0-hunter-2.tar.gz"
    SHA1
    d1fa1592e05ab6ff3e4dbbcd9dfd9768a26ba94a
)

hunter_add_version(
    PACKAGE_NAME
    Protobuf
    VERSION
    "3.0.0-beta-2"
    URL
    "https://github.com/hunter-packages/protobuf/archive/v3.0.0-beta-2-hunter-1.tar.gz"
    SHA1
    d43d0d6bbfd3b65539ca467e2bcb0f7eeeb6a9d9
)

hunter_add_version(
    PACKAGE_NAME
    Protobuf
    VERSION
    "3.0.0-beta-2-p1"
    URL
    "https://github.com/hunter-packages/protobuf/archive/v3.0.0-beta-2-hunter-2.tar.gz"
    SHA1
    f91766a391284b7ccd192fa36bc3f09449b3c202
)

hunter_add_version(
    PACKAGE_NAME
    Protobuf
    VERSION
    "3.1.0"
    URL
    "https://github.com/hunter-packages/protobuf/archive/v3.1.0-hunter-4.tar.gz"
    SHA1
    8f58f2cbe6d3fae61451a5e29b703686fe4bc9d6
)

hunter_add_version(
    PACKAGE_NAME
    Protobuf
    VERSION
    "3.3.0"
    URL
    "https://github.com/hunter-packages/protobuf/archive/v3.3.0-hunter-1.tar.gz"
    SHA1
    8815a6be8188b2d6c8002924e752018b64658748
)

hunter_add_version(
    PACKAGE_NAME
    Protobuf
    VERSION
    "3.5.2-p0"
    URL
    "https://github.com/hunter-packages/protobuf/archive/v3.5.2-p0.tar.gz"
    SHA1
    0c1eacb460266dea7cd18c2009642fa192c15b70
)

hunter_add_version(
    PACKAGE_NAME
    Protobuf
    VERSION
    "3.6.1.3-p0"
    URL
    "https://github.com/hunter-packages/protobuf/archive/v3.6.1.3-p0.tar.gz"
    SHA1
    5f32dcd70bed20e42cecc53058b8502298c6680a
)

hunter_add_version(
    PACKAGE_NAME
    Protobuf
    VERSION
    "3.6.1.3-p1"
    URL
    "https://github.com/hunter-packages/protobuf/archive/v3.6.1.3-p1.tar.gz"
    SHA1
    120e15e1cc49b3fcc4fc89503ccc1346c9978362
)

hunter_add_version(
    PACKAGE_NAME
    Protobuf
    VERSION
    "3.7.1-p0"
    URL
    "https://github.com/hunter-packages/protobuf/archive/v3.7.1-p0.tar.gz"
    SHA1
	6bfa8d5525039efdf63f40277b20d8d5852c89bf
)

hunter_add_version(
    PACKAGE_NAME
    Protobuf
    VERSION
    "3.10.0-p0"
    URL
    "https://github.com/cpp-pm/protobuf/archive/v3.10.0-p0.tar.gz"
    SHA1
    967cd20c627efb59240508e0a8688f462a9a4086
)

hunter_add_version(
    PACKAGE_NAME
    Protobuf
    VERSION
    "3.11.2-p0"
    URL
    "https://github.com/cpp-pm/protobuf/archive/v3.11.2-p0.tar.gz"
    SHA1
    490beb456fb6934bd4d9f6012c601f6724c2f757
)

hunter_add_version(
    PACKAGE_NAME
    Protobuf
    VERSION
    "3.19.4-p0"
    URL
    "https://github.com/cpp-pm/protobuf/archive/refs/tags/v3.19.4-p0.tar.gz"
    SHA1
    e5b797dbc4e6ad92d0924ae86c130be4354c35b6
)

string(
    COMPARE EQUAL "${CMAKE_SYSTEM_NAME}" "WindowsStore" _hunter_windows_store
)

if(ANDROID OR IOS)
  hunter_cmake_args(
      Protobuf
      CMAKE_ARGS
        protobuf_BUILD_TESTS=OFF
        protobuf_BUILD_PROTOC=OFF
        protobuf_BUILD_PROTOC_BINARIES=OFF
  )
elseif(_hunter_windows_store)
  hunter_cmake_args(
      Protobuf
      CMAKE_ARGS
        protobuf_BUILD_TESTS=OFF
        protobuf_BUILD_PROTOC=OFF
        protobuf_MSVC_STATIC_RUNTIME=OFF # Do not force static runtime
  )
elseif(MSVC)
  hunter_cmake_args(
      Protobuf
      CMAKE_ARGS
        protobuf_BUILD_TESTS=OFF
        protobuf_MSVC_STATIC_RUNTIME=OFF # Do not force static runtime
  )
else()
  hunter_cmake_args(
      Protobuf
      CMAKE_ARGS
        protobuf_BUILD_TESTS=OFF
  )
endif()

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(Protobuf)
hunter_download(PACKAGE_NAME Protobuf)
