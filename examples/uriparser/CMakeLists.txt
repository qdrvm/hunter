# Copyright (c) 2016-2020, Rahul Sheth, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.12)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-uriparser)

# DOCUMENTATION_START {
hunter_add_package(uriparser)
find_package(uriparser CONFIG REQUIRED)

add_executable(boo boo.cpp)
target_link_libraries(boo PUBLIC uriparser::uriparser)
# DOCUMENTATION_END }
