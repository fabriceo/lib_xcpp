#include <xs1.h>
#include <platform.h>

#if 0 //def XSCOPE
#include <xscope.h>
void xscope_user_init() {
    xscope_register(0, 0, "", 0, "");
    xscope_config_io(XSCOPE_IO_BASIC);
}
#endif

#include "debug_print.h"
void debug_printf(char const fmt[], ...) asm("debug_printf");

#include "XC_core.hpp"

XCPort P8C ( XS1_PORT_8C, XCPort::OUTPUT_DRIVE, 1 );


volatile unsigned x;
int main() {
    //XC::setTileAppStarted();
    x = 33;
    //P8C.setMode( XCPort::OUTPUT_DRIVE );
    P8C = 1;
    XCPortBit P8C1( P8C, 2 );
    P8C1 = 1;
    debug_printf("P8C = 0x%x\n",+P8C);
    return 0;
}