cmake_minimum_required(VERSION 3.21)
include($ENV{XMOS_CMAKE_PATH}/xcommon.cmake)
project(examples_app_1)

if(${CMAKE_CURRENT_LIST_DIR} MATCHES "/Users/fabrice/github/NAX1")
    set(APP_HW_TARGET   NAX1-XU316)
    set(USER_FLAG       -DXC_REPORT_RESOURCES=1)
else()
    set(APP_HW_TARGET   XK-EVK-XU316)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/../deps.cmake)

set(APP_DEPENDENT_MODULES "lib_logging" "lib_xcpp")

set(BASE_BUILD_FLAGS        -Wall -Wno-switch-default -fno-threadsafe-statics 
                            -fcmdline-buffer-bytes=1    #this enables capturing _get_cmdline function
                            -O3 -D_OPT_=3 -mno-dual-issue -report -save-temps 
                            )

set(APP_COMPILER_FLAGS_XTAG ${BASE_BUILD_FLAGS} 
                            -g -DXSCOPE=1 -fxscope 
                            -DPRINTF=1 -DDEBUG_PRINT_ENABLE=1
                            ${USER_FLAG}
                            )

set(XMOS_SANDBOX_DIR ${CMAKE_CURRENT_LIST_DIR}/../../..)

XMOS_REGISTER_APP()

include(${CMAKE_CURRENT_LIST_DIR}/../../exportasm.cmake)
