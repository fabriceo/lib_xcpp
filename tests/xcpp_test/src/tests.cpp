

#include <xs1.h>
#include <platform.h>
#include "debug_print.h"
#include "XC_core.hpp"

void testLeds() {
PLEDS.enable().setMode(XCPort::OUTPUT_DRIVE, 0);
    asm volatile("#testLeds:");
XCPort PLEDS(XS1_PORT_4C);  //4 LEDS on EVK
XCPortBit led0(PLEDS);
XCPortBit led1(PLEDS, 1);
XCPortBit led2(PLEDS, 2);
XCPortBit led3(PLEDS, 3);
    debug_printf("Hello!\n");
    debug_printf("testLeds(), size PLED = %d\n",sizeof(PLEDS));
XCTimerMicros tus;
    for (int i=0; i<2; i++) {
        //PLEDS = 0b0101;
        asm volatile("#pled1:");
        PLEDS[0] = 1;
        PLEDS[2] = 1;
        PLEDS[1] = 0;
        led3 = PLEDS[1];
        asm volatile("#pled2:");
        debug_printf("pled = %d %d %d %d %x\n",+PLEDS[0],+PLEDS[1],+PLEDS[2],+PLEDS[3],0x1234);
        //debug_printf("leds = %d %d %d %d %x\n",+led0,+led1,+led2,+led3,0x1234);
        tus.wait(500000);
        asm volatile("#pled2:");
        PLEDS[1] = PLEDS[0];
        PLEDS[3] = led1;
        PLEDS[0] = 0;
        led2 = 0;
        //PLEDS = 0b1010;
        //debug_printf("pled = %d %d %d %d %x\n",+PLEDS[0],+PLEDS[1],+PLEDS[2],+PLEDS[3],0x1234);
        debug_printf("leds = %d %d %d %d %x\n",+led0,+led1,+led2,+led3,0x1234);
        tus.wait(500000);
    }
    PLEDS=0;
    tus.wait(500000);
    for (int i=0; i<2; i++) {
        led0.set();
        tus.wait(500000);
        led0.clr(); led1 = 1;
        tus.wait(500000);
        led1 = 0; led2 = 1;
        tus.wait(500000);
        led2 = 0; led3 = led2;
        tus.wait(500000);
        led3 = 0; 
    }
    PLEDS.clr().clrTriggerTime();
    unsigned short ts1 = PLEDS.getTriggerTime();
    unsigned short ts2 = ts1 + 10000;
    int time = XC::getTime();
    PLEDS.setTriggerTime(ts2).set(0);
    unsigned short ts3 = ts2 + 10000;
    PLEDS.setTriggerTime(ts3).set(0);
    unsigned short ts4 = PLEDS.getTriggerTime();
    time = XC::getTime() - time;
    debug_printf("getTriggerTime ts1 = %d, ts2 = %d, ts3 = %d, ts4 = %d, time = %d\n",ts1, ts2, ts3, ts4, time);

}

extern "C" void tile0_task1() { testLeds(); };
extern "C" void tile0_task2() { };
extern "C" void tile1_task1() { };
extern "C" void tile1_task2() { };
