

#include <xs1.h>
#include <platform.h>
#include "debug_print.h"
void debug_printf(char const fmt[], ...) asm("debug_printf");
#include "XC_scheduler.h"
#include "XC_core.hpp"

XC_UNUSED void testLeds() {
    asm volatile("#testLeds:");
XCPort PLEDS(XS1_PORT_4C);  //4 LEDS on EVK
PLEDS.setMode(XCPort::OUTPUT_DRIVE, 0);

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
        led3 = led2; led2 = 0; 
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

void testOther() {
    debug_printf("Hello!\n");
    int p=0,q=0,t=0,u=0,v=0,w=0;
    XCPort P4B(XS1_PORT_4B);    //TILE 1
    P4B.setMode(XCPort::OUTPUT_DRIVE,8+2);
    delay_microseconds(10);
    P4B.setMode(XCPort::INPUT_PULLDOWN);
    u = P4B.getTriggerTime();
    P4B.setCondNotEqual(10);
    p = P4B.in_();
    v = P4B.getTriggerTime();
    delay_microseconds(10);
    P4B.setd(p);
    q = P4B.in_();
    w = P4B.getTriggerTime();
    u = v - u;
    v = w - v;
    debug_printf("in P4B in = %d, peek = %d, t = %d, u = %d, v = %d\n",p,q, t, u, v);
    while(1) {}
}

void testZero() {
    debug_printf("Hello!\n");
}


XCPort PLEDS(XS1_PORT_4C);  //4 LEDS on EVK

extern "C" void blinkLedCooperative(int n) {
    XCPortBit led(PLEDS,n);
    led = 0;
    XCSchedulerYieldDelay(20000000 * n);
    for (int i=0; i<20; i++) {
        led = !led;
        XCSchedulerYieldDelay(30000000*(n+1));
    }
    debug_printf("finished %d\n",n);
}



void testScheduler() {
    PLEDS.setMode(XCPort::OUTPUT_DRIVE, 0);
    XCSchedulerCreateTaskParam(blinkLedCooperative,0);
    XCSchedulerCreateTaskParam(blinkLedCooperative,1);
    XCSchedulerCreateTaskParam(blinkLedCooperative,2);
    while (1) { 
        if (0 == XCSchedulerYield()) break; 
        if (PLEDS.getd() & 7) PLEDS.clrBit(3); else PLEDS.setBit(3);
    }
    PLEDS.clr();
    debug_printf("finished ALL\n");
}

void printtus(int n) {

    XCTimerMicros tus;
    int t = 5+XC::getTime();
    tus.clr();
    debug_printf("%d tus1 = %d, tus2 = %d, sub = %d, tus = %d, t = %d\n",n,XCtimeStart1,XCtimeStart2,XCtimeStart2-XCtimeStart1,(unsigned)tus.get(),12+t);
}

extern "C" void tile0_task1() { testScheduler(); };
extern "C" void tile0_task2() { };
extern "C" void tile1_task1() {  };
extern "C" void tile1_task2() {  };
