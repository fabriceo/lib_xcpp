cmake_minimum_required(VERSION 3.21)
include($ENV{XMOS_CMAKE_PATH}/xcommon.cmake)
project(xcpp_test)

set(APP_HW_TARGET XK-EVK-XU316)

set(APP_DEPENDENT_MODULES "lib_logging" "lib_xcpp")

set(BASE_BUILD_FLAGS        -Wall -Wno-switch-default -Os -g 
                            -report -save-temps -fcomment-asm -fasm-linenum -fcmdline-buffer-bytes=200 
                            -DPRINTF=1 -DXSCOPE=1 -fxscope -DDEBUG_PRINT_ENABLE=1)

                            #-fcomment-asm -fasm-linenum

set(APP_COMPILER_FLAGS_EVK ${BASE_BUILD_FLAGS} 
    -DOTHERFLAG=1 -DXC_REPORT_RESOURCES=1
    )

set(XMOS_SANDBOX_DIR ${CMAKE_CURRENT_LIST_DIR}/../../..)

XMOS_REGISTER_APP()

foreach (REGISTERED_TARGET ${APP_BUILD_TARGETS})
    add_custom_command(
        TARGET ${REGISTERED_TARGET}
        POST_BUILD
        COMMAND xobjdump -D -o $<TARGET_FILE_DIR:${REGISTERED_TARGET}>/${REGISTERED_TARGET}.asm $<TARGET_FILE:${REGISTERED_TARGET}> 
        COMMENT "Creating assembly   ${REGISTERED_TARGET}.asm"
    )
endforeach ()
