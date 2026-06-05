cmake_minimum_required(VERSION 3.21)
include($ENV{XMOS_CMAKE_PATH}/xcommon.cmake)
project(experiment)

#set(APP_HW_TARGET XK-EVK-XU316)
set(APP_HW_TARGET NAX1-XU316)

set(APP_DEPENDENT_MODULES "lib_logging" "lib_xcpp")

set(BASE_BUILD_FLAGS        -Wall -Wno-switch-default -O0
                            -report -save-temps -fcomment-asm -fasm-linenum -fcmdline-buffer-bytes=200 
                            )

set(APP_COMPILER_FLAGS_XTAG ${BASE_BUILD_FLAGS} 
                            -g 
                            -DPRINTF=1 -DXSCOPE=1 -fxscope -DDEBUG_PRINT_ENABLE=1
                            -DOTHERFLAG=1 -DXC_REPORT_RESOURCES=1
                            )
set(APP_COMPILER_FLAGS_FLASH ${BASE_BUILD_FLAGS} 
                            -DFLASH=1
                            )

set(XMOS_SANDBOX_DIR ${CMAKE_CURRENT_LIST_DIR}/../../..)

XMOS_REGISTER_APP()

#this generate an .asm file from xobjdump
foreach (REGISTERED_TARGET ${APP_BUILD_TARGETS})
    add_custom_command(
        TARGET ${REGISTERED_TARGET}
        POST_BUILD
        COMMAND xobjdump -D -o $<TARGET_FILE_DIR:${REGISTERED_TARGET}>/${REGISTERED_TARGET}.asm $<TARGET_FILE:${REGISTERED_TARGET}> 
        COMMENT "Creating assembly   ${REGISTERED_TARGET}.asm"
    )
endforeach ()
