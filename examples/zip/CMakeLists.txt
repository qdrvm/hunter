# Copyright (c) 2016-2019, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.12)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-zip)

# DOCUMENTATION_START {
hunter_add_package(zip)
find_package(zip CONFIG REQUIRED)

add_executable(boo boo.cpp)
target_link_libraries(boo PUBLIC zip::zip)
# DOCUMENTATION_END }
