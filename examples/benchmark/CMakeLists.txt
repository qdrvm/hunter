cmake_minimum_required(VERSION 3.12)

include("../common.cmake")

project(download-benchmark)

hunter_add_package(benchmark)

find_package(benchmark CONFIG REQUIRED)

add_executable(bench main.cpp)
target_link_libraries(bench benchmark::benchmark)
