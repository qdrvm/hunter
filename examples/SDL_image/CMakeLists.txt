cmake_minimum_required(VERSION 3.12)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(SDL_image-test)

hunter_add_package(SDL_image)
find_package(SDL_image CONFIG REQUIRED)

if(ANDROID)
  add_library(main SHARED main.cpp)
else()
  add_executable(main main.cpp)
endif()

# Fix MinGW / MSYS build
if(MINGW OR MSYS)
target_link_libraries(main
    mingw32
)
endif()

target_link_libraries(main
    SDL_image::SDL_image
    SDL2::SDL2main
    SDL2::SDL2)
