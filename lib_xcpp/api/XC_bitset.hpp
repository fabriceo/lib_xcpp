#ifndef _XC_BITSET_HPP_
#define _XC_BITSET_HPP_

#include "XC_conf.hpp"

namespace XC {
    //helper object, to access bits from a given word with operator [x] 
    //ex : unsigned word; XC::bitSet w(word); w = 2; w[2] = w[1]; -> w = 6
    class bitSet {
        unsigned & word;
    public:
        explicit bitSet(unsigned & word_) : word(word_) {}

            class proxy {
                unsigned & word;
                unsigned bit;
            public:
                proxy(unsigned & word_, unsigned bit_) : word(word_), bit(bit_) {}
                proxy& operator = (const unsigned v) {
                    if (v) word |= (1u << bit); else word &= ~(1u << bit);
                    return *this;
                }
                proxy& operator = (const proxy& rhs) {
                    return *this = static_cast<unsigned>(rhs);
                }
                operator unsigned () const { return (word >> bit) & 1; }    
            };
        bitSet&  set(const unsigned w) { word = w; return *this; }
        bitSet&  setBit(const unsigned w) { return set(word | (1UL << w)); }
        bitSet&  setBit(const unsigned w1,const unsigned w2) { return setBit(w1).setBit(w2); }
        bitSet&  setBit(const unsigned w1,const unsigned w2,const unsigned w3) { return setBit(w1,w2).setBit(w3); }
        bitSet&  setBit(const unsigned w1,const unsigned w2,const unsigned w3,const unsigned w4) { return setBit(w1,w2,w3).setBit(w4); }
        bitSet&  setBit(const unsigned w1,const unsigned w2,const unsigned w3,const unsigned w4,const unsigned w5) { return setBit(w1,w2,w3,w4).setBit(w5); }
        bitSet&  setBit(const unsigned w1,const unsigned w2,const unsigned w3,const unsigned w4,const unsigned w5,const unsigned w6) { return setBit(w1,w2,w3,w4,w5).setBit(w6); }
        bitSet&  setBit(const unsigned w1,const unsigned w2,const unsigned w3,const unsigned w4,const unsigned w5,const unsigned w6,const unsigned w7) { return setBit(w1,w2,w3,w4,w5,w6).setBit(w7); }
        bitSet&  setBit(const unsigned w1,const unsigned w2,const unsigned w3,const unsigned w4,const unsigned w5,const unsigned w6,const unsigned w7,const unsigned w8) { return setBit(w1,w2,w3,w4,w5,w6,w7).setBit(w8); }
        bitSet&  clrBit(const unsigned w) { return set(word & ~(1UL << w)); }
        bitSet&  clrBit(const unsigned w1,const unsigned w2) { return clrBit(w1).clrBit(w2); }
        bitSet&  clrBit(const unsigned w1,const unsigned w2,const unsigned w3) { return clrBit(w1,w2).clrBit(w3); }
        bitSet&  clrBit(const unsigned w1,const unsigned w2,const unsigned w3,const unsigned w4) { return clrBit(w1,w2,w3).clrBit(w4); }
        bitSet&  clrBit(const unsigned w1,const unsigned w2,const unsigned w3,const unsigned w4,const unsigned w5) { return clrBit(w1,w2,w3,w4).clrBit(w5); }
        bitSet&  clrBit(const unsigned w1,const unsigned w2,const unsigned w3,const unsigned w4,const unsigned w5,const unsigned w6) { return clrBit(w1,w2,w3,w4,w5).clrBit(w6); }
        bitSet&  clrBit(const unsigned w1,const unsigned w2,const unsigned w3,const unsigned w4,const unsigned w5,const unsigned w6,const unsigned w7) { return clrBit(w1,w2,w3,w4,w5,w6).clrBit(w7); }
        bitSet&  clrBit(const unsigned w1,const unsigned w2,const unsigned w3,const unsigned w4,const unsigned w5,const unsigned w6,const unsigned w7,const unsigned w8) { return clrBit(w1,w2,w3,w4,w5,w6,w7).clrBit(w8); }
        unsigned get() const { return word; }
        unsigned getBit(const unsigned bit) const { return (word >> bit) & 1; }
        unsigned get(const unsigned bit)    const { return getBit(bit); }
        operator unsigned () const { return get(); }
        bitSet&  operator = (const unsigned rhs) { set(rhs); return *this; }
        proxy    operator[] (const unsigned i) { return proxy(word,i); }
    };

    //useful to print all the bit of a word either as 1 / 0 or plein text
    //see XC_core.cpp
    char * bitFieldToStr(const char * str[], unsigned val, unsigned max, unsigned invert = 0);
};


#endif