

#if 1 || __INTELLISENSE__
#include "debug_print.h"
void debug_printf(char const fmt[], ...) asm("debug_printf");

#include "XC_core.hpp"

extern "C" void task1(unsigned param) {
    debug_printf("job t1 %d\n",param);
}
extern "C" void task2(unsigned param) {
    debug_printf("job t2 %d\n",param);
}

void tasksTest() {
    XC::jobs JOBS;
    XC::onejob t1( task1, XC_NSTACKWORDS(task1), 1234 ); 
    XC::onejob t2( task2, XC_NSTACKWORDS(task2), 5678 ); 
    JOBS( t1, t2 );
    debug_printf("job t3\n");
}

#endif