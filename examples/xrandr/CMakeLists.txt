# Copyright (c) 2016, Alexandre Pretyman
# All rights reserved.

cmake_minimum_required(VERSION 3.12)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-xrandr)

# download xrandr
hunter_add_package(xrandr)
