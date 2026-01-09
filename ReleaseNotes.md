# MPLAB Device Blocks for Simulink - Release Notes

Complete release history for MPLAB Device Blocks for Simulink.

---

## v3.63 (December 2025)

### PWM HS FEP Improvements
- **Added**: Hi-Resolution (FEP) support for dsPIC 33A and 33C families
- **Fixed**: Trigger handling in Center Aligned mode with Hi-Resolution enabled
- **Fixed**: Issue with dsPIC 33AK chips that do not have the HiResolution bit (HREN)
- **Fixed**: Initial values when Hi-Resolution is disabled
- **Improved**: Duty cycle and phase shift handling to prevent overflow with uint16 inputs

### High-Speed Comparator with Slope
- **Added**: Negative input pin option
- **Added**: Extended support for comparators 5-8 on AK MPS family
- **Fixed**: Clock setting for dsPIC 33C
- **Improved**: Multi-family refactoring for better compatibility

### dsPIC Improvements
- **Added**: Target Compiler method for 33E, 33C, 33F families - enables External and PIL mode with R2025a and above
- **Fixed**: `__auto_psv__` keyword issue for chips with RAM size > 32K (affects 33E, 33C, 30F)
- **Fixed**: ADC Shared Core interrupt declaration
- **Fixed**: UART driver for older chips (33EP, 33FJ, 33F) - rtiostream impacted
- **Fixed**: Pin mapping warning for undefined configurations (RPINR register overflow)

### General
- **Improved**: COM port handling and detection
- **Improved**: Faster compiler version detection with multi-method fallback
- **Fixed**: picclean warning messages
- **Updated**: SAMx external mode configuration code

---

## v3.62

- Removed superfluous 'debug' messages
- Fixed external mode for model using a single tasking scheduler (or single rate model)
- Fixed mid point trigger for PWM in center aligned mode for dsPIC 33A/33C

---

## v3.61

- Added DMA support on UART for SAMx54
- Added SAME54 motor control FOC examples
- Renamed target registered compiler on SAMx chip
- Fixed typo on generated code for some UART settings for dsPIC 33C
- dsPIC: Removed some optimisation added with R2025a which breaks code for previous versions
- dsPIC 33C/A: Fixed trigger settings for PWM HS set with center aligned mode. Trig on 2nd half were not set appropriately.
- dsPIC 33C/A: Added comparator with slope
- Drop support for R2017a and versions below

---

## v3.60

- SAMx7 added DMA support on SPI communication block
- Fixed SAMx7 UART DMA issue
- SAMx index for SPI and I2C peripheral starts at 0
- Improved throughput of rtiostream driver for dsPIC
- dsPIC 33A fixed PWM HS FEP when set with very low PWM frequency (~seconds)
- Added support for PIC32CZ_MC70
- Added support for PIC32CZ_CA70
- Added support for PIC32M_MCA
- Added support for PIC32A
- Added support for PIC33AK MPS
- Added motor control examples for PIC32MK & SAME54
- Added support for VScode project with the MPLAB VScode Extension
- Added PIL support for stack profiling with dsPIC

---

## v3.59

- Fixed template external/internal op amp setting not working properly
- Fixed PWH L pin settings always configure as PWM output on dsPIC A and dsPIC C
- Added compiler option to minimize stack usage
- Updated dsPIC A DFP using compiler v3.20 version
- Updated dsPIC A interrupt contex saving
- Fixed MPLAB X project with dual core dsPIC
- Fixed dsPIC dual core setting for pin used by the secondary core

---

## v3.58

- Added board template for dsPIC A curiosity developpment board - dsPIC33AK128MC106
- Added board template for Motor Control Development Board - dsPIC33CDV(L)64MC106
- Added DMA to SPI in Slave mode (dsPIC)
- Fixed integration issues with MATLAB R2024b
- Fixed bug with older MATLAB release (R2022 and prior)
- Fixed peripehral blocks: CN, ADC GUI, SPI GUI
- Fixed COM port list on Ubuntu 24.04
- Fixed SPI driver for SAM deivces
- Fixed External mode not stopping when representing time with integers ticks
- Improved template for MCLV2, LVMC and MCLV 300W, config ready for external mode
- Improved default simulink settings when selecting a dsPIC as target
- Improve MPLAB X project creation
- Improved Programming script: could force programming chip with incorrect Id

---

## v3.57

- Added [dsPIC33A](https://www.microchip.com/en-us/products/microcontrollers-and-microprocessors/dspic-dscs/dspic33a) family support, 32-bit CPU, 200MHz, 72-bit DSP accumulators and Floating Point Unit (FPU)
- Enabled option to use standard C datatype with integer width, or custom user definition
- Fixed external mode not functional with single tasking model
- Other improvement on programming interface and minor bugfixes

---

## v3.55

- Added picgui.log2mat script decoding picgui log without using the GUI
- Added pin configurations (dsPICs & PIC32): initial state, pull-up, pull-down and open drain
- Fixed variables set in text fields when peripheral blocks were in a masked subsystem (did not get access to mask variables)
- User functions in Simulink user custom code are now listed in C function block
- Various improvements/fixes for MATLAB R2024a

---

## v3.54

- Fixed: xc-dsc not found on linux
- Fixed: MPLAB blocks might not show-up in the simulink library

---

## v3.53

- Early support for dsPIC33CK64CDVL106
- Fixed dsPIC UART Half duplex driver issue with some chip
- Fixed one error with external mode

---

## v3.52

- Added xc-dsc compiler suport for dsPIC. xc16 suport will continue
- Added unused code removal option taking place at linker stage
- Added motor control examples from INSA Lyon University (France)
- Added ADC block for SAMRH707
- Refactor dsPIC scheduler code enabling further compiler optimization efficiency
- Improved DFP automatic path update
- Fixed virtual pin not showing up
- Fixed code for SPI on dsPIC with 4 byte internal SPI buffer instead of 8
- Fixed scheduler issue on dsPIC for single tasking implementation with at least one asynchronous task (user interrupt) set
- Fixed UART issue with rtiostream when using DMA implementation
- Other minor fixes

---

## v3.51

- Added some options on UART driver (dsPIC)
- Added virtual pin connection (dsPIC)
- SAMC21: bugfix for UART, SPI and I2C
- Support for SAMRH707
- Fixed compatibility issue with MATLAB R2023b
- Improved support for external mode with older release
- Fixed external mode UART driver using a DMA circular buffer on dsPIC

---

## v3.50.35

- Added board templates for:
  - LVMC (dsPIC33CK256MP508)
  - MCLV-48V-300W
    - dsPIC33CK256MP508 DIM (internal & external Op-Amp)
    - dsPIC33CK64MC105 DIM (internal & external Op-Amp)
  - MCLV2
    - dsPIC33CK256MP508 PIM (internal & external Op-Amp)
    - dsPIC33CK64MC105 PIM (internal & external Op-Amp)
    - dsPIC33EP256MC506 (external Op-Amp)
  - Power Tool reference design (dsPIC33CK64MP105)
- Improved linux compatibility
  - Added UART linux compatible baudrates
  - Fixed UxV third part tool with blocks for GPS, Receiver, Telemetry, Mavlink...
- Bugfixes (dsPIC):
  - QEI: error on first block GUI opening
  - Fixed blocks behaviour when placed in a masked subsystem
  - Fixed DOC block to download & access MCU datasheet
  - UART: GUI provide number of internal chip buffer size
  - Removed some warning related to fast Memcpy function
  - ADC for dsPIC CK/CH: fixed missing alternative pins when two ANx shared a same pin. Provide accurate name for internal channels (IVref, Temp, Vbat, CTMU...)
- Some updates on the UART Circular buffer DMA based driver

---

## v3.50.33

- External mode:
  - Fixed single tasking implementation with XCP
  - Clean dsPIC CK PWM start and stop
  - Improved interface when Host UART is not set prior to start external mode
- Remove MPLAB X 6.05 MDB interface used to program chip. The MDB v6.05 command line chip programming is broken. System will use either IPE v6.05, or another MDB version if available.
- Fixed dsPIC Matrix replacement memory leak when output is a vector transposed
- Fixed linux issue when toolbox was installed in a path containing parenthesis like "(1)"
- Improved custom linker script path issue in specifics conditions

---

## v3.50.32

- Fixed one typo within package causing issue with SAM new CAN block and dsPIC UART Circular buffer DMA driver.

---

## v3.50.31

- Revert using programmer in debug mode to force starts of the program (MPLAB X 6.05 should get fixed instead)
- Minor improvements on toolstrip and programming functions (upated IPE)

---

## v3.50.30

- Fixed program not starting until disconnecting programmer / press reset button if available
- Various fixes on XCP and UART DMA driver for dsPIC

---

## v3.50.29

- Added Microchip toolstirp
- Added CAN support for SAME7
- Updated QDEC quadrature function block for SAMx
- Added UART Circular buffer with DMA on dsPIC
- Fixed PIC32 SPI SCK2 missing mapping
- Fixed pin mapping errors with dsPIC / PIC32
- Upated External mode XCP support on dsPIC

---

## v3.50.27

- Added support for dsPIC32MK EFE/EFF/EFK family
- Support SPI on SAMx7
- Support I2C on SAMx7
- Fixed I2C for chip with non continuous I2C references (1 2 4 5..)
- Fixed SPI potential timing issue with fast clock chips (PIC32)
- Added example using custom code to write SAMx FLASH (EEPROM emulator)
- Add Timers functionality on SAMx chips
- Improved PIL support with Test Harness
- Fixed Low priority interrupt with PIC32MZ that might trig an exception

---

## v3.50.26

- Fixed SPI code not generated with PIC32

---

## v3.50.25

- PIL: Added support for PIL Top-Model and PIL Referenced Model approach

---

## v3.50.24

- Added dsPIC CK 128 & 256
- Fixed code Replacement for dsPIC not compiling in debug mode -O0 option
- PIC32 ADC High Speed SAR fixed channel of class 3 below 32 were handled as class 2 (break compilation)

---

## v3.50.23

- Missing file for Code Replacement for the dsPIC atan2 function

---

## v3.50.22

- Improved PIL on Linux
- Fixed issue on SAMx7 when analog port is used and no othet peripheral used the same port (Letter)
- Fixed SPI & I2C peripheral block, broken with SAMx2 and SAMX5.
- Complete support for dsPIC CK MC
- dsPIC Improved Code Replacement accuracy. Fix one typo preventing compilation in rare cases
- dsPIC, Code replaced (sin, cos, atan2) works with revolution unit, not limited to radian.

---

## v3.50.20

- Updated datasheet block to locate pdf from Microchip website
- Fixed dsPIC Optimized assembly code issue resulting in wrong output with XC16 v2.00 set with -Ox optimization enabled.
- Fixed Idle task call to math function not compiling
- Fixed SAMx7 analog pin configuration that might have a bias due to internal peripheral connection
- Improve compatibility with protected IP submodel
- Improved PIL support
- Experimental support for dsPIC CK MC

---

## v5.50.19

- Programming interface updated. Extend number of kit programmed from MATLAB (use latest MPLAB X version. current release is 6.0.0)
- PIL target initialisation code improved. Fixed possible code issue with initialisation function signature mismatch
- PIL UART interface compatible with USB-COM port available on kits. Enabling host data flow control

---

## v5.50.18

- SAMx7: Fixed USART generated code typo with interrupt implementation
- dsPIC CK: Fixed Change Notification User Interrupt triggered twice
- Improved UART block User Interface
- SAMx7: Add Fuse configuration ensuring Fuse get programmed
- SAMx7: Disable ICE functions on PORT B when pin is used for another purpose
- SAMx: Add compilation of intermediate model (library)
- Add PIL and External Mode example for Xplained Ultra board
- Update Installer

---

## v3.50.17

- Fixed programming not working form Linux (issue from 3.50.16)
- Update installer. Simplify installation as an add-on.

---

## v3.50.16

- C Function Call: fixed issue breaking simulink datatype class settings
- MATLAB R2021b: code generator report not showing-up. Renamed compilation from .X to _X
- Improving DFP & CMSIS search script
- SAMx7 ADC: remove pull-up on analog chanels
- SAMx5 UART: add distinct priority for Tx & Rx
- SAMx5 UART: some baudrate setting were not working (no output)
- SAMx: removed register keyword wich might cause issue at compilation
- dsPIC PWM FEP: not working wheh channel 1 were not used
- dsPIC with dual core: always re-compile Main model code required.
- dsPIC: fixed code generated issue with SPI peripheral
- dsPIC: remove default fuse set for Brown Out reset
- dsPIC: fixed short double setting in MPLAB X project
- Improved MPLAB X project creation
- External mode: Add XCP protocol option (experimental)

---

## v3.50.13

- dsPIC CH (dual core): Fixed Main/Secondary Interface. MSI Fuse not configured

---

## v3.50.12

- SAMx: Fixed Link Time Optimizer incorrect syntax
- SAMx: Added CAN example for SAMx7
- SAMx: Optimized DCache update
- SAMx7: Fixed typo on UART Tx when set with DMA & single buffer

---

## v3.50.11

- Improved robustness for long or special path with Windows & Linux
- SAMx7 QDEC peripheral: added Index edge option

---

## v3.50.10

- dsPIC CH update Slave->Secondary call convention for XC16 1.70

---

## v3.50.09

- Fixed Watch dog not Disabled for some (ds)PIC chips reseting after few seconds.
- Updated PIL & External mode for dsPIC with R2020b + updated example with dsPIC33CK Curiosity board
- Fixed SAMx7 AFEC (ADC) possible issue with channel inversion (wrong block outputs)
- SAMx7 improved library inclusion in MPLAB X project

---

## v3.50.08

- Added SPI & I2C Support for SAMx2 & SAMx5
- picflash issue when multiple MPLAB X above v5.45 installed
- SAMx5 Number of UART listed might be incorrect
- SAMx5 ADC Time Step Trigger Parameters lost when model is saved
- SAMx Improved performance by removing some instruction barriere (DSP & ISB)
- dsPIC ADC HS SAR Fractional mode : typo prevent compilation.

---

## v3.50.07

- SAMx5 & SAMx7 Busy flag (for CPU load measurement ) stuck to 1 after short period of time
- SAMx chip: Add CMSIS DSP library to MPLAB X project when using CRL (Required Mathworks Support Package for Arm Cortex-M)
- SAMx7 PWM event set to instant 0 had no effect
- SAMx7 ADC: Fixes on AFEC 1 behaviour (not working when used without AFEC0, Issue with triggering time step when used with AFEC 0)

---

## v3.50.06

- dsPIC 33FJxxGS had incorrect fuse option name (compilation break)
- Internal error might cause incorrect peripheral behaviour with blocks supporting multiple instantiation
- Fixed issue introduced with 3.50.04 that break compilation of model embedding a model reference block (sub-model)

---

## v3.50.05

- DFP & CMSIS DSP library search path not proposing newly installed package/library
- Linux: CMSIS DSP lib failed at compilation time
- MPLAB X project not created (R2020b, SAMx7)

---

## v3.50.04

- Added SAMx7 PWM Override block
- SAMx Peripheral Port mapping issue when a peripheral set-up several time the same pin (i.e. ADC multiple conversion of the same input pin on SAMx7)
- Fixed issue with MW environment block Sim/CodeGen for mixed model (simulation & code generation) (update)

---

## v3.50.03

- Fixed issue with MW environment block Sim/CodeGen for mixed model (simulation & code generation)

---

## v3.50.02

- Fixed CMSIS DSP Library possibly added with incorrect path for SAMx5 & SAMx2
- Enabled CMSIS DSP library link option
- Fixed SAMx7 PWM1 trigger not set on ADC depending on PWM0 and on blocks PWM0/1 execution order

---

## v3.50.01

- Fixed UART DMA Tx implementation for SAMx7

---

## v3.50

- Support SAM C2x / D2x / DA1
- SAMx5 ADC: Multiple conversion per ADC, Trig ADC, Synchronize with Time Step, initialize with NVM factory calibration.
- SAMx5 QDEC: Add further options and simplify GUI.
- Linux support (except PIL & External Mode)
- dsPIC Code Replacement fixed on R2021a
- dSPIC CH/CK fixed issue on PWM HS for noncontiguous channel setup. Duty cycle block input swapped (Ch1-Ch3)
- CHANGE BEHAVIOUR !! SAMx7 PWM: Dead Time initial value were divided by 2. (1us on GUI set 0.5us on board)
- Issue if no CMSIS installed
- Improved Simulink compiler option set in MPLAB project created.
- Improve doc block ability to locate online chip datasheet
- picgui update

---

## v3.49.02

- PWM HS FEP fixed several issues
- Programming interface update. overall speed improvement
- Support Seeger programming hardware (J-32 / J flash Seeger driver)
- ...

---

## v3.49.01

- Fixed PIL issue with dsPIC / R2018b

---

## v3.49

- Updated External-Mode & PIL. Added examples
- SAMx scheduler robust to overload
- PICGUI: data visualisation run in background
- MPLAB X project creation is more robust
- dsPIC UART Driver update (typo fixed, robust in idle tasks sending data)
- dsPIC EV watch dog setting fixed
- Task State block fixed pin settinf for SAMx
- Update makefile with R2020b template
- dsPIC 30f default fuse value is not 1 by default. Write all fuses
- dsPIC CK/CH fixed code replacement FastMemCpy implementation
- dsPIC CCPx timer typo for some blocks that use timer
- Updated PIC32 IPL switch function

---

## v3.48

- Added SPI & I2C for SAMx5 family
- ADC for SAMx5: fixed AIN0 channel input not working
- Added support for 64 bit MPLAB X IDE (v5.45 and above)
- Fixed I2C & SPI register names for some dsPICs (EV, FJ)
- dsPIC Change Notification / Input Capture: Fixed GUI Error when copy-past block to a model with a different chip
- Relaxed conditions triggering SINCOS Code Replacement.

---

## v3.47.00

- Added SPI support for dsPIC GS, CH, CK
- Fixed pin mapping inconsistency on dualcore dsPIC for Secondary Core
- Fixed generic issue with former MATLAB release
- Fixed MPLAB X project creation with R2019a

---

## v3.46.064

- Improved SAMx5 support. Added SPI support
- Fixed issue with dual core dsPIC support. Renamed core appelation with Main and Secondary.
- Fixed MPLAB X project not created with R2020b
- Added PIC32 GPK MCG and GPG

---

## v3.46.063

- Support for SAMx5 familly
- Fixed search issue for recent XC compilers
- Support external CMSIS and DFP packages
- Renamed scripts pad and padr to picgui.pad/padr (Conflict with MathWorks scripts on recent versions)

---

## v3.46.05

- Fixed compiling issue when using a model reference block (compiling submodel as a library)

---

## v3.46.04

- PIC32: Extend limited choice for output pin function (Pin mapping)

---

## v3.46.03

- Fixed Java related issue with programmer interface

---

## v3.46.02

- SPI fixed DMA support for PIC32. Added 8 bit mode with DMA enabled for dsPIC

---

## v3.46.01

- Programmer interface (Java might not be found)
- SAMx7 chip issues with doc block ; MPLAB X project
- Installer script propose old installation method (might fix add-ons issues related to user permissions in classroom/lab configuration)

---

## v3.46.00

- Added support for dual core dsPIC CH

---

## v3.45.05

- Fixed QEI typo in generated code (PIC32MK)
- Fixed SPI typo affecting slave mode (PIC32)

---

## v3.45.04

- Fixed possible issue with MPLAB X project creation with model targeting PIC32
- Fixed Typo on Timer code generator for PIC32 (project not compiling when problem occurs)
- Added an External Mode example for PIC32MZ + minor update on other example and script compiling all models

---

## v3.45.03

- Fixed wrong heap linker flag at command line for PIC32 when using Compiler Option block

---

## v3.45.02

- Added IPE or MDB choice for programming (previously automatically selected)
- Added support for comparator for dsPIC33FJxxMC 02/06
- Added support for SNAP and PICkit 4 programmer with MDB interface
- Removed files generated by programmer interface (MDB or IPE) in working folder.
- Fixed some issue with SAMx70 and SAMx71 family
- Reduced Wait State for SAMV
- Updated motor example for SAME70 PIM with MCLV2 board
- Added missing dsPIC33CK
- Improved compatibility with MATLAB R2010a
- Extended block GUI text fields which can evaluate workspace variables
- UxV toolbox: improved compatibility with R2010a

---

*For the latest updates, visit the [GitHub Repository](https://github.com/MPLAB-Blockset/MPLAB-Device-Blocks-for-Simulink/releases)*
