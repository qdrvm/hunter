# Copyright (c) 2016-2020, Rahul Sheth, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.12)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-smol-v)

# DOCUMENTATION_START {
hunter_add_package(smol-v)
find_package(smol-v CONFIG REQUIRED)

add_executable(boo boo.cpp)
target_link_libraries(boo PUBLIC smol-v::smol-v)
# DOCUMENTATION_END }
