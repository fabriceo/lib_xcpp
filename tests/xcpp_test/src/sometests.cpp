
#include "debug_print.h"
#include "XC_core.hpp"

#if 0

namespace XC_TESTS {

void XCPort_test() {

    XCPort ptbd;
    XCPort p1a( XS1_PORT_1A );
    XCPort p1b = { XC::PORT_1B };
    XCPort p4a( XC::PORT_4A );
    XCPort palt(p4a);
    XCPort p4b( XC::PORT_4B, XCPort::OUTPUT_PULLUP, 0 );
    
    ptbd = p4a;
    ptbd = 1;
    ptbd = p4a();
    p4a.set().setPullUp().clrBit(1);
    p4a.setBit(3);

    XCPin  pfutur;
    XCPin  pin1a( p1a );
    XCPin  pin4a3( p4a, 0b1000 );
    pfutur = p1b;
    pfutur = pin1a;
    pfutur = pin1a();
    int x = p4a(1);
    p1b = 2;
    p1a = 0+x;
    p1b.waitEqual(1);

}

void XCTimer_test() {
    XCTimerLocal tlocal;
    tlocal.waitTicks(100);

    XCTimer tnew;
    tnew.waitTicks(100);

}

void XCChanend_test() {

    XCChanend c1;
    XCChanend c2;

    c1.setDest(c2);
    c2.setDest(c1);

    c1.out(0x12345678);
    int res = c2.in();
    (void)res;
    c1.outCT_END();
    c2.checkCT_END();
    c2.outCT_END();
    c1.checkCT_END();

}

void testSelect() {
    XCTimerLocal tmr;
    tmr.setSelect(0);
    tmr.setTriggerTime(tmr(1000)).setModeEvent().setEvent();
    while(1) {
    unsigned res = XC::selectWait();
    switch (res) {
        case 0 : { tmr.setTriggerTime(tmr(100)).setEvent(); 
            printf("tick\n"); break; }
        default: break;
    }
    }
}

XCLock HWlock;

void XCLock_test() {

    HWlock.acquire();
    HWlock.release();

}

void gettime64_test() {
    long long time = XC::getTime64();
    long long mic = XC::micros();
    long long mil = XC::millis();
    printf("time %lld, mic %lld, mil %lld\n",time, mic, mil);
}


XCChanendPort CPR;
XCPortRemote<CPR> PR;
XCPortRemote<CPR> PR_1A(XS1_PORT_1A);
void test_remote() {
    PR_1A.set(1);
    debug_printf("PR_1A = %d\n",PR_1A.peek());
}

};


#endif