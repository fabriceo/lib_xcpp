set(LIB_NAME lib_xcpp)
set(LIB_VERSION 1.0.0)
set(LIB_INCLUDES api)
set(LIB_COMPILER_FLAGS -O3 -mno-dual-issue -fno-threadsafe-statics)
set(LIB_DEPENDENT_MODULES "lib_logging")
set(LIB_OPTIONAL_HEADERS "")

XMOS_REGISTER_MODULE()
