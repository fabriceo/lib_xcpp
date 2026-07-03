#ifndef _XC_EXTERNS_HPP_
#define _XC_EXTERNS_HPP_

//from standard xmos libraries
extern unsigned __libc_hwlock;          //initialized by __alloc_libc_hwlock with a hw lock ressource
extern volatile unsigned __timers[8];   //address of the list of timers potentially allocated by main() with a main.xc file

#endif //_XC_EXTERNS_HPP_