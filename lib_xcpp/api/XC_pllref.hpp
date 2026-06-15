#ifndef _XC_PLLREF_HPP_
#define _XC_PLLREF_HPP_

#include "XC_conf.hpp"

namespace XC {
  namespace PLL {
    //PROTOTYPES
    //function implemented in XC_core.cpp

    //compute number of ticks per seconds based on the pll register value
    unsigned computeTicks(const unsigned pll);
    //simply return register value
    unsigned readValue();
    //return register value converted into ticks.
    unsigned readTicks();
    //write the PLL register with the codified provided value
    int writeValue(const unsigned pll);
    //wait 15ms
    void stabilize();
    //reset the processor by updating PLL register
    void reset();
  };

};

#endif //_XC_PLLREF_HPP_