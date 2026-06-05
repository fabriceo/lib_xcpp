
#include "debug_print.h"
void debug_printf(char const fmt[], ...) asm("debug_printf");
#include "XC_core.hpp"

XCPort P8C( XC::tile0, XS1_PORT_8C, XCPort::OUTPUT_DRIVE );

XCPortBit P8C_b2( P8C, 2);

struct tpar { 
    unsigned synchronnizer;
    unsigned count;
    void getsync() { count=0; synchronnizer = 0x203; }
    bool registerme() { return true; }
    void waitsync() { }
    void waitjoin() { }
    void msync() { }
    void mjoin() { }
}; 


void task1(tpar &T, unsigned X) {
    if (T.registerme()) return;
    T.waitsync();
    while(1) {}
    T.waitjoin();
}

void maintask() {
    tpar T;
    T.getsync();
    task1(T,1);
    task1(T,2);
    T.msync();
    while(1) {

    }
    T.mjoin();
}

void initPort() {

    P8C = 1;
    P8C_b2 = 1;

    //unsigned X = P8C;
    debug_printf("P8C = %x\n",+P8C);
    maintask();
}
