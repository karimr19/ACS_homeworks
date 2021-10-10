cmake_minimum_required(VERSION 3.20)
project(AVS_homework_1)

set(CMAKE_CXX_STANDARD 17)
set(BUILD_DIR "${CMAKE_BINARY_DIR}")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${BUILD_DIR}/../bin")

set(BINARY_DIR "${CMAKE_BINARY_DIR}")
add_executable(
        AVS_homework_1

        # source files
        main.cpp
        container.cpp
        language.cpp
        procedural.cpp
        object_oriented.cpp
        functional.cpp
        checkers.cpp
        rnd.cpp

        # header files
        container.h
        language.h
        procedural.h
        object_oriented.h
        functional.h
        checkers.h
        rnd.h
        )