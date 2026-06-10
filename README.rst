

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

mainly Objects to create and use ports, chanend, timers.
Inline routines for most usefull assembly opcodes.
helpers for select stement and event management.
equivalent par { } statement with object jobs and onejob.
Cooperative scheduler (yield).
I2C master et SPI master

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