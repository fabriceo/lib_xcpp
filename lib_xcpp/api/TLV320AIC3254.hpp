/*
 * DAC43204.h
 *
 *  Created on: 6 janv. 2025
 *      Author: fabrice
 */

#ifndef TLV320AIC3254_H_
#define TLV320AIC3254_H_

#include "xua_conf.h"           //require CODEC_MASTER

#include "XC_I2C_master.hpp"

//Address on I2C bus
#define AIC3204_I2C_DEVICE_ADDR 0x18

//Register Addresess
// Page 0
#define AIC3204_PAGE_CTRL     0x00 // Register 0  - Page Control
#define AIC3204_SW_RST        0x01 // Register 1  - Software Reset
#define AIC3204_NDAC          0x0B // Register 11 - NDAC Divider Value
#define AIC3204_MDAC          0x0C // Register 12 - MDAC Divider Value
#define AIC3204_DOSR          0x0E // Register 14 - DOSR Divider Value (LS Byte)
#define AIC3204_NADC          0x12 // Register 18 - NADC Divider Value
#define AIC3204_MADC          0x13 // Register 19 - MADC Divider Value
#define AIC3204_AOSR          0x14 // Register 20 - AOSR Divider Value
#define AIC3204_CODEC_IF      0x1B // Register 27 - CODEC Interface Control
#define AIC3204_LOOPBACK      0x1D // D5=I2S bus loopback, D2 power blck, D1D0 : bclkdivider source
#define AIC3204_BCLK_N        0x1E // Register 30 - BCLK N Divider
#define AIC3204_DAC_SIG_PROC  0x3C // Register 60 - DAC Sig Processing Block Control
#define AIC3204_ADC_SIG_PROC  0x3D // Register 61 - ADC Sig Processing Block Control
#define AIC3204_DAC_CH_SET1   0x3F // Register 63 - DAC Channel Setup 1
#define AIC3204_DAC_CH_SET2   0x40 // Register 64 - DAC Channel Setup 2
#define AIC3204_DACL_VOL_D    0x41 // Register 65 - DAC Left Digital Vol Control
#define AIC3204_DACR_VOL_D    0x42 // Register 66 - DAC Right Digital Vol Control
#define AIC3204_ADC_CH_SET    0x51 // Register 81 - ADC Channel Setup
#define AIC3204_ADC_FGA_MUTE  0x52 // Register 82 - ADC Fine Gain Adjust/Mute

// Page 1
#define AIC3204_PWR_CFG       0x01 // Register 1  - Power Config
#define AIC3204_LDO_CTRL      0x02 // Register 2  - LDO Control
#define AIC3204_PLAY_CFG1     0x03 // Register 3  - Playback Config 1
#define AIC3204_PLAY_CFG2     0x04 // Register 4  - Playback Config 2
#define AIC3204_OP_PWR_CTRL   0x09 // Register 9  - Output Driver Power Control
#define AIC3204_CM_CTRL       0x0A // Register 10 - Common Mode Control
#define AIC3204_HPL_ROUTE     0x0C // Register 12 - HPL Routing Select
#define AIC3204_HPR_ROUTE     0x0D // Register 13 - HPR Routing Select
#define AIC3204_HPL_GAIN      0x10 // Register 16 - HPL Driver Gain
#define AIC3204_HPR_GAIN      0x11 // Register 17 - HPR Driver Gain
#define AIC3204_HP_START      0x14 // Register 20 - Headphone Driver Startup
#define AIC3204_LPGA_P_ROUTE  0x34 // Register 52 - Left PGA Positive Input Route
#define AIC3204_LPGA_N_ROUTE  0x36 // Register 54 - Left PGA Negative Input Route
#define AIC3204_RPGA_P_ROUTE  0x37 // Register 55 - Right PGA Positive Input Route
#define AIC3204_RPGA_N_ROUTE  0x39 // Register 57 - Right PGA Negative Input Route
#define AIC3204_LPGA_VOL      0x3B // Register 59 - Left PGA Volume
#define AIC3204_RPGA_VOL      0x3C // Register 60 - Right PGA Volume
#define AIC3204_ADC_PTM       0x3D // Register 61 - ADC Power Tune Config
#define AIC3204_AN_IN_CHRG    0x47 // Register 71 - Analog Input Quick Charging Config
#define AIC3204_REF_STARTUP   0x7B // Register 123 - Reference Power Up Config

template< XC_I2Cmaster &I2C >
class TLV320AIC3254  { 
private:
    unsigned page;
public:
    unsigned addr;
    I2CdeviceStatus_t status;
    unsigned master;

    TLV320AIC3254(unsigned addr_, unsigned master_) : addr(addr_), status(I2C_DEVICE_NOTTESTED), master(master_) {
        page = 0;  }

    I2Cres_t writePage(unsigned p) {
        I2Cres_t res = ACK;
        if (p != page) res = I2C.writeReg( addr, AIC3204_PAGE_CTRL, p);
        page = p; 
        return res; }

    I2CdeviceStatus_t init() {
        XCTimerMicros tus; 
        int n=0;
        while (1) {
            if ( NACK == I2C.testDevice( addr ) ) 
                tus.wait(100000); //100ms
            else break;
            n++;
            if (n>10) return I2C_DEVICE_NOTTESTED;    //timeout
        }
        status = I2C_DEVICE_EXIST;
        debug_printf("TLV exist\n");
        page = 1; 
        I2Cres_t res = writePage( 0);
        //writeReg(1,1); //sw reset
        //xc_delay_micros(5000);
        // Check we can talk to the CODEC
        unsigned val;
        res = I2C.readReg( addr, AIC3204_NDAC, val);
        if (val != 1) {
            debug_printf("TLV bad value for NDAC register = %d vs 1\n",val);
            status = I2C_DEVICE_NOTMATCH;
        } else {
            debug_printf("TLV recognized\n");
            status = I2C_DEVICE_MATCH;
            if (init_evk_codec()) {
                debug_printf("TLV initialised\n");
                status = I2C_DEVICE_INITIALISED;
            } else {
                debug_printf("TLV I2C ERROR\n"); // could retry ?
                status = I2C_DEVICE_ERROR ;
            }
        }
        return status;
    }

    unsigned init_evk_codec() {

        // Initiate SW reset (PLL is powered off as part of reset)
        if (NACK == I2C.writeReg( addr, AIC3204_SW_RST, 0x01)) return 0;

        delay_microseconds(2000);  //2ms startup

        // Program clock settings

        // Default is CODEC_CLKIN is from MCLK pin. Don't need to change this.
        // Power up NDAC and set to 1
        if (NACK == I2C.writeReg( addr, AIC3204_NDAC, 0x81)) return 0;

        // Power up MDAC and set to 4
        if (NACK == I2C.writeReg( addr, AIC3204_MDAC, 0x84)) return 0;

        // Power up NADC and set to 1
        if (NACK == I2C.writeReg( addr, AIC3204_NADC, 0x81)) return 0;

        // Power up MADC and set to 4
        if (NACK == I2C.writeReg( addr, AIC3204_MADC, 0x84)) return 0;

        // Program DOSR = 128
        if (NACK == I2C.writeReg( addr, AIC3204_DOSR, 0x80)) return 0;

        // Program AOSR = 128
        if (NACK == I2C.writeReg( addr, AIC3204_AOSR, 0x80)) return 0;

        if (master == 0) {
            // Set Audio Interface Config: I2S, 32 bits, slave mode, DOUT always driving. page 104
            if (NACK == I2C.writeReg( addr, AIC3204_CODEC_IF, 0x30)) return 0;
            if (NACK == I2C.writeReg( addr, AIC3204_BCLK_N,   1   )) return 0;
        } else {
            debug_printf("TLV master mode, XMOS slave\n");
            // Set Audio Interface Config: I2S, 32 bits, master mode, DOUT always driving. page 104
            if (NACK == I2C.writeReg( addr, AIC3204_CODEC_IF, 0x3C)) return 0; //D5-D4=11 , D3-D2 = 11
            //bclk should be divided by 8 by default for 48KHZ (24MHZ = 48KHZ*64)
            if (NACK == I2C.writeReg( addr, AIC3204_BCLK_N,   0x88)) return 0;
        }

        // Program the DAC processing block to be used - PRB_P1
        if (NACK == I2C.writeReg( addr, AIC3204_DAC_SIG_PROC, 0x01)) return 0;
        // Program the ADC processing block to be used - PRB_R1
        if (NACK == I2C.writeReg( addr, AIC3204_ADC_SIG_PROC, 0x01)) return 0;

        // Select Page 1
        writePage(1);
        // Enable the internal AVDD_LDO:
        if (NACK == I2C.writeReg( addr, AIC3204_LDO_CTRL, 0x09)) return 0;
        //
        // Program Analog Blocks
        // ---------------------
        //
        // Disable Internal Crude AVdd in presence of external AVdd supply or before powering up internal AVdd LDO
        if (NACK == I2C.writeReg( addr, AIC3204_PWR_CFG, 0x08)) return 0;
        // Enable Master Analog Power Control
        if (NACK == I2C.writeReg( addr, AIC3204_LDO_CTRL, 0x01)) return 0;
        // Set Common Mode voltages: Full Chip CM to 0.9V and Output Common Mode for Headphone to 1.65V and HP powered from LDOin @ 3.3V.
        if (NACK == I2C.writeReg( addr, AIC3204_CM_CTRL, 0x33)) return 0;
        // Set PowerTune Modes
        // Set the Left & Right DAC PowerTune mode to PTM_P3/4. Use Class-AB driver.
        if (NACK == I2C.writeReg( addr, AIC3204_PLAY_CFG1, 0x00)) return 0;
        if (NACK == I2C.writeReg( addr, AIC3204_PLAY_CFG2, 0x00)) return 0;
        // Set ADC PowerTune mode PTM_R4.
        if (NACK == I2C.writeReg( addr, AIC3204_ADC_PTM, 0x00)) return 0;
        // Set MicPGA startup delay to 3.1ms
        if (NACK == I2C.writeReg( addr, AIC3204_AN_IN_CHRG, 0x31)) return 0;
        // Set the REF charging time to 40ms
        if (NACK == I2C.writeReg( addr, AIC3204_REF_STARTUP, 0x01)) return 0;
        // HP soft stepping settings for optimal pop performance at power up
        // Rpop used is 6k with N = 6 and soft step = 20usec. This should work with 47uF coupling
        // capacitor. Can try N=5,6 or 7 time constants as well. Trade-off delay vs �pop� sound.
        if (NACK == I2C.writeReg( addr, AIC3204_HP_START, 0x25)) return 0;
        // Route Left DAC to HPL
        if (NACK == I2C.writeReg( addr, AIC3204_HPL_ROUTE, 0x08)) return 0;
        // Route Right DAC to HPR
        if (NACK == I2C.writeReg( addr, AIC3204_HPR_ROUTE, 0x08)) return 0;
        // We are using Line input with low gain for PGA so can use 40k input R but lets stick to 20k for now.
        // Route IN2_L to LEFT_P with 20K input impedance
        if (NACK == I2C.writeReg( addr, AIC3204_LPGA_P_ROUTE, 0x20)) return 0;
        // Route IN2_R to LEFT_M with 20K input impedance
        if (NACK == I2C.writeReg( addr, AIC3204_LPGA_N_ROUTE, 0x20)) return 0;
        // Route IN1_R to RIGHT_P with 20K input impedance
        if (NACK == I2C.writeReg( addr, AIC3204_RPGA_P_ROUTE, 0x80)) return 0;
        // Route IN1_L to RIGHT_M with 20K input impedance
        if (NACK == I2C.writeReg( addr, AIC3204_RPGA_N_ROUTE, 0x20)) return 0;
        // Unmute HPL and set gain to 0dB
        if (NACK == I2C.writeReg( addr, AIC3204_HPL_GAIN, 0x00)) return 0;
        // Unmute HPR and set gain to 0dB
        if (NACK == I2C.writeReg( addr, AIC3204_HPR_GAIN, 0x00)) return 0;
        // Unmute Left MICPGA, Set Gain to 0dB.
        if (NACK == I2C.writeReg( addr, AIC3204_LPGA_VOL, 0x00)) return 0;
        // Unmute Right MICPGA, Set Gain to 0dB.
        if (NACK == I2C.writeReg( addr, AIC3204_RPGA_VOL, 0x00)) return 0;
        // Power up HPL and HPR drivers
        if (NACK == I2C.writeReg( addr, AIC3204_OP_PWR_CTRL, 0x30)) return 0;

        // Wait for soft stepping to take effect
        delay_microseconds(25000);
        //
        // Power Up DAC/ADC
        // ----------------
        //
        // Select Page 0
        if (NACK == writePage(0)) return 0;
        // Power up the Left and Right DAC Channels. Route Left data to Left DAC and Right data to Right DAC.
        // DAC Vol control soft step 1 step per DAC word clock.
        if (NACK == I2C.writeReg( addr, AIC3204_DAC_CH_SET1, 0xd4)) return 0;
        // Power up Left and Right ADC Channels, ADC vol ctrl soft step 1 step per ADC word clock.
        if (NACK == I2C.writeReg( addr, AIC3204_ADC_CH_SET, 0xc0)) return 0;
        // Unmute Left and Right DAC digital volume control
        if (NACK == I2C.writeReg( addr, AIC3204_DAC_CH_SET2, 0x00)) return 0;
        // Unmute Left and Right ADC Digital Volume Control.
        if (NACK == I2C.writeReg( addr, AIC3204_ADC_FGA_MUTE, 0x00)) return 0;

        return 1;
    }

    unsigned setBCLK_N(unsigned divider) {
        const unsigned val = 0x80 | (divider & 0x7F);
        if (NACK == I2C.writeReg( addr, AIC3204_BCLK_N, val )) return 0;
        //need to modify MDAC in order to get LRCLK properly driven
        if (divider == 8) if (NACK == I2C.writeReg( addr, AIC3204_MDAC, 0x84)) return 0;
        if (divider == 4) if (NACK == I2C.writeReg( addr, AIC3204_MDAC, 0x82)) return 0;
        if (divider == 2) if (NACK == I2C.writeReg( addr, AIC3204_MDAC, 0x81)) return 0;
        debug_printf("TLV bclk dividers updated\n");
        return 1;
    }
};


#endif /* TLV320AIC3254_H_ */
