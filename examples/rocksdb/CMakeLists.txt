cmake_minimum_required(VERSION 3.12)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(rocksdb-test)

# DOCUMENTATION_START {
hunter_add_package(rocksdb)
find_package(RocksDB CONFIG REQUIRED)

add_executable(rocksdb-test test.cpp)
target_link_libraries(rocksdb-test PUBLIC RocksDB::rocksdb)
# DOCUMENTATION_END }
