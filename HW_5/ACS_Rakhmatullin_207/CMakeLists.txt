cmake_minimum_required(VERSION 3.20)
project(HW_5)

set(CMAKE_CXX_STANDARD 17)

set(BUILD_DIR "${CMAKE_BINARY_DIR}")

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${BUILD_DIR}/../bin")

set(BINARY_DIR "${CMAKE_BINARY_DIR}}")

add_executable(HW_5 main.cpp)
