# Copyright (c) 2016-2017, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.12)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-coreaudio)

find_package(coreaudio REQUIRED)

add_executable(foo foo.mm)
target_link_libraries(foo PUBLIC coreaudio::coreaudio)
