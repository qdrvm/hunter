# Copyright (c) 2015, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.12)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-curl)

hunter_add_package(CURL)
find_package(CURL CONFIG REQUIRED)


add_executable(foo foo.cpp)


target_link_libraries(foo PRIVATE CURL::libcurl)
