# Copyright (c) 2016-2019, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.2)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-scale)

# DOCUMENTATION_START {
hunter_add_package(Boost)
find_package(Boost CONFIG REQUIRED)
    
hunter_add_package(scale)
find_package(scale CONFIG REQUIRED)

add_executable(boo main.cpp)
target_link_libraries(boo PUBLIC scale::scale scale::scale_encode_append)
# DOCUMENTATION_END }
