#ifndef HAVE_PLATFORM_H
#define HAVE_PLATFORM_H

#include <xs1.h>

/*
 * Platform description header file.
 * Automatically generated from "/Users/fabrice/.xmos/targets/NAX1-XU316/NAX1-XU316.xn".
 */

#ifdef __XC__
/* Core array declaration. */
extern tileref tile[2];
#endif

#ifdef __XC__
/* Service prototypes. */
service xscope_host_data(chanend c);;
#endif

#if defined(__XC__)
#define PORT_SQI_CS on tile[0]: XS1_PORT_1B
#define PORT_SQI_SCLK on tile[0]: XS1_PORT_1C
#define PORT_SQI_SIO on tile[0]: XS1_PORT_4B
#define BOARD_NAX1 on tile[0]: 1
#else
#define PORT_SQI_CS XS1_PORT_1B
#define PORT_SQI_SCLK XS1_PORT_1C
#define PORT_SQI_SIO XS1_PORT_4B
#define BOARD_NAX1 1
#endif

#define PORT_SQI_CS_TILE tile[0]
#define PORT_SQI_CS_TILE_NUM 0
#define PORT_SQI_SCLK_TILE tile[0]
#define PORT_SQI_SCLK_TILE_NUM 0
#define PORT_SQI_SIO_TILE tile[0]
#define PORT_SQI_SIO_TILE_NUM 0
#define BOARD_NAX1_TILE tile[0]
#define BOARD_NAX1_TILE_NUM 0


/* Reference frequency definition. */
#define PLATFORM_REFERENCE_HZ 100000000
#define PLATFORM_REFERENCE_KHZ 100000
#define PLATFORM_REFERENCE_MHZ 100
#define PLATFORM_NODE_0_SYSTEM_FREQUENCY_HZ 600000000
#define PLATFORM_NODE_0_SYSTEM_FREQUENCY_KHZ 600000
#define PLATFORM_NODE_0_SYSTEM_FREQUENCY_MHZ 600

#endif /* HAVE_PLATFORM_H */

