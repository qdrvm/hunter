# Copyright (c) 2017, Sacha Refshauge
# All rights reserved.

cmake_minimum_required(VERSION 3.12)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-Tesseract)

# DOCUMENTATION_START {
hunter_add_package(Tesseract)
find_package(Tesseract CONFIG REQUIRED)

add_executable(example example.cpp)
target_link_libraries(example Tesseract::libtesseract)
# DOCUMENTATION_END }
