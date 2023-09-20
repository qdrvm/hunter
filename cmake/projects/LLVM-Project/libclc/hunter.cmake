# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_download)
include(hunter_pick_scheme)

hunter_pick_scheme(DEFAULT url_sha1_llvm_project)

hunter_download(
    PACKAGE_NAME              LLVM-Project
    PACKAGE_COMPONENT         libclc
    PACKAGE_INTERNAL_DEPS_ID "48"
)

