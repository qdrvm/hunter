# Copyright (c) 2017, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.12)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-gst_plugins_bad)

hunter_add_package(gst_plugins_bad)
find_package(gstreamer-bad-video-1.0 CONFIG REQUIRED)

add_executable(foo foo.cpp)
target_link_libraries(foo PUBLIC PkgConfig::gstreamer-bad-video-1.0)
