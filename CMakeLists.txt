
cmake_minimum_required(VERSION 3.10)
set(CMAKE_CXX_COMPILER "/usr/bin/g++")
# set the project name

project(misc
VERSION 1.0
LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_executable(calculadora tests/tarea_4.cpp src/treeNode.cpp src/tree.cpp src/infixToPostfix.cpp)
target_include_directories(calculadora PUBLIC ${PROJECT_SOURCE_DIR}/include)



# add the executable