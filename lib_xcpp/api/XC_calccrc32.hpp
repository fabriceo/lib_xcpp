#ifndef _XC_CALCRC32_HPP_
#define _XC_CALCRC32_HPP_

#include "XC_conf.hpp"

#include "XC_asm.hpp"

namespace XC {

//software version of the xcore crc32 instruction
inline void crc32sw(unsigned int & Crc, unsigned int Data, unsigned int poly) {
 for (unsigned i = 0; i < 32; i++) {
     int xorBit = (Crc & 1);
     Crc >>= 1;
     Crc |= (Data << 31);
     Data >>= 1;
     if (xorBit) Crc ^= poly;
 }
 }

//calc crc for a given array and size (size must be in words not bytes)
//crc should eventually be initialized with FFFFFFFF
inline void calcCRCblock(unsigned &crc, void * addr, unsigned size) {
    unsigned int * p = (unsigned int *)addr;
    const unsigned int poly = 0xEDB88320;
    unsigned int res = crc;
    for (int i=0; i<size; i++,p++) XC::crc32( res, *p, poly);
    crc = res;
}

//calc crc for a given array and size (size must be in words not bytes)
//in case of zero, returns poly
inline unsigned calcCRC(void * addr, unsigned size) {
    unsigned int crc = 0xFFFFFFFF;
    calcCRCblock(crc,addr,size);
    return crc;
}

//compute a crc on multiple 32 bits words for any record of class T.
//possibility to exclude some words at the begining with delta >0 or from the end with delta<0
//object is
template<class T>
unsigned calcCRCany(T &rec, int delta = 0) {
    unsigned int * addr = (unsigned *)&rec;
    unsigned int size = (sizeof(T)+3)/4;
    if (delta > 0) { 
        size -= delta; addr += delta; 
    } else size += delta;
    return calcCRC(addr,size);
}

template<class T>
unsigned calcCRCanyButLast(T &rec) {
    unsigned int * addr = (unsigned *)&rec;
    unsigned int * addrcrc = (unsigned *)&rec.crc;
    unsigned int size = ((unsigned)addrcrc - (unsigned)addr)/4;
    return calcCRC(addr,size);
}

template<class T>
unsigned calcCRCanyButFirst(T &rec) {
    return calcCRCany(rec,1);
}

template<class T>
bool equalAny(T &A, T &B, int delta = 0) {
    unsigned int *p = (unsigned *)&A;
    unsigned int *q = (unsigned *)&B;
    unsigned int size = (sizeof(T)+3)/4;
    if (delta > 0) { 
        size -= delta; p += delta; q += delta;
    } else size += delta;
    for (int i=0; i<size; i++,p++,q++) 
        if(*p != *q) return false;
    return true;
}

};

#endif //_XC_CALCRC32_HPP_