# Copyright (c) 2014-2017, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_configuration_types)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_report_broken_package)
include(hunter_source_subdir)

hunter_add_version(
    PACKAGE_NAME
    LLD
    VERSION
    "16.0.1"
    URL
    "https://github.com/llvm/llvm-project/archive/llvmorg-16.0.1.tar.gz"
    SHA1
    6e07606c50c504c7d0da387879e7db893b65381d
)

hunter_add_version(
    PACKAGE_NAME
    LLD
    VERSION
    "17.0.6"
    URL
    "https://github.com/llvm/llvm-project/archive/llvmorg-17.0.6.tar.gz"
    SHA1
    54b1248c4523edfbb5165249ff570bf5ab1d1daa
)

if(HUNTER_LLD_VERSION VERSION_GREATER 15.0.1)
    hunter_source_subdir(LLD SOURCE_SUBDIR lld)
endif()

hunter_configuration_types(LLD CONFIGURATION_TYPES Release)
hunter_pick_scheme(DEFAULT url_sha1_cmake)

if(MSVC_IDE AND HUNTER_LLD_VERSION VERSION_LESS 4.0.1)
  hunter_report_broken_package(
      "LLVM build broken on Visual Studio, see:"
      "http://llvm.1065342.n5.nabble.com/Install-Problem-of-Compiler-rt-with-Visual-Studio-Express-2013-for-Windows-Desktop-td66575.html"
      " (use MINGW or NMake generators)"
  )
endif()

hunter_cacheable(LLD)
hunter_download(PACKAGE_NAME LLD)
