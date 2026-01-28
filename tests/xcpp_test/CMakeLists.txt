cmake_minimum_required(VERSION 3.21)
include($ENV{XMOS_CMAKE_PATH}/xcommon.cmake)
project(xcpp_test)

set(APP_HW_TARGET XK-EVK-XU316)

set(APP_DEPENDENT_MODULES "lib_logging" "lib_xcpp")

set(BASE_BUILD_FLAGS        -Wall -Wno-switch-default -Os -g 
                            -report -save-temps -fcomment-asm -fasm-linenum
                            -DPRINTF=1 -DXSCOPE=1 -fxscope -DDEBUG_PRINT_ENABLE=1)

                            #-fcomment-asm -fasm-linenum
#include(${CMAKE_CURRENT_LIST_DIR}/../../examples/deps.cmake)

#
set(APP_COMPILER_FLAGS_EVK ${BASE_BUILD_FLAGS} 
    -DOTHERFLAG=1 -DXC_REPORT_RESOURCES=1
    )

set(XMOS_SANDBOX_DIR ${CMAKE_CURRENT_LIST_DIR}/../../..)

XMOS_REGISTER_APP()
