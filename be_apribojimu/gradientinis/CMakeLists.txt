cmake_minimum_required(VERSION 3.10)
project(gradientinis)

set(CMAKE_CXX_STANDARD 14)

add_executable(gradientinis main.cpp)
target_link_libraries(gradientinis -lmgl)