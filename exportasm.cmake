
foreach (REGISTERED_TARGET ${APP_BUILD_TARGETS})
    add_custom_command(
        TARGET ${REGISTERED_TARGET}
        POST_BUILD
        COMMAND xobjdump -D -t -o $<TARGET_FILE_DIR:${REGISTERED_TARGET}>/${REGISTERED_TARGET}.asm $<TARGET_FILE:${REGISTERED_TARGET}> 
        COMMENT "Creating assembly   ${REGISTERED_TARGET}.asm"
    )
endforeach ()

