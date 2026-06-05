

#include <xs1.h>
#include <platform.h>
#include "debug_print.h"
void debug_printf(char const fmt[], ...) asm("debug_printf");
#include "XC_scheduler.h"
#include "XC_core.hpp"


extern "C" void tile0_task1() {  };
extern "C" void tile0_task2() { };
extern "C" void tile1_task1() { };
extern "C" void tile1_task2() {  };
