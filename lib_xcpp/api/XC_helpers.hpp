#ifndef _XC_HELPERS_HPP_
#define _XC_HELPERS_HPP_

#include "XC_conf.hpp"

//various helpers macros

//attribute related helpers
#ifndef XC_UNUSED
#define XC_UNUSED       __attribute__ ((unused))
#endif
#ifndef XC_WEAK
#define XC_WEAK         __attribute__ ((weak))
#endif
#ifndef XC_NOINLINE
#define XC_NOINLINE     __attribute__ ((noinline))
#endif
#ifndef XC_NAKED
#define XC_NAKED        __attribute__ ((naked))
#endif
#ifndef XC_DUAL_ISSUE
#define XC_DUAL_ISSUE   __attribute__ ((dual_issue))
#endif
#ifndef XC_SINGLE_ISSUE
#define XC_SINGLE_ISSUE __attribute__ ((single_issue))
#endif

#ifndef XC_ALIGNED
#define XC_ALIGNED(_X)  __attribute__ ((aligned(_X)))
#endif

#ifndef XC_PACKED
#define XC_PACKED       __attribute__ ((packed))
#endif

//strings handling
#ifndef XC_JOIN0
#define XC_JOIN0(x,y)   x ## y
//concat 2 parameters
#define XC_JOIN(x,y)    XC_JOIN0(x,y)
#endif

#ifndef XC_STRINGIFY
#define XC_STRINGIFY_I(...) #__VA_ARGS__
//generate a string for the given parameter with surrounding ""
#define XC_STRINGIFY(_S)    XC_STRINGIFY_I(_S)
#endif

#ifndef XC_UNIQUE_LABEL
#define XC_UNIQUE_LABEL_II(_BNAME, _CNT)    _BNAME ## _CNT
#define XC_UNIQUE_LABEL_I(_BNAME, _CNT)     XC_UNIQUE_LABEL_II(_BNAME, _CNT)
//provide a unique label by adding the compiler unique counter value
#define XC_UNIQUE_LABEL(_BNAME)             XC_UNIQUE_LABEL_I(_BNAME, __COUNTER__)
#endif


//set the adress of a function in a variable (only for extern "c" linkage)
#define XC_FUNC_ADDRESS(_f,_n)     do { register unsigned _r asm("r11"); asm ("ldap %0," #_f : "=r"(_r)); _n=_r; } while(0)
//set the stacksize of a function in a variable (only for extern "c" linkage)
#define XC_FUNC_NSTACKWORDS(_f,_n) do { asm("ldc %0,  " #_f ".nstackwords"  : "=r"(_n) ); } while (0)
#define XC_NSTACKWORDS(_f)  ( { unsigned s; asm ("ldc %0,  " #_f ".nstackwords"  : "=r"(s) ); s; } )
#define XC_ADDRESS(_f)      ( { register unsigned _r asm("r11"); asm ("ldap %0," #_f : "=r"(_r)); _r; } )



#endif