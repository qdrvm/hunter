# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.12)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-x11)

hunter_add_package(x11)
find_package(x11 CONFIG REQUIRED)

add_executable(foo foo.cpp)
target_link_libraries(foo PUBLIC PkgConfig::x11)
