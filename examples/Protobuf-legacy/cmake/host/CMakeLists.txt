# CMake project to install protobuf::protoc from hunter Protobuf package
cmake_minimum_required(VERSION 3.12)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include(${CMAKE_CURRENT_SOURCE_DIR}/../../../../gate/cmake/HunterGate.cmake)
HunterGate(URL "${HUNTER_HOST_URL}" SHA1 "${HUNTER_HOST_SHA1}")

project(download-Protobuf-host)

hunter_add_package(Protobuf)
