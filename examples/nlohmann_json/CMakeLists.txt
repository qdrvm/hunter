cmake_minimum_required(VERSION 3.12)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(dowload-nlohmann-json)

# DOCUMENTATION_START {
hunter_add_package(nlohmann_json)
find_package(nlohmann_json CONFIG REQUIRED)

add_executable(main main.cpp)
target_link_libraries(main PUBLIC nlohmann_json::nlohmann_json)
# DOCUMENTATION_END }
