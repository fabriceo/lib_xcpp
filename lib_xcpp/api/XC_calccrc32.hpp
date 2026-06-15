#ifndef _XC_CALCRC32_HPP_
#define _XC_CALCRC32_HPP_

#include "XC_conf.hpp"

#include "XC_asm.hpp"

namespace XC {
//software version of the xcore crc32 instruction
inline void crc32_(unsigned int & Crc, unsigned int Data, unsigned int poly) {
 for (unsigned i = 0; i < 32; i++) {
    asm volatile("###crc2_:");
     int xorBit = (Crc & 1);
     Crc >>= 1;
     Crc |= ((Data & 1) << 31);
     Data >>= 1;
     if (xorBit) Crc ^= poly;
 }
 }

//calc crc for a given array and size (size should be in words not bytes)
inline unsigned calcCRC(void * addr, unsigned size) {
    unsigned int * p = (unsigned int *)addr;
    const unsigned int poly = 0xEDB88320;
    unsigned int crc = 0xFFFFFFFF;
    for (int i=0; i<size; i++,p++) XC::crc32( crc, *p, poly);
    return crc ? crc : poly;
}

//compute a crc on multiple 32 bits words for any record of class T.
//possibility to exclude some words at the begining with delta >0 or from the end with delta<0
template<class T>
unsigned calcCRCany(T &rec, int delta = 0) {
    unsigned int * p = (unsigned *)&rec;
    if ((unsigned)p & 3) __builtin_trap();
    unsigned int size = (sizeof(T)+3)/4;
    if (delta > 0) { size -= delta; p += delta; } else size -= (-delta);
    const unsigned int poly = 0xEDB88320;
    unsigned int crc = 0xFFFFFFFF;
    for (int i=0; i<size; i++,p++) XC::crc32(crc,*p,poly);
    return crc ? crc : poly;
}

};

#endif //_XC_CALCRC32_HPP_