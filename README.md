# MPLAB® Device Blocks for Simulink®

<img align="right" src="https://raw.githubusercontent.com/MPLAB-Blockset/MPLAB-Device-Blocks-for-Simulink/master/mplab-deviceblocksforsimulink-whitebackground.png" width="150">

### Model-Based Design for Microchip Microcontrollers

**Simulink® hardware support package for automatic embedded C code generation and rapid prototyping targeting dsPIC®, PIC32®, and SAM microcontrollers**

![MATLAB Versions](https://img.shields.io/badge/MATLAB-R2017b%20to%20R2025b-blue)
![Devices](https://img.shields.io/badge/Devices-710%20MCUs-green)
![License](https://img.shields.io/badge/License-Microchip-red)
![Free](https://img.shields.io/badge/Cost-FREE-brightgreen)

[![View MPLAB® Device Blocks for Simulink®: dsPIC® DSCs, PIC32® and SAM MCUs on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/71892)

---

<p align="center">
🚀 <b><a href="https://www.mathworks.com/matlabcentral/fileexchange/71892">Install Now from File Exchange</a></b> | 📖 <b><a href="#-quick-start">Quick Start Guide</a></b>
</p>

---

## 💡 Why MPLAB® Device Blocks?

<img align="right" src="https://raw.githubusercontent.com/MPLAB-Blockset/MPLAB-Device-Blocks-for-Simulink/master/MCHP_BlockLibrary.png" width="600">

### Seamless MATLAB®/Simulink® Integration
**Work entirely within the familiar MATLAB®/Simulink® environment you already know.** All chip configuration, peripheral setup, and code generation is handled directly from the Simulink® interface, allowing you to leverage your existing Model-Based Design expertise without additional toolchain complexity. Advanced users can optionally integrate with MPLAB® X IDE for detailed debugging and optimization.

**Benefits:**
- **Accelerated time-to-market** — Leverage your existing Simulink® expertise to start developing immediately
- **Unified workflow** — Design, simulate, configure, and deploy from a single integrated environment
- **Seamless code generation** — Automatic translation of Simulink® models to optimized embedded C code
- **Intelligent toolchain integration** — Automatic configuration of Microchip compilers and MPLAB® tools, with full access available when you need advanced control

### Unmatched Device Coverage & Compatibility

| | |
|---|---|
| **710+ Devices** | Largest MCU coverage in one toolbox — dsPIC®, PIC32®, and SAM families |
| **Multi-Architecture** | 16-bit DSC + 32-bit MIPS + ARM® Cortex®-M in a single Simulink® blockset |
| **Cross-Platform** | Supports both Windows and Linux development environments |
| **9+ Years Backward Compatibility** | Supports MATLAB® R2017b and earlier through R2025b |
| **Application-Optimized Cores** | dsPIC® DSC for motor/power, dsPIC33A DSC for high-performance, MIPS for general-purpose, ARM® Cortex®-M for connectivity |
| **Advanced Peripherals** | High-resolution PWM, 12-bit ADC with hardware oversampling, QEI — optimized for motor control and power conversion |

*Available at no cost from MathWorks File Exchange*

### 📈 Trusted By the Community
- **10+ years** of continuous development and updates
- **7,200+ downloads** from MathWorks File Exchange
- **University collaborations** including INSA Lyon research projects
- **Active community** with dedicated Microchip forum support

---

## 🚀 Quick Start

### Installation

**Recommended Method (MATLAB® Toolstrip):**

1. Open MATLAB® → **Add-Ons** → **Get Add-Ons**
2. Search for **"MPLAB® Device Blocks for Simulink"**
3. Click **Install**

**Alternative Method (GitHub Release):**

For older MATLAB® versions (pre-R2016b) or manual installation:

1. Download the latest release from [GitHub Releases](https://github.com/MPLAB-Blockset/MPLAB-Device-Blocks-for-Simulink/releases)
2. Run the `install.p` script in MATLAB® or the .mltbx installer

The .p installer provides flexible destination configuration for systems with restricted permissions.

### Essential Commands

| MATLAB® Command | Description |
|-----------------|-------------|
| `picsetup` | Configure or repair toolbox installation paths |
| `picclean` | Remove previous installations from MATLAB® path |
| `picInfo('check')` | Verify compilers and programming tools installation |
| `picInfo('examples')` | Copy example models to current working folder |
| `picInfo('cmd')` | Display all available commands |

---

## ✨ Key Features

### 🎯 Wide Device Support
- **710+ Microcontrollers** supported across 12 device families
- **dsPIC® 33A** (NEW): 200 MHz 32-bit CPU with FPU, hardware sin/cos/sqrt
- **dsPIC®** DSCs: 30F, 33F, 33E, 33C, 33CH families
- **PIC32®** MCUs: MK, MZ, MX, AK series
- **SAM** MCUs: SAME5x, SAME7x, SAMC2x, SAMD2x (ARM® Cortex®-M)

### ⚡ Automatic Code Generation
- **One-click deployment**: Simulink model → Embedded C → .elf file
- **Unified toolbox for 12 device families** — All Microchip architectures in a single integrated package
- **MPLAB® X IDE** and **VSCode** project generation (MPLAB® VSCode Extension)
- **Optimized code** with assembly replacements for DSP operations (dsPIC®)
- **CMSIS DSP** library support for ARM® devices
- **Long-term compatibility** — Support for MATLAB® versions from R2017b forward

### 🔧 Peripheral Configuration
Graphical interface blocks for all major peripherals:
- **PWM** — High-Resolution with Fine Edge Placement (dsPIC® 33A/33C)
- **ADC** — Synchronized with PWM, multiple conversion modes
- **Communication**: UART, SPI, I2C, CAN
- **Timers**, Input Capture, Output Compare, QEI (Quadrature Encoder)
- **Op-Amps**, Comparators with Slope Compensation, DAC
- **Change Notification**, GPIO

Advanced ADC/PWM synchronization: PWM can trigger ADC sampling at any specified instant. End of ADC conversion triggers the model base rate (no delay from ADC sampling & conversion).

The custom **C Function** block allows including any user-defined C code within your Simulink model.

### 🔄 Real-Time Prototyping
- **External Mode**: Real-time parameter tuning and data visualization
- **picgui Interface**: MATLAB®-based data logging and visualization

### 🧪 Processor-in-the-Loop (PIL) Verification
- **Numerical validation**: Compare on-target execution results against Simulink simulation
- **Execution profiling**: Fine-grained timing measurement of generated code
- **Stack analysis**: Monitor and validate stack usage during execution

### 📊 Advanced Scheduler

<img align="right" src="https://raw.githubusercontent.com/MPLAB-Blockset/MPLAB-Device-Blocks-for-Simulink/master/Scheduler_MultiTasking_Scope.png" width="600">

- **Single-tasking** mode for simple applications
- **Multi-tasking** rate monotonic scheduler with:
  - Pre-emptive prioritization (fast loops interrupt slow loops)
  - Background task support for system monitoring
  - Configurable overload handling

### 💻 Code Optimization
- **Hardware sin/cos/sqrt** (dsPIC® 33A): Computed in 1-2 clock cycles using dedicated hardware instructions
- **Code Replacement Library** (dsPIC® 30F/33F/33E/33C): Hardware-optimized assembly routines providing exceptional execution speed and near-ideal accuracy (typically 1-2 LSB difference from true value):
  - Trigonometric: sin, cos, sincos, atan2
  - Square root: 16-bit and 32-bit fixed-point
  - Saturation: optimized type conversions with overflow handling
  - Absolute value, mixed signed/unsigned multiply
- **Fast memory operations**: Assembly-optimized memcpy
- **Link-time optimization** for reduced code size (SAMx)

---

## 📦 What's Included

### Simulink® Block Library

Complete peripheral driver blocks with intuitive GUI configuration — Graphical interface accelerates development while maintaining full access to low-level control when needed.

<img align="right" src="https://raw.githubusercontent.com/MPLAB-Blockset/MPLAB-Device-Blocks-for-Simulink/master/Templates.png" width="600">

### Board Templates

Pre-configured models for popular development boards:

**Motor Control Boards:**
- **MCLV-2** — Multiple PIM variants (dsPIC® 33CK256MP508, 33CK64MC105, 33EP256MC506)
- **MCLV 48V 300W** — High-power variants (dsPIC® 33AK128MC106, 33CK256MP508, 33CK64MC105)
- **LVMC** — Low Voltage Motor Control (dsPIC® 33CK)
- **Motor Control Dev Board** — Dual-core (dsPIC® 33CDVL64MC106)
- **Portable Power Tool Reference Design**

**Development Boards:**
- **Curiosity Development Board** (dsPIC® 33AK128MC106)
- **Curiosity Nano** (dsPIC® 33AK512MPS506)

### Examples & Tutorials
- Motor control (FOC, sensorless, field weakening)
- Peripheral demonstrations (UART, SPI, I2C, CAN)
- External mode and PIL examples
- University research projects (INSA Lyon collaboration)

### Third-Party Integration
**UxV Blocks** for UAV/drone applications (GPS, MAVLink, telemetry) - type `picInfo` for installation instructions.

---

## 📋 Requirements

<img align="right" src="https://raw.githubusercontent.com/MPLAB-Blockset/MPLAB-Device-Blocks-for-Simulink/master/MCHP_MBD_Overview.png" width="600">

### MathWorks Products (R2017b to R2025b)
- MATLAB®
- Simulink®
- Embedded Coder™
- MATLAB® Coder™
- Simulink® Coder

### Microchip Development Tools

**IDE:**
- MPLAB® X IDE - [Download](https://www.microchip.com/MPLABX)

**Compilers:**
- **XC-DSC** for dsPIC® DSCs - [Download](https://www.microchip.com/en-us/tools-resources/develop/mplab-xc-compilers/xc-dsc)
- **XC32** for PIC32® and SAM MCUs - [Download](https://www.microchip.com/xc32)

**Programmers/Debuggers:**
- PICkit™ 5, 4, 3
- MPLAB® ICD 5, 4, 3
- MPLAB® SNAP
- MPLAB® REAL-ICE™
- J-32 Debug Probe
- PICkit™ On-Board (PKOB4)

---

## 📚 Resources & Support

### 🎥 Video Tutorials

**Recent Webinars:**
- **[Power Factor Correction on dsPIC® 33A](https://www.mathworks.com/videos/implementing-power-factor-correction-on-a-microchip-dspic33a-digital-signal-controller-1734709897715.html)** (2024) - Latest dsPIC® 33A with FPU
- **[Motor Control Deployment](https://www.mathworks.com/videos/motor-control-with-embedded-coder-for-microchip-mcus-1488570451176.html)** (2021) - FOC algorithms for dsPIC®/PIC32®/SAM
- **[PMSM Position Control](https://www.mathworks.com/videos/position-control-of-a-pmsm-with-simulink-and-microchip-32-bit-mcus-1679516692608.html)** (2023) - 32-bit motor control
- **[External Mode Tutorial](https://www.microchip.com/en-us/about/media-center/videos/wuzLmORk1M0)** (2016) - Real-time debugging with dsPIC®

### 🎓 Education
- **[ctrl-elec Motor Control Tutorials](https://www.ctrl-elec.fr)** - Advanced FOC techniques by INSA Lyon

### 💬 Community Support
- **[Microchip MATLAB® Forum](https://forum.microchip.com/s/sub-forums?&subForumId=a553l000000J2rNAAS&forumId=a553l000000J2pvAAC&subForumName=MATLAB&page=1&offset=0)** - Ask questions and share experiences
- **[GitHub Repository](https://github.com/MPLAB-Blockset/MPLAB-Device-Blocks-for-Simulink)** - Examples and wiki

---

## 📝 Recent Release Notes

### v3.63.03
- **Fixed**: PWM peripheral block for dsPIC33EP/EV (PWM High Speed) fails to open and generate code

### v3.63.02
- **Fixed**: Compatibility issue with MATLAB R2025b Update 2 and other recent MATLAB updates - compatible with all MATLAB releases (R2017b to R2025b)
- **Fixed**: PIL stack analysis for MATLAB versions prior to 2022b
- **Added**: Curiosity Nano board template for dsPIC33AK512MPS506 (EV17P63A)
- **Added**: Portable MPLAB X project (.Xi) support - enables project portability for complex projects using internal MathWorks resources
- **Improved**: DFP validation for newer compiler versions

### v3.63.01
**PWM HS FEP Improvements:**
- **Added**: Hi-Resolution (FEP) support for dsPIC® 33A and 33C families
- **Fixed**: Trigger handling in Center Aligned mode with Hi-Resolution enabled
- **Fixed**: Issue with dsPIC® 33AK chips that do not have the HiResolution bit (HREN)
- **Fixed**: Initial values when Hi-Resolution is disabled
- **Improved**: Duty cycle and phase shift handling to prevent overflow with uint16 inputs

**High-Speed Comparator with Slope:**
- **Added**: Negative input pin option
- **Added**: Extended support for comparators 5-8 on AK MPS family
- **Fixed**: Clock setting for dsPIC® 33C
- **Improved**: Multi-family refactoring for better compatibility

**dsPIC® Improvements:**
- **Added**: Target Compiler method for 33E, 33C, 33F families - enables External and PIL mode with R2025a and above
- **Fixed**: `__auto_psv__` keyword issue for chips with RAM size > 32K (affects 33E, 33C, 30F)
- **Fixed**: ADC Shared Core interrupt declaration
- **Fixed**: UART driver for older chips (33EP, 33FJ, 33F) - rtiostream impacted
- **Fixed**: Pin mapping warning for undefined configurations (RPINR register overflow)

**General:**
- **Improved**: COM port handling and detection
- **Improved**: Faster compiler version detection with multi-method fallback
- **Fixed**: picclean warning messages
- **Updated**: SAMx external mode configuration code

### v3.62
- Fixed external mode for single-tasking scheduler
- Fixed PWM mid-point trigger for center-aligned mode (dsPIC® 33A/33C)
- Removed superfluous debug messages

### v3.61
- **Added**: DMA support on UART for SAMx54
- **Added**: SAME54 motor control FOC examples
- **Fixed**: UART code generation for dsPIC® 33C
- **Fixed**: PWM trigger settings for dsPIC® 33C/A center-aligned mode
- **Added**: Comparator with slope for dsPIC® 33C/A
- Dropped support for R2017a and earlier

### v3.60
- **Added**: Support for **PIC32CZ**, **PIC32M_MCA**, **PIC32A** families
- **Added**: Support for **dsPIC® 33AK MPS** series
- **Added**: DMA support on SPI (SAMx7)
- **Added**: Motor control examples for PIC32MK® & SAME54
- **Added**: VSCode project generation with MPLAB® VSCode Extension
- **Added**: PIL stack profiling for dsPIC®
- **Fixed**: PWM HS FEP timing issues at very low frequencies
- **Improved**: UART rtiostream driver throughput for dsPIC®

*For complete release history, see [ReleaseNotes.md](ReleaseNotes.md)*

---

## 🖥️ Supported Microcontrollers (710 Devices)

### Device Family Summary

| Family | Count | Key Features | Representative Devices |
|--------|-------|--------------|----------------------|
| **dsPIC® 33A** | 48 | 32-bit CPU, 200MHz, FPU, Hi-Res PWM | 33AK128MC106, 33AK512MPS512 |
| **dsPIC® 33C/CH/CK/CDV** | 160+ | 16-bit DSC, Dual-core options | 33CK256MP508, 33CH512MP305 |
| **dsPIC® 33E/EP** | 100+ | 16-bit DSC, Hi-Speed ADC | 33EP256MC506, 33EP512GM710 |
| **dsPIC® 33F/FJ** | 80+ | 16-bit DSC, Motor Control PWM | 33FJ256GP710, 33FJ128MC506 |
| **dsPIC® 30F** | 21 | 16-bit DSC, Legacy support | 30F6015, 30F4013 |
| **PIC32® AK** | 9 | 32-bit dsPIC® 33A core | 32AK6416GC41064 |
| **PIC32® MK/MZ** | 80+ | 32-bit MIPS, Motor Control | 32MK1024MCF064, 32MZ2048EFM100 |
| **PIC32® CZ** | 15 | 32-bit Arm® Cortex®-M7 | PIC32CZ5125CA70144 |
| **SAM C/D/E/S/V** | 200+ | Arm® Cortex®-M0+/M4/M7 | SAME54P20A, SAME70Q21B, SAMC21J18A |

<details>
<summary><b>View Complete Device List (710 MCUs)</b></summary>

### dsPIC® 30F Family (21 devices)
30F2010, 30F2011, 30F2012, 30F3010, 30F3011, 30F3012, 30F3013, 30F3014, 30F4011, 30F4012, 30F4013, 30F5011, 30F5013, 30F5015, 30F5016, 30F6010, 30F6011, 30F6012, 30F6013, 30F6014, 30F6015

### dsPIC® 33A Family (38 devices)

**dsPIC® 33AK MC Series**
33AK32MC102, 33AK32MC103, 33AK32MC105, 33AK32MC106, 33AK64MC102, 33AK64MC103, 33AK64MC105, 33AK64MC106, 33AK128MC102, 33AK128MC103, 33AK128MC105, 33AK128MC106, 33AK256MC205, 33AK256MC206, 33AK256MC208, 33AK256MC210, 33AK256MC505, 33AK256MC506, 33AK256MC508, 33AK256MC510, 33AK512MC205, 33AK512MC206, 33AK512MC208, 33AK512MC210, 33AK512MC505, 33AK512MC506, 33AK512MC508, 33AK512MC510

**dsPIC® 33AK MPS Series**
33AK256MPS205, 33AK256MPS206, 33AK256MPS208, 33AK256MPS210, 33AK256MPS212, 33AK256MPS505, 33AK256MPS506, 33AK256MPS508, 33AK256MPS510, 33AK256MPS512, 33AK512MPS205, 33AK512MPS206, 33AK512MPS208, 33AK512MPS210, 33AK512MPS212, 33AK512MPS505, 33AK512MPS506, 33AK512MPS508, 33AK512MPS510, 33AK512MPS512

**dsPIC® 33AK MPS Series (Ongoing Support)**
33AK128MPS103, 33AK128MPS105, 33AK128MPS106, 33AK128MPS303, 33AK128MPS305, 33AK128MPS306, 33AK256MPS103, 33AK256MPS105, 33AK256MPS106, 33AK256MPS303, 33AK256MPS305, 33AK256MPS306

**dsPIC® 33AKV GMS Series (Ongoing Support)**
33AKV256GMS205, 33AKV256GMS206, 33AKV256GMS208, 33AKV256GMS210, 33AKV256GMS505, 33AKV256GMS506, 33AKV256GMS508, 33AKV256GMS510, 33AKV512GMS205, 33AKV512GMS206, 33AKV512GMS208, 33AKV512GMS210, 33AKV512GMS505, 33AKV512GMS506, 33AKV512GMS508, 33AKV512GMS510

### dsPIC® 33C Family (170+ devices)

**dsPIC® 33CDV/CDVC/CDVL Series**
33CDV64MC106, 33CDV128MP206, 33CDV128MP506, 33CDV256MP206, 33CDV256MP506, 33CDVC128MP506, 33CDVC256MP506, 33CDVL64MC106

**dsPIC® 33CH Series (Dual-Core)**
33CH64MP202, 33CH64MP203, 33CH64MP205, 33CH64MP206, 33CH64MP208, 33CH64MP502, 33CH64MP503, 33CH64MP505, 33CH64MP506, 33CH64MP508, 33CH128MP202, 33CH128MP203, 33CH128MP205, 33CH128MP206, 33CH128MP208, 33CH128MP502, 33CH128MP503, 33CH128MP505, 33CH128MP506, 33CH128MP508, 33CH256MP205, 33CH256MP206, 33CH256MP208, 33CH256MP218, 33CH256MP505, 33CH256MP506, 33CH256MP508, 33CH512MP205, 33CH512MP206, 33CH512MP208, 33CH512MP305, 33CH512MP306, 33CH512MP308, 33CH512MP405, 33CH512MP406, 33CH512MP408, 33CH512MP410, 33CH512MP412, 33CH512MP505, 33CH512MP506, 33CH512MP508, 33CH512MP605, 33CH512MP606, 33CH512MP608, 33CH512MP705, 33CH512MP706, 33CH512MP708, 33CH512MP710, 33CH512MP712, 33CH1024MP305, 33CH1024MP306, 33CH1024MP308, 33CH1024MP405, 33CH1024MP406, 33CH1024MP408, 33CH1024MP410, 33CH1024MP412, 33CH1024MP605, 33CH1024MP606, 33CH1024MP608, 33CH1024MP705, 33CH1024MP706, 33CH1024MP708, 33CH1024MP710, 33CH1024MP712

**dsPIC® 33CK Series**
33CK32MP102, 33CK32MP103, 33CK32MP105, 33CK32MP202, 33CK32MP203, 33CK32MP205, 33CK32MP206, 33CK32MP502, 33CK32MP503, 33CK32MP505, 33CK32MP506, 33CK64MP102, 33CK64MP103, 33CK64MP105, 33CK64MP202, 33CK64MP203, 33CK64MP205, 33CK64MP206, 33CK64MP208, 33CK64MP502, 33CK64MP503, 33CK64MP505, 33CK64MP506, 33CK64MP508, 33CK128MP202, 33CK128MP203, 33CK128MP205, 33CK128MP206, 33CK128MP208, 33CK128MP502, 33CK128MP503, 33CK128MP505, 33CK128MP506, 33CK128MP508, 33CK256MP202, 33CK256MP203, 33CK256MP205, 33CK256MP206, 33CK256MP208, 33CK256MP305, 33CK256MP306, 33CK256MP308, 33CK256MP405, 33CK256MP406, 33CK256MP408, 33CK256MP410, 33CK256MP502, 33CK256MP503, 33CK256MP505, 33CK256MP506, 33CK256MP508, 33CK256MP605, 33CK256MP606, 33CK256MP608, 33CK256MP705, 33CK256MP706, 33CK256MP708, 33CK256MP710, 33CK512MP305, 33CK512MP306, 33CK512MP308, 33CK512MP405, 33CK512MP406, 33CK512MP408, 33CK512MP410, 33CK512MP605, 33CK512MP606, 33CK512MP608, 33CK512MP705, 33CK512MP706, 33CK512MP708, 33CK512MP710, 33CK1024MP405, 33CK1024MP406, 33CK1024MP408, 33CK1024MP410, 33CK1024MP705, 33CK1024MP706, 33CK1024MP708, 33CK1024MP710

**dsPIC® 33CK MC Series**
33CK32MC102, 33CK32MC103, 33CK32MC105, 33CK64MC102, 33CK64MC103, 33CK64MC105, 33CK128MC102, 33CK128MC103, 33CK128MC105, 33CK128MC106, 33CK128MC502, 33CK128MC503, 33CK128MC505, 33CK128MC506, 33CK256MC102, 33CK256MC103, 33CK256MC105, 33CK256MC106, 33CK256MC502, 33CK256MC503, 33CK256MC505, 33CK256MC506

**dsPIC® 33CK MPT Series**
33CK256MPT608, 33CK512MPT608

### dsPIC® 33E/33EP Family (100+ devices)

**dsPIC® 33EP GM Series (18 devices)**
33EP128GM304, 33EP128GM306, 33EP128GM310, 33EP128GM604, 33EP128GM706, 33EP128GM710, 33EP256GM304, 33EP256GM306, 33EP256GM310, 33EP256GM604, 33EP256GM706, 33EP256GM710, 33EP512GM304, 33EP512GM306, 33EP512GM310, 33EP512GM604, 33EP512GM706, 33EP512GM710

**dsPIC® 33EP GP Series (17 devices)**
33EP32GP502, 33EP32GP503, 33EP32GP504, 33EP64GP502, 33EP64GP503, 33EP64GP504, 33EP64GP506, 33EP128GP502, 33EP128GP504, 33EP128GP506, 33EP256GP502, 33EP256GP504, 33EP256GP506, 33EP512GP502, 33EP512GP504, 33EP512GP506, 33EP512GP806

**dsPIC® 33EP GS Series (28 devices)**
33EP16GS202, 33EP16GS502, 33EP16GS504, 33EP16GS505, 33EP16GS506, 33EP32GS202, 33EP32GS502, 33EP32GS504, 33EP32GS505, 33EP32GS506, 33EP64GS502, 33EP64GS504, 33EP64GS505, 33EP64GS506, 33EP64GS708, 33EP64GS804, 33EP64GS805, 33EP64GS806, 33EP64GS808, 33EP128GS702, 33EP128GS704, 33EP128GS705, 33EP128GS706, 33EP128GS708, 33EP128GS804, 33EP128GS805, 33EP128GS806, 33EP128GS808

**dsPIC® 33EP MC Series (32 devices)**
33EP32MC202, 33EP32MC203, 33EP32MC204, 33EP32MC502, 33EP32MC503, 33EP32MC504, 33EP64MC202, 33EP64MC203, 33EP64MC204, 33EP64MC206, 33EP64MC502, 33EP64MC503, 33EP64MC504, 33EP64MC506, 33EP128MC202, 33EP128MC204, 33EP128MC206, 33EP128MC502, 33EP128MC504, 33EP128MC506, 33EP256MC202, 33EP256MC204, 33EP256MC206, 33EP256MC502, 33EP256MC504, 33EP256MC506, 33EP512MC202, 33EP512MC204, 33EP512MC206, 33EP512MC502, 33EP512MC504, 33EP512MC506, 33EP512MC806

**dsPIC® 33EP MU Series (5 devices)**
33EP256MU806, 33EP256MU810, 33EP256MU814, 33EP512MU810, 33EP512MU814

**dsPIC® 33EV GM Series**
33EV32GM002, 33EV32GM003, 33EV32GM004, 33EV32GM006, 33EV32GM102, 33EV32GM103, 33EV32GM104, 33EV32GM106, 33EV64GM002, 33EV64GM003, 33EV64GM004, 33EV64GM006, 33EV64GM102, 33EV64GM103, 33EV64GM104, 33EV64GM106, 33EV128GM002, 33EV128GM003, 33EV128GM004, 33EV128GM006, 33EV128GM102, 33EV128GM103, 33EV128GM104, 33EV128GM106, 33EV256GM002, 33EV256GM003, 33EV256GM004, 33EV256GM006, 33EV256GM102, 33EV256GM103, 33EV256GM104, 33EV256GM106

### dsPIC® 33F/33FJ Family (80+ devices)

**dsPIC® 33FJ GP Series (46 devices)**
33FJ12GP201, 33FJ12GP202, 33FJ16GP304, 33FJ32GP202, 33FJ32GP204, 33FJ32GP302, 33FJ32GP304, 33FJ64GP202, 33FJ64GP204, 33FJ64GP206, 33FJ64GP206A, 33FJ64GP306, 33FJ64GP306A, 33FJ64GP310, 33FJ64GP310A, 33FJ64GP706, 33FJ64GP706A, 33FJ64GP708, 33FJ64GP708A, 33FJ64GP710, 33FJ64GP710A, 33FJ64GP802, 33FJ64GP804, 33FJ128GP202, 33FJ128GP204, 33FJ128GP206, 33FJ128GP206A, 33FJ128GP306, 33FJ128GP306A, 33FJ128GP310, 33FJ128GP310A, 33FJ128GP706, 33FJ128GP706A, 33FJ128GP708, 33FJ128GP708A, 33FJ128GP710, 33FJ128GP710A, 33FJ128GP802, 33FJ128GP804, 33FJ256GP506, 33FJ256GP506A, 33FJ256GP510, 33FJ256GP510A, 33FJ256GP710, 33FJ256GP710A

**dsPIC® 33FJ MC Series (40 devices)**
33FJ12MC201, 33FJ12MC202, 33FJ16MC304, 33FJ32MC202, 33FJ32MC204, 33FJ32MC302, 33FJ32MC304, 33FJ64MC202, 33FJ64MC204, 33FJ64MC506, 33FJ64MC506A, 33FJ64MC508, 33FJ64MC508A, 33FJ64MC510, 33FJ64MC510A, 33FJ64MC706, 33FJ64MC706A, 33FJ64MC710, 33FJ64MC710A, 33FJ64MC802, 33FJ64MC804, 33FJ128MC202, 33FJ128MC204, 33FJ128MC506, 33FJ128MC506A, 33FJ128MC510, 33FJ128MC510A, 33FJ128MC706, 33FJ128MC706A, 33FJ128MC708, 33FJ128MC708A, 33FJ128MC710, 33FJ128MC710A, 33FJ128MC802, 33FJ128MC804, 33FJ256MC510, 33FJ256MC510A, 33FJ256MC710, 33FJ256MC710A

### PIC32® Family (100+ devices)

**PIC32® AK GC Series**
32AK1216GC41036, 32AK1216GC41048, 32AK1216GC41064, 32AK3208GC41036, 32AK3208GC41048, 32AK3208GC41064, 32AK6416GC41036, 32AK6416GC41048, 32AK6416GC41064

**PIC32® MK Series (Motor Control)**
32MK0128MCA028, 32MK0128MCA032, 32MK0128MCA048, 32MK0256GPG048, 32MK0256GPG064, 32MK0256MCJ048, 32MK0256MCJ064, 32MK0512GPG048, 32MK0512GPG064, 32MK0512GPK064, 32MK0512GPK100, 32MK0512MCF064, 32MK0512MCF100, 32MK0512MCJ048, 32MK0512MCJ064, 32MK0512MCM064, 32MK0512MCM100, 32MK1024GPK064, 32MK1024GPK100, 32MK1024MCF064, 32MK1024MCF100, 32MK1024MCM064, 32MK1024MCM100

**PIC32® MZ Series (High-Performance)**
32MZ0512EFE064, 32MZ0512EFE100, 32MZ0512EFE124, 32MZ0512EFE144, 32MZ0512EFF064, 32MZ0512EFF100, 32MZ0512EFF124, 32MZ0512EFF144, 32MZ0512EFK064, 32MZ0512EFK100, 32MZ0512EFK124, 32MZ0512EFK144
*(Plus 1024KB and 2048KB variants across EFE/EFF/EFK/EFG/EFH/EFM subfamilies)*

**PIC32® CZ Series (Cortex®-M7)**
PIC32CZ1038CA70064, PIC32CZ1038CA70100, PIC32CZ1038CA70144, PIC32CZ1038MC70064, PIC32CZ1038MC70100, PIC32CZ2051CA70064, PIC32CZ2051CA70100, PIC32CZ2051CA70144, PIC32CZ2051MC70064, PIC32CZ2051MC70100, PIC32CZ5125CA70064, PIC32CZ5125CA70100, PIC32CZ5125CA70144, PIC32CZ5125MC70064, PIC32CZ5125MC70100

**PIC32® CM Series**
PIC32CM1216MC00032, PIC32CM1216MC00048, PIC32CM6408MC00032, PIC32CM6408MC00048

### SAM Family (ARM® Cortex®-M) (200+ devices)

**SAMC20/SAMC21 Series (Cortex®-M0+)**
SAMC20E15A through SAMC20N18A (16 devices)
SAMC21E15A through SAMC21N18A (16 devices)

**SAMD20/SAMD21 Series (Cortex®-M0+)**
SAMD20E14 through SAMD20J18 (26 devices)
SAMD21E15A through SAMD21J18A (40 devices)

**SAME51/SAME53/SAME54 Series (Cortex®-M4F)**
SAME51G18A through SAME51N20A (7 devices)
SAME53J18A through SAME53N20A (5 devices)
SAME54N19A through SAME54P20A (4 devices)

**SAME70/SAMS70/SAMV70/SAMV71 Series (Cortex®-M7)**
SAME70J19B through SAME70Q21B (9 devices)
SAMS70J19B through SAMS70Q21B (9 devices)
SAMV70J19B through SAMV70Q20B (6 devices)
SAMV71J19B through SAMV71Q21B (9 devices)

**SAMRH Series (Radiation-Hardened)**
SAMRH707F18A, SAMRH71F20B, SAMRH71F20C

</details>

---

## 🎯 Target Applications

| Application | Examples |
|-------------|----------|
| **⚡ Motor Control** | PMSM/BLDC, Field-Oriented Control (FOC), sensorless algorithms, field weakening |
| **🔋 Power Electronics** | Digital power control, PFC, inverters, DC-DC converters, solar/wind |
| **🏭 Industrial** | robotics, sensor interfaces, real-time control |
| **🎛️ Embedded Systems** | Signal processing, data acquisition, control loops |
| **🚗 Automotive** | EV inverters, battery monitoring, sensor fusion |

---

## 📄 License & Credits

**Developed by:** Microchip Technology Inc.

**License:** Microchip Technology End User License Agreement

---

## 🔗 Important Links

- **[GitHub Repository](https://github.com/MPLAB-Blockset/MPLAB-Device-Blocks-for-Simulink)** - Examples and releases
- **[MathWorks File Exchange](https://www.mathworks.com/matlabcentral/fileexchange/71892)** - Download and reviews
- **[Microchip Forums](https://forum.microchip.com/s/sub-forums?&subForumId=a553l000000J2rNAAS)** - Community support
- **[ctrl-elec Project](https://www.ctrl-elec.fr)** - Advanced motor control tutorials
- **[Microchip.com](https://www.microchip.com)** - Official product information

---

<div align="center">

**MPLAB® Device Blocks for Simulink®**

*Empowering embedded systems development with Model-Based Design*

[![GitHub](https://img.shields.io/badge/GitHub-Repository-black?logo=github)](https://github.com/MPLAB-Blockset/MPLAB-Device-Blocks-for-Simulink)
[![File Exchange](https://img.shields.io/badge/MATLAB-File%20Exchange-orange?logo=mathworks)](https://www.mathworks.com/matlabcentral/fileexchange/71892)
[![Forum](https://img.shields.io/badge/Microchip-Forum-blue?logo=microchip)](https://forum.microchip.com/s/sub-forums?&subForumId=a553l000000J2rNAAS)

</div>
