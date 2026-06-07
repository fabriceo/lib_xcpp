#include "debug_print.h"
//for compatibility with c++
void debug_printf(char const fmt[], ...) asm("debug_printf");

#include "XC_core.hpp"
#include <string.h> //for memset
#include <stdlib.h> //for malloc

void tasksTest();

XCPort P8C ( XC::tile0, XS1_PORT_8C, XC::OUTPUT_DRIVE, 1 );

XCPortBit P8C2 ( P8C, 2);

unsigned ltid = XC::local_tile_id();

extern "C" void main0(XCChanend ch) {
    XC::setTileMainStarted();
    //debug_printf("val %d\n",EEPROM.array[8191]);
    P8C=1;
    P8C2.flip();
    debug_printf("P8C x%x\n", +P8C);
    char val = ch.inByte();
    ch.checkCT_END();
    debug_printf("P8D x%x\n", val);
    tasksTest();
    debug_printf("jobend\n");
}

extern "C" void main1(XCChanend ch) {
    XC::setTileMainStarted();
    XCPort P8D ( XS1_PORT_8D, XC::INPUT_PULLUP );
    char val = P8D;
    ch.outByte(val).outCT_END();
}
