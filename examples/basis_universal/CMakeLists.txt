# Copyright (c) 2016-2020, Rahul Sheth, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.12)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-basis_universal)

# DOCUMENTATION_START {
hunter_add_package(basis_universal)
find_package(basis_universal CONFIG REQUIRED)

add_executable(boo boo.cpp)
target_link_libraries(boo PUBLIC basis_universal::basisu_encoder)
# DOCUMENTATION_END }
