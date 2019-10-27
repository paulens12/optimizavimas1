cmake_minimum_required(VERSION 3.15)
project(gradientinis)

set(CMAKE_CXX_STANDARD 14)

add_executable(gradientinis main.cpp)
include_directories(../../mathgl/include)
find_library(MATHGL_LIB libmgl ../../mathgl/cmake-build-debug/src)
target_link_libraries(gradientinis LINK_PUBLIC ${MATHGL_LIB})