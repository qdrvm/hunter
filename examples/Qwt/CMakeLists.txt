# Copyright (c) 2016-2018, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.12)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-Qwt)

# DOCUMENTATION_START {
hunter_add_package(Qwt)
find_package(Qwt CONFIG REQUIRED)

add_executable(boo boo.cpp)
target_link_libraries(boo PUBLIC Qwt::qwt)
# DOCUMENTATION_END }
