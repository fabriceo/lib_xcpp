#ifndef _XC_CONF_HPP_
#define _XC_CONF_HPP_

#include <xs1.h>
#include <platform.h>

#ifdef __xcpp_conf_h_exists__
#include "xcpp_conf.hpp"
#endif

//check for minimum c++11
#ifdef __cplusplus
#if __cplusplus < 201103L
#warning missing -std=c++11 in compiler options
#endif

namespace XC { };
namespace xC = XC;
namespace xc = XC;

#endif

/* default value if they are not defined in user own xcpp_conf.hpp */




#endif //_XC_CONF_HPP_