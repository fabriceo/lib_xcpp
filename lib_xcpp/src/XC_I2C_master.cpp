#define DEBUG_UNIT XC_I2C
#include "debug_print.h"
#include "XC_I2C_master.hpp"


#if 0
namespace TESTS {

XCPort p4a( XC::PORT_4A );
XCPortBit  scl(p4a, 0b0001);
XCPortBit  sda(p4a, 0b0010);

XC_I2Cmaster I2CM( scl, sda );

XC_I2Cmaster I2Cclient;

static XC_UNUSED void i2C_master_test() {

    I2CM.masterInit(100);
    I2CM.initServer();

    if (I2CM.testDevice(0x20)) {
        unsigned r1; 
        unsigned res = I2CM.readReg(0x20,1,r1);
        (void)res;
    }

    while (1) I2CM.processServer();

}


static XC_UNUSED void i2C_client_test() {

    I2Cclient.initClient();

    if (I2Cclient.testDevice(0x21)) {
        I2Cclient.writeReg(0x21,1,0);
    }
    
}

//only as an example : multiple register configuration array:
static XC_UNUSED const uint8_t regs_18_19_and_15_17[] ={
        18, 19, 1,2,
        15, 17, 3,4,5,
        0 }; //sequence ends with a Zero


};
#endif