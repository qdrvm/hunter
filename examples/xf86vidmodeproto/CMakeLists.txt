# Copyright (c) 2016, Alexandre Pretyman
# All rights reserved.

cmake_minimum_required(VERSION 3.12)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-xf86vidmodeproto)

# download xf86vidmodeproto
hunter_add_package(xf86vidmodeproto)
