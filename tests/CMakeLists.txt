cmake_minimum_required(VERSION 3.21)
include($ENV{XMOS_CMAKE_PATH}/xcommon.cmake)
project(lib_xcpp_tests)

add_subdirectory(experiment)
add_subdirectory(xcpp_test)
