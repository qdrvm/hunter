# Copyright (c) 2017, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.12)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(foo)

hunter_add_package(onmt)
find_package(onmt CONFIG REQUIRED)

add_executable(foo foo.cpp)
target_link_libraries(foo onmt::onmt)
