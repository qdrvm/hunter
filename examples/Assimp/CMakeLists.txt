# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.12)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-assimp)

# download assimp
hunter_add_package(Assimp)
find_package(Assimp CONFIG REQUIRED)

add_executable(foo foo.cpp)
target_link_libraries(foo Assimp::assimp)
