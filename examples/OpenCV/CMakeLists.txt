# Copyright (c) 2015, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.12)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-opencv)

# DOCUMENTATION_START {
hunter_add_package(OpenCV)
find_package(OpenCV REQUIRED)

add_executable(foo foo.cpp)
target_link_libraries(foo PRIVATE ${OpenCV_LIBS})
# DOCUMENTATION_END }

message("OpenCV_DIR: ${OpenCV_DIR}")
message("OpenCV_CONFIG: ${OpenCV_CONFIG}")
message("OpenCV_LIBS: ${OpenCV_LIBS}")
