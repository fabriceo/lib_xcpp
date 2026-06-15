#ifndef _XC_TYPES_ENUMS_HPP_
#define _XC_TYPES_ENUMS_HPP_

#include "XC_conf.hpp"

#include "XC_helpers.hpp"

namespace XC {
//some basic types used in XC classes

    typedef enum : uint8_t  { false8, true8 } bool8;
    typedef enum : uint32_t { false32, true32 } bool32;

    typedef enum { tileNull = 0,
        tile0 = 0x8002, tile1 = 0x8003,
    } TileID_t;

    //resource type as unsigend integer representing resource adress in the processor
    typedef unsigned Resource_t;
    //xcore identifier to allocate a resource type with getr instruction
    typedef enum  {
        TYPE_PORT    = 0, //non allocatable
        TYPE_TIMER   = 1, TYPE_CHANEND = 2, TYPE_SYNC    = 3, TYPE_THREAD  = 4, TYPE_LOCK    = 5, 
        TYPE_CLKBLK  = 6, TYPE_SWMEM   = 8, TYPE_PS      =11, TYPE_CONFIG  =12 //non allocatable
    } ResourceType_t;

    //xcore identifier for each clock block
    typedef enum { 
        CLK_REF    = 0x001, CLK_XCORE = 0x101,
        CLKBLK_REF = 0x006, CLKBLK_1  = XS1_CLKBLK_1, CLKBLK_2 = XS1_CLKBLK_2, CLKBLK_3 = XS1_CLKBLK_3, CLKBLK_4 = XS1_CLKBLK_4, CLKBLK_5 = XS1_CLKBLK_5,
    } Clock_t;

    // list of all XMOS ports, not realy used
    typedef enum {
        PORT_1A = XS1_PORT_1A,  PORT_1B = XS1_PORT_1B,  PORT_1C = XS1_PORT_1C,  PORT_1D = XS1_PORT_1D,  //one bit ports
        PORT_1E = XS1_PORT_1E,  PORT_1F = XS1_PORT_1F,  PORT_1G = XS1_PORT_1G,  PORT_1H = XS1_PORT_1H,  //one bit ports
        PORT_1I = XS1_PORT_1I,  PORT_1J = XS1_PORT_1J,  PORT_1K = XS1_PORT_1K,  PORT_1L = XS1_PORT_1L,  //one bit ports
        PORT_1M = XS1_PORT_1M,  PORT_1N = XS1_PORT_1N,  PORT_1O = XS1_PORT_1O,  PORT_1P = XS1_PORT_1P,  //one bit ports

        PORT_4A = XS1_PORT_4A,  PORT_4B = XS1_PORT_4B,  PORT_4C = XS1_PORT_4C,  PORT_4D = XS1_PORT_4D,  //4 bits ports
        PORT_4E = XS1_PORT_4E,  PORT_4F = XS1_PORT_4F,                                                  //4 bits ports

        PORT_8A = XS1_PORT_8A,  PORT_8B = XS1_PORT_8B,  PORT_8C = XS1_PORT_8C,  PORT_8D = XS1_PORT_8D,  //8 bits ports

        PORT_16A= XS1_PORT_16A, PORT_16B= XS1_PORT_16B, PORT_16C= XS1_PORT_16C, PORT_16D= XS1_PORT_16D, //16 bits ports

        PORT_32A= XS1_PORT_32A, PORT_32B= XS1_PORT_32B,                                                 //32 bits ports
  } Port_t;

  typedef enum { 
        UNUSED, UNDEFINED, INPUT, INPUT_PULLUP, INPUT_PULLDOWN, OUTPUT, OUTPUT_DRIVE = OUTPUT, OUTPUT_PULLUP, OUTPUT_PULLDOWN  
  } PortMode_t;

    //this function returns a number between 0..31 corresponding to each of the above ports
    //max 16 cpu instructions in single issue. not used yet
    constexpr unsigned portCompact(const unsigned x) { 
    //1->0, 4-> x10, 8-> x16, 10 -> x1A, 20 -> x1E,
        return ((x >> 8) & 0xf) + (((x>>16)==4)? 0x10 :(((x>>16)==8)? 0x16 : (((x>>16)==16)? 0x1A : (((x>>16)==32)? 0x1E : 0))));
    }
    //predefined and reserved tokens values
    typedef enum {
        CT_START  = 0,
        CT_END    = 1,      //End - free up interconnect and inform target
        CT_PAUSE  = 2,      //Pause - free up interconnect but do not inform target
        CT_ACK    = 3,      //Acknowledge operation completed successfully
        CT_NACK   = 4,      //Acknowledge that there was an error
        CT_READN  = 0x80, CT_READ1, CT_READ2, CT_READ4, CT_READ8, WT_WRITEN, CT_WRITE1, CT_WRITE2, CT_WRITE4, CT_WRITE8, CT_CALL,
        //priviledged tokens
        CT_WRITEC = 0xc0, CT_READC, CT_PSCTRL, CT_SSCTRL,
        //link-level token (not stored in chanend buffer)
        CT_CREDIT8 = 0xE0, CT_CREDIT64, CT_LRESET, CT_CREDIT_RESET, CT_CREDIT16, CT_HELLO = 0xE6,
  } CTValue_t ;

  //token used to communicate across tiles between client and server. Experimental
  typedef enum {
        PORT_SERVER = 0x40, PORT_CLIENT = 0x41, //used for communicating across core/tile between Port client/server
        I2C_SERVER  = 0x50, I2C_CLIENT  = 0x51, //used for communicating across core/tile between I2C client/server
  } PortClientServer_t;

  //union to represent 64 bit number in different forms
  typedef XC_ALIGNED(8) union LongLong_u  {
      long long ll; 
      unsigned long long ull;
      struct lh_s  {  unsigned lo; int hi; } lh;
      struct ulh_s {  unsigned lo; unsigned hi; } ulh;
      unsigned u[2]; int i[2]; char ch[8]; short s[4]; unsigned short us[4];
  } LongLong_t;

};



#endif