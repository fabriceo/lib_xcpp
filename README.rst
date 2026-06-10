

###########################
lib_xcpp: using xmos with cpp programs
###########################

:version: 1.0.0
:scope: General Use
:description: using xmos with cpp programs
:category: General Purpose
:keywords: cpp
:devices: xcore.ai, xcore-200

********
Overview
********

The library objective is to provide a simple but comprehensive environement to develop XMOS programs fully c++ based.
This is the main C++ library used in NAX1 audio analyzer project.

********
Features
********

Collection of objects to create and use ports, chanend, timers...
Inline routines for most assembly opcodes.
helpers for select statement and event management.
Equivalent object for par { } statement.
Cooperative scheduler (yield).
I2C master et SPI master.

************
Known Issues or limitations
************

  * None


**************
Required Tools
**************

  * XMOS XTC Tools: 15.3.1

*********************************
Required Libraries (dependencies)
*********************************

  * None, eventually lib_logging for debug_printf

*************************
Related Application Notes
*************************

see folder examples or tests

*******
Support
*******

xcore.com forum