# inefi agent for Linux

## How to install
### Ubuntu
1. check agent exist or not
   > dpkg -s inefi
   * when inefi exist, need uninstall first
     > dpkg --remove inefi

2. uncompress first
   > tar xjvf inefi-agent.vXX.YY.ZZ.ubuntu.MM.NN.tar.bz2

3. check inefi.config
   * when inefi-agent.vXX.YY.ZZ.ubuntu.MM.NN/inefi.config not exist, installer will entry interactive mode  
   * when inefi-agent.vXX.YY.ZZ.ubuntu.MM.NN/inefi.config exist, installer will entry non-interactive mode  (slient)

4. execute install script
   * change current work path 
     > cd inefi-agent.vXX.YY.ZZ.ubuntu.MM.NN
   * execute package install
     > sudo ./install

### CentOS
1. check agent exist or not
   > rpm -q inefi
   * when inefi exist, need uninstall first
     > rpm -e inefi

2. uncompress first
   > tar xjvf inefi.vXX.YY.ZZ.VV.centos.DD.tar.bz2
   
3. check inefi.config
   * when inefi.vXX.YY.ZZ.VV.centos.DD/inefi.config not exist, installer will entry interactive mode
   * when inefi-agent.vXX.YY.ZZ.ubuntu.MM.NN/inefi.config exist, installer will entry non-interactive mode (slient)

4. execute install script
   * change current work path 
     > cd inefi.vXX.YY.ZZ.VV.centos.DD
   * execute package install
     > sudo ./install
---

## How to uninstall
### Ubuntu
> dpkg --remove inefi

### CentOS
> rpm -e inefi


### v1.00.47
[new]add a UI for inefi-agent.
[new]add peripheral centralization feature.
[new]add profile feature
  *volume control
  *brightness control
  *other function will implement in next version.
[fix]Plug in an external storage showing incorrect data free space and capacity
https://inefi.monday.com/boards/2592940911/pulses/3381468283

## v0.15.39 change note

[new] adding peripherals PID/VID
Customer	    Vendor	                Model 	      Interface	  PID	  VID
JD Sports UK	Datalogic 	            Gryphon D4520	USB-KBW	    222F	05F9
JD Sports UK	Datalogic  	            Gryphon D4520	USB-COM	    4204	05F9
JD Sports UK	Toshiba Thermal Printer	HSP100		                4001  08A6
TD	          Honey Scanner	          CM5680	      Serial	    0ECA	0C2E
TD	          Honey Scanner 	        CM5680	      Keyboard	  0EC1	0C2E
TD	          Honey Scanner	          CM5680	      HID	        0EC7	0C2E
TD	          Honey Scanner	          CM5680	      SurePOS	    0EC3	0C2E

[fixed] the file name garbled when vnc remote control calling the file transfer

[fixed] Unenroll device still exist
https://inefi.monday.com/boards/2592940911/pulses/3034045290

[fixed] Storage capacity not display
https://inefi.monday.com/boards/2592940911/pulses/3022266034

[fixed] Systemd is hanging when restart inefi.service
https://inefi.monday.com/boards/2592940911/pulses/3005953923

[fixed] Peripherals showing as same device, and all showing as unknown
https://inefi.monday.com/boards/2592940911/pulses/2780042340

[fixed] Memory usage showing as 0%
https://inefi.monday.com/boards/2592940911/pulses/2773436708

[fixed] Spotlight - orange light although unit is online and on. Could be error with device as no drivers for peripherals on Linux, removed all peripherals still no change, rebooted machine
https://inefi.monday.com/boards/2592940911/pulses/2592940964

[fixed] Spotlight Portal under Real Time Information memory usage reports -1%
https://inefi.monday.com/boards/2592940911/pulses/2724480340

---

## v0.14.32 change note

### Issue Fixed
[fixed] The IoTHub MQTT connection unexpected disconnect.
[fixed] The viewer cannot reconnect to vnc server immediately.

---

## v0.13.31 change note

### New Feature
* Support vnc connection auto disconnect feature (default 1 hour).

### Update
[modify] Add an usb_white_list for scan peripheral.
[modify] Change transport protocol from the MQTT over websocket to MQTT.


---

## v0.12.30 change note

### New Feature
* Provide dataPreProcessing data for AutoRegistraction.

### Issue Fixed
[fixed] query vnc clients not working in CentOS7
[fixed] Wrong format of telemetry cause the real-time information missing.
[fixed] Switch the CPU usage and Mem usage in the payload of the direct method PROCESS_LIST.
[fixed] fixed the issue of screenshot direct method on cent os 7

### Update
[modify] Add an usb_white_list for scan peripheral.
[modify] support eGalax EXC31xx series

---

## v0.11.28 change note

### New Feature
* Support multi domain autoRegistraction by command line argument

### Issue fixed
* Fixed the RESET method cause the agent crash issue

---

## v0.10.26 change note
### New Feature
* Support remote control v2 format of inefi server
* Support autoRegistraction flow
* Disable interactive mode in install phase for conflict with autoRegistraction flow
* Peripheral RESET capability for
  * VID:PID  0x0EEF : 0xC000  EETI Touch                         PCAP80H84 Series 
  * VID:PID  0x0C2E : 0x0E41  Honeywell Barcode                  N6600, N3680 
  * VID:PID  0x0C2E : 0x0E47  Honeywell Barcode                  N6600, N3680 
  * VID:PID  0x0C2E : 0x0EC1  Honeywell Barcode                  N6600, N3680 
  * VID:PID  0x0C2E : 0x0ECA  Honeywell Barcode                  N6600, N3680 
  * VID:PID  0x05E0 : 0x1200  Symbol Barcode                     DS4308 
  * VID:PID  0x04B8 : 0x0E20  EPSON Printer                      TM-m30 
  * VID:PID  0x04B8 : 0x0202  EPSON Printer                      TM-L90, TM-T88V, TM-T88VI , TM-J7200 
  * VID:PID  0x1222 : 0xFACA  TIPRO Keyboard                     TM-KMX-096A 
  * VID:PID  0x0416 : 0xF108  OEM IButton                        1BT2 
  * VID:PID  0x0416 : 0xF011  OEM LCM                            LD20 
  * VID:PID  0x0519 : 0x0047  Star Printer                       MCP31LB 
  * VID:PID  0x147E : 0x2016  DigitalPersona FingerPrint         TCETD1FG022 
  * VID:PID  0x0ACD : 0x2030  IDTECH MSR                         IDHA-5442-F2 
  * VID:PID  0x0F39 : 0x060C  OEM Keyboard                       MSB60HU 
  * VID:PID  0x0C2E : 0x0ECF  Honeywell Barcode                  N6600, N3680 
  * VID:PID  0x0F39 : 0x0402  OEM Keyboard                       S40AU 
  * VID:PID  0x0E28 : 0x04B8  EPSON Printer                      TM-T20 
  * VID:PID  0x0E81 : 0x0C2E  Honeywell Barcode                  7980g 
  * VID:PID  0x0E2A : 0x04B8  EPSON Printer                      TM-m30II 
  * VID:PID  0x067B : 0xAAA8  Chilitag NFC                       CT-NFCE-03-01 
  * VID:PID  0x0C2E : 0x0A41  Honeywell Scanner                  N4315 
  * VID:PID  0x0C2E : 0x0961  Honeywell Scanner                  N5600 
  * VID:PID  0x0C2E : 0x096A  Honeywell Scanner                  N5600SR 
  * VID:PID  0x0ACD : 0x2150  IDTECH MSR                         IDHA-5642-F2 
  * VID:PID  0x0ACD : 0x3820  IDTECH Reader                      IDEM-259-F2 
  * VID:PID  0x0CA6 : 0x3050  Castles Reader                     EZM710AU 
  * VID:PID  0x0CA6 : 0x0010  Castles Reader                     EZM110PU 
  * VID:PID  0x058F : 0x5608  Fangtec Webcam                     AG5020B27-S1-AZ0 
  * VID:PID  0x0801 : 0x0011  Magtek MSR                         21030062 
  * VID:PID  0x05BA : 0x000A  DigitalPersona FingerPrint         U4500 
  * VID:PID  0x17E9 : 0x039A  DisplayLink Monitor                PA35 
  * VID:PID  0x076B : 0x5127  OMNIKEY RFID                       5127CK MINI 
  * VID:PID  0x0C2E : 0x0BE1  Honeywell Barcode                  MK7580 
  * VID:PID  0x0C2E : 0x0CCF  Honeywell Barcode                  Voyager 
  * VID:PID  0x0AA7 : 0x0304  Wincor Barcode                     TH230 
  * VID:PID  0x0AA7 : 0x0306  Wincor Barcode                     TH320 
  * VID:PID  0x0AA7 : 0x0307  Wincor Barcode                     TH320 
  * VID:PID  0x0AA7 : 0x0300  Wincor Barcode                     TH210 
  * VID:PID  0x0AA7 : 0x0301  Wincor Barcode                     TH210 
  * VID:PID  0x2218 : 0x05F9  Datalogic Barcode                  Quick Scan QD2430 
  * VID:PID  0x1504 : 0x001F  Bixolon Printer                    SPR-350II 
  * VID:PID  0x04D8 : 0x0062  Bixolon MSR                        BM10 
  * VID:PID  0x0D3A : 0x0500  Posiflex MSR                       MR2000 
  * VID:PID  0x0536 : 0x04C1  Honeywell Barcode                  4600R 
  * VID:PID  0x0C2E : 0x0901  Honeywell Barcode                  1900 
  * VID:PID  0x0C2E : 0x0204  Honeywell Barcode                  MS7120 
  * VID:PID  0x0000 : 0x0001  Zebex Barcode                      Z-3001 
  * VID:PID  0x24EA : 0x0197  Zebex Barcode                      Z-3220 
  * VID:PID  0x13BA : 0x0018  Zebex Barcode                      Z-6170 
  * VID:PID  0x1EAB : 0x8003  Newland Barcode                    NLS-HR12 
  * VID:PID  0x04B4 : 0x0100  Cipherlab Barcode                  1000 
  * VID:PID  0x0C27 : 0x3BFA  RFIDEAS RFID                       RDR-7581AKU 
  * VID:PID  0x1D57 : 0xAC08  Feeling Technology RFID            EWORK-ERFID10A-608 
  * VID:PID  0x1667 : 0x0005  GIGA-TMS RFID                      TS100A 
  * VID:PID  0x072F : 0x2217  Advanced Card Syatems NFC          ACR1281U 
  * VID:PID  0x0403 : 0x6001  Bixolon USB to Serial              BG10 
  * VID:PID  0x067B : 0x2303  Prolific USB to Serial             UCR-100S 
  * VID:PID  0x1504 : 0x0011  Bixolon Display                    BCD-1100 
  * VID:PID  0x1504 : 0x008C  Bixolon Display                    BCD-2000 
  * VID:PID  0x1504 : 0x008D  Bixolon Display                    BCD-3000 
  * VID:PID  0x076C : 0x0204  Partner Display                    CD-7220-UN 
  * VID:PID  0x0D3A : 0x0220  Posiflex Display                   PD-2800UH 
  * VID:PID  0x0403 : 0x6001  Derio Scale                        E-48160 
  * VID:PID  0x05E0 : 0x1300  Symbol Barcode                     DS4308 
  * VID:PID  0x0404 : 0x0328  NCRCorp MSR                        K016 
  * VID:PID  0x0404 : 0x0329  NCRCorp MSR                        K018 
  * VID:PID  0x0404 : 0x032A  NCRCorp MSR                        K016HID 
  * VID:PID  0x0B00 : 0x0B00  Ingenico MSR                       3000/PED 
  * VID:PID  0x079B : 0x0028  Ingenico Payment Terminals         Telium 
  * VID:PID  0x079B : 0x0029  Ingenico Drivers                   PPR30 
  * VID:PID  0x079B : 0x0050  Ingenico Drivers                   iUN-UCI 
  * VID:PID  0x079B : 0x0051  Ingenico Payment Terminals         iPP2xx 
  * VID:PID  0x0B00 : 0x0052  Ingenico Payment Terminals         Move5000 
  * VID:PID  0x0B00 : 0x0053  Ingenico Payment Terminals         Move3xxx 
  * VID:PID  0x0B00 : 0x0054  Ingenico Payment Terminals         Desk3xxx 
  * VID:PID  0x0B00 : 0x0055  Ingenico Payment Terminals         Move2xxx 
  * VID:PID  0x0B00 : 0x0056  Ingenico Payment Terminals         Lane7xxx 
  * VID:PID  0x0B00 : 0x0057  Ingenico NFC                       iST1xx/iUC1xx/iUP250 
  * VID:PID  0x0B00 : 0x0058  Ingenico Payment Terminals         iPP3xx 
  * VID:PID  0x0B00 : 0x0060  Ingenico Payment Terminals         iPP3xx/iPP4xx 
  * VID:PID  0x0B00 : 0x0061  Ingenico Payment Terminals         iSC350/iSC4xx 
  * VID:PID  0x0B00 : 0x0062  Ingenico Payment Terminals         iSC2xx 
  * VID:PID  0x0B00 : 0x0063  Ingenico Payment Terminals         iSC4xx 
  * VID:PID  0x0B00 : 0x0064  Ingenico Payment Terminals         iWL2xx/iWL3xx/iWB2xx 
  * VID:PID  0x0B00 : 0x0066  Ingenico Payment Terminals         iCT2xx 
  * VID:PID  0x0B00 : 0x0067  Ingenico Drivers                   E532 
  * VID:PID  0x0B00 : 0x0069  Ingenico Drivers                   iPH 
  * VID:PID  0x0B00 : 0x006A  Ingenico Payment Terminals         iRS1 
  * VID:PID  0x0B00 : 0x006B  Ingenico Payment Terminals         iRS2 
  * VID:PID  0x0B00 : 0x006C  Ingenico Payment Terminals         iRS3 
  * VID:PID  0x079B : 0x006D  Ingenico Reader                    P30 
  * VID:PID  0x079B : 0x006E  Ingenico Payment Terminals         Telium Pass 
  * VID:PID  0x0B00 : 0x006F  Ingenico Reader                    iUR250 
  * VID:PID  0x0B00 : 0x007C  Ingenico Reader                    iUR255 
  * VID:PID  0x0B00 : 0x007D  Ingenico Reader                    iUC150B 
  * VID:PID  0x0B00 : 0x0080  Ingenico Payment Terminals         Desk5000 
  * VID:PID  0x0B00 : 0x0081  Ingenico Payment Terminals         Lane5000 
  * VID:PID  0x0B00 : 0x0082  Ingenico Payment Terminals         Lane8xxx 
  * VID:PID  0x0B00 : 0x0083  Ingenico Payment Terminals         Link2xxx 
  * VID:PID  0x0B00 : 0x0084  Ingenico Payment Terminals         Lane3xxx 
  * VID:PID  0x0B00 : 0x0085  Ingenico Payment Terminals         Move5000 F 
  * VID:PID  0x0B00 : 0x0086  Ingenico POS                       AXIUM-D7 
  * VID:PID  0x0B00 : 0x0087  Ingenico Payment Terminals         Desk1500 
  * VID:PID  0x0B00 : 0x0088  Ingenico Reader                    Open 1200/1500 
  * VID:PID  0x0B00 : 0x0089  Ingenico Drivers                   AXIUM-M7A 
  * VID:PID  0x079B : 0x008B  Ingenico Drivers                   CAD30UPP 
  * VID:PID  0x079B : 0x008D  Ingenico Pin Pad                   PP30s 
  * VID:PID  0x079B : 0x0090  Ingenico Drivers                   CAD30VT 
  * VID:PID  0x079B : 0x009C  Ingenico Drivers                   CAD30USR 
  * VID:PID  0x0C2E : 0x0FCA  Honeywell Barcode                  Orbit 7190G 
  * VID:PID  0x11CA : 0x0219  VeriFone Payment Terminals         VX820 
  * VID:PID  0x2CE3 : 0xC670  FANGTEC Webcam                     AG6250A1D-S2-AH0 
  * VID:PID  0x0416 : 0xF021  FLYTECH LED                        52F291 
  * VID:PID  0x0416 : 0xF022  FLYTECH LED                        52F291 
  * VID:PID  0x058F : 0x3844  FANGTEC Webcam                     AV6250C22-S2-4A3 

### Issue fixed
* Fixed password only support length of 8 problem in config file


---

## v0.9.8 change note
### New Feature
* Support screenshot for multiple screen/monitor.

### Issue fixed
* Fixed data of product name in static.

---
## v0.9.4 change note

### New Feature
* Support Cent OS 7/8
* Support X11/Wayland desktop managment.
* Support dynamic authority & session update when logged.
* Support remote control (Only Ubuntu 18.04 with x11vnc )
* Added build info & date on log
* Added codebase commit hash tag on log

### Updated
* Optimized board information.
* Optimized coretemp information.
* Optimized network information.
* Optimized screenshot by DBUS.
* Optimized install script for mandatory package check&install on CentOS 7/8

### Issue fixed
* Fixed can't get screenshot when OS desktop managment use Wayland architecture.
* Fixed interactive mode without domain question.
* Fixed enviornment of XAUTHORITY is empty in agent service config.

### PERIPHERAL support list
* Printer
  * EPSON TM-T88V (04B8:0202)
* Barcode scanner
  * Honeywell N5600 (0C2E:0967/0961/096A)
* Touch screen
  * eGalax P80H84 (0EEF:C002)

---

## v0.8.45 change note

### New Feature
* RESET method support
  * RESET
  * API RESET
  * POWER RESET (device need connect to dongle)
* Domain of inefi server can modify in inefi.config
* Interactive & non-interactive install mode support
* Update device's reset method to twin property.
* Key of 'USBNodeId' support for RESET direct method

### Format fixed
* Reduce CPU frequency float number length
* Modify key of 'Securt' in inefi.config from 'Secrt'

### PERIPHERAL support list
* Printer
  * EPSON TM-T88V (04B8:0202)
* Barcode scanner
  * Honeywell N5600 (0C2E:0967/0961/096A)
* Touch screen
  * eGalax P80H84 (0EEF:C002)

---