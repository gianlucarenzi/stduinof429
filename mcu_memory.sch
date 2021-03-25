EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 2 2
Title "STM32Duino429"
Date "2021-03-22"
Rev "1.1"
Comp "RetroBit Lab"
Comment1 "ARDUINO STM32F429 MPU Interface"
Comment2 " "
Comment3 " "
Comment4 "STM32F249IGTx & HEADERS"
$EndDescr
Text GLabel 7000 1950 0    39   Input ~ 0
nRST
Text GLabel 6700 2750 0    39   Input ~ 0
VCC_3V3
$Comp
L stduinof429-rescue:Crystal_Small-Device1-stduinof429-rescue-stduinof429-rescue XT1
U 1 1 5C421B52
P 5100 5400
F 0 "XT1" H 5100 5500 50  0000 C CNN
F 1 "8Mhz" H 5100 5300 50  0000 C CNN
F 2 "RetroBitLab:Crystal_HC49-4H_Vertical_3D" H 5100 5400 50  0001 C CNN
F 3 "" H 5100 5400 50  0000 C CNN
	1    5100 5400
	0    1    1    0   
$EndComp
$Comp
L stduinof429-rescue:C_Small-Device1-stduinof429-rescue-stduinof429-rescue C5
U 1 1 5C421C91
P 4700 5050
F 0 "C5" H 4710 5120 50  0000 L CNN
F 1 "20p" H 4710 4970 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4700 5050 50  0001 C CNN
F 3 "" H 4700 5050 50  0000 C CNN
	1    4700 5050
	0    1    1    0   
$EndComp
$Comp
L stduinof429-rescue:C_Small-Device1-stduinof429-rescue-stduinof429-rescue C6
U 1 1 5CA87C42
P 4700 5750
F 0 "C6" H 4710 5820 50  0000 L CNN
F 1 "20p" H 4710 5670 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4700 5750 50  0001 C CNN
F 3 "" H 4700 5750 50  0000 C CNN
	1    4700 5750
	0    1    1    0   
$EndComp
$Comp
L stduinof429-rescue:GND-power1-stduinof429-rescue-stduinof429-rescue #PWR016
U 1 1 5CA87C43
P 4350 5400
F 0 "#PWR016" H 4350 5150 50  0001 C CNN
F 1 "GND" H 4350 5250 50  0000 C CNN
F 2 "" H 4350 5400 50  0001 C CNN
F 3 "" H 4350 5400 50  0001 C CNN
	1    4350 5400
	0    1    1    0   
$EndComp
$Comp
L stduinof429-rescue:C_Small-Device1-stduinof429-rescue-stduinof429-rescue C12
U 1 1 5C421E29
P 14800 1000
F 0 "C12" H 14810 1070 50  0000 L CNN
F 1 "100n" H 14810 920 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 14800 1000 50  0001 C CNN
F 3 "" H 14800 1000 50  0000 C CNN
	1    14800 1000
	0    1    1    0   
$EndComp
$Comp
L stduinof429-rescue:C_Small-Device1-stduinof429-rescue-stduinof429-rescue C13
U 1 1 5C421EE5
P 14800 1350
F 0 "C13" H 14810 1420 50  0000 L CNN
F 1 "100n" H 14810 1270 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 14800 1350 50  0001 C CNN
F 3 "" H 14800 1350 50  0000 C CNN
	1    14800 1350
	0    1    1    0   
$EndComp
$Comp
L stduinof429-rescue:C_Small-Device1-stduinof429-rescue-stduinof429-rescue C14
U 1 1 5C421F19
P 14800 1700
F 0 "C14" H 14810 1770 50  0000 L CNN
F 1 "100n" H 14810 1620 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 14800 1700 50  0001 C CNN
F 3 "" H 14800 1700 50  0000 C CNN
	1    14800 1700
	0    1    1    0   
$EndComp
$Comp
L stduinof429-rescue:C_Small-Device1-stduinof429-rescue-stduinof429-rescue C15
U 1 1 5CA87C47
P 14800 2050
F 0 "C15" H 14810 2120 50  0000 L CNN
F 1 "100n" H 14810 1970 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 14800 2050 50  0001 C CNN
F 3 "" H 14800 2050 50  0000 C CNN
	1    14800 2050
	0    1    1    0   
$EndComp
$Comp
L stduinof429-rescue:C_Small-Device1-stduinof429-rescue-stduinof429-rescue C16
U 1 1 5C421F82
P 14800 2400
F 0 "C16" H 14810 2470 50  0000 L CNN
F 1 "100n" H 14810 2320 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 14800 2400 50  0001 C CNN
F 3 "" H 14800 2400 50  0000 C CNN
	1    14800 2400
	0    1    1    0   
$EndComp
$Comp
L stduinof429-rescue:C_Small-Device1-stduinof429-rescue-stduinof429-rescue C17
U 1 1 5C421FB7
P 14800 2750
F 0 "C17" H 14810 2820 50  0000 L CNN
F 1 "100n" H 14810 2670 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 14800 2750 50  0001 C CNN
F 3 "" H 14800 2750 50  0000 C CNN
	1    14800 2750
	0    1    1    0   
$EndComp
$Comp
L stduinof429-rescue:C_Small-Device1-stduinof429-rescue-stduinof429-rescue C18
U 1 1 5C421FF7
P 14800 3100
F 0 "C18" H 14810 3170 50  0000 L CNN
F 1 "100n" H 14810 3020 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 14800 3100 50  0001 C CNN
F 3 "" H 14800 3100 50  0000 C CNN
	1    14800 3100
	0    1    1    0   
$EndComp
$Comp
L stduinof429-rescue:GND-power1-stduinof429-rescue-stduinof429-rescue #PWR017
U 1 1 5CA87C4B
P 15050 2050
F 0 "#PWR017" H 15050 1800 50  0001 C CNN
F 1 "GND" H 15050 1900 50  0000 C CNN
F 2 "" H 15050 2050 50  0001 C CNN
F 3 "" H 15050 2050 50  0001 C CNN
	1    15050 2050
	0    -1   -1   0   
$EndComp
Text GLabel 14500 6400 3    39   Input ~ 0
VCC_3V3
Text GLabel 7000 7050 0    39   BiDi ~ 0
mD0
Text GLabel 7000 7150 0    39   BiDi ~ 0
mD1
Text GLabel 7000 7250 0    39   BiDi ~ 0
mD2
Text GLabel 7000 7350 0    39   BiDi ~ 0
mD3
Text GLabel 7000 7450 0    39   BiDi ~ 0
mD4
Text GLabel 7000 7550 0    39   BiDi ~ 0
mD5
Text GLabel 7000 7650 0    39   BiDi ~ 0
mD6
Text GLabel 7000 7750 0    39   BiDi ~ 0
mD7
Text GLabel 9900 5350 2    39   BiDi ~ 0
mA0
Text GLabel 9900 5450 2    39   BiDi ~ 0
mA1
Text GLabel 9900 5550 2    39   BiDi ~ 0
mA2
Text GLabel 9900 5650 2    39   BiDi ~ 0
mA3
Text GLabel 9900 5750 2    39   BiDi ~ 0
mA4
Text GLabel 9900 5850 2    39   BiDi ~ 0
mA5
Text GLabel 9900 5950 2    39   BiDi ~ 0
mA6
Text GLabel 9900 6050 2    39   BiDi ~ 0
mA7
Text GLabel 7000 4050 0    39   BiDi ~ 0
mPHI2
Text GLabel 7000 4150 0    39   BiDi ~ 0
~mS5
Text GLabel 7000 4250 0    39   BiDi ~ 0
~mS4
Text GLabel 7000 4450 0    39   BiDi ~ 0
~mCCTL
Text GLabel 7000 4550 0    39   BiDi ~ 0
mR/~W
$Comp
L stduinof429-rescue:R_Small-Device1-stduinof429-rescue-stduinof429-rescue R14
U 1 1 5C422FC6
P 12150 6950
F 0 "R14" H 12180 6970 50  0000 L CNN
F 1 "330" H 12180 6910 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 12150 6950 50  0001 C CNN
F 3 "" H 12150 6950 50  0000 C CNN
	1    12150 6950
	1    0    0    -1  
$EndComp
$Comp
L stduinof429-rescue:Led_Small-stduinof429-rescue-stduinof429-rescue D2
U 1 1 5C423143
P 12150 6750
F 0 "D2" H 12100 6875 50  0000 L CNN
F 1 "LED.GREEN" H 11975 6650 50  0000 L CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 12150 6750 50  0001 C CNN
F 3 "" V 12150 6750 50  0000 C CNN
	1    12150 6750
	0    1    1    0   
$EndComp
$Comp
L stduinof429-rescue:GND-power1-stduinof429-rescue-stduinof429-rescue #PWR018
U 1 1 5C42325A
P 12150 6500
F 0 "#PWR018" H 12150 6250 50  0001 C CNN
F 1 "GND" H 12150 6350 50  0000 C CNN
F 2 "" H 12150 6500 50  0001 C CNN
F 3 "" H 12150 6500 50  0001 C CNN
	1    12150 6500
	-1   0    0    1   
$EndComp
$Comp
L stduinof429-rescue:GND-power1-stduinof429-rescue-stduinof429-rescue #PWR019
U 1 1 5C4234AD
P 8550 10950
F 0 "#PWR019" H 8550 10700 50  0001 C CNN
F 1 "GND" H 8550 10800 50  0000 C CNN
F 2 "" H 8550 10950 50  0001 C CNN
F 3 "" H 8550 10950 50  0001 C CNN
	1    8550 10950
	1    0    0    -1  
$EndComp
Text GLabel 11700 7200 0    39   BiDi Italic 8
LEDGRN_MEM
Text Notes 11300 7400 0    59   ~ 12
GREEN LED BOARD USAGE
Text GLabel 9900 3650 2    39   BiDi Italic 8
LEDGRN_MEM
Text GLabel 9900 3350 2    39   BiDi ~ 0
SWDCLK
Text GLabel 9900 3250 2    39   BiDi ~ 0
SWDIO
$Comp
L stduinof429-rescue:R_Small-Device1-stduinof429-rescue-stduinof429-rescue R4
U 1 1 5C43FC39
P 5450 5750
F 0 "R4" H 5480 5770 50  0000 L CNN
F 1 "220" H 5480 5710 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5450 5750 50  0001 C CNN
F 3 "" H 5450 5750 50  0000 C CNN
	1    5450 5750
	0    1    1    0   
$EndComp
$Comp
L stduinof429-rescue:R_Small-Device1-stduinof429-rescue-stduinof429-rescue R3
U 1 1 5CA87C51
P 5450 5050
F 0 "R3" H 5480 5070 50  0000 L CNN
F 1 "0" H 5480 5010 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5450 5050 50  0001 C CNN
F 3 "" H 5450 5050 50  0000 C CNN
	1    5450 5050
	0    1    1    0   
$EndComp
Text GLabel 9900 6150 2    39   BiDi ~ 0
mA8
Text GLabel 9900 6250 2    39   BiDi ~ 0
mA9
Text GLabel 9900 6350 2    39   BiDi ~ 0
mA10
Text GLabel 9900 6450 2    39   BiDi ~ 0
mA11
Text GLabel 9900 6550 2    39   BiDi ~ 0
mA12
Text GLabel 9900 6650 2    39   BiDi ~ 0
mA13
Text GLabel 9900 6750 2    39   BiDi ~ 0
mA14
Text GLabel 9900 6850 2    39   BiDi ~ 0
mA15
$Comp
L stduinof429-rescue:R_Small-Device1-stduinof429-rescue-stduinof429-rescue R8
U 1 1 5CA875A2
P 10350 2600
F 0 "R8" H 10380 2620 50  0000 L CNN
F 1 "10K" H 10380 2560 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 10350 2600 50  0001 C CNN
F 3 "" H 10350 2600 50  0000 C CNN
	1    10350 2600
	1    0    0    -1  
$EndComp
$Comp
L stduinof429-rescue:R_Small-Device1-stduinof429-rescue-stduinof429-rescue R11
U 1 1 5CA87673
P 10850 2700
F 0 "R11" H 10880 2720 50  0000 L CNN
F 1 "10K" H 10880 2660 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 10850 2700 50  0001 C CNN
F 3 "" H 10850 2700 50  0000 C CNN
	1    10850 2700
	1    0    0    -1  
$EndComp
Text GLabel 10450 2850 2    39   BiDi ~ 0
UART_TX
Text GLabel 10950 2950 2    39   BiDi ~ 0
UART_RX
Text GLabel 9900 3950 2    39   BiDi ~ 0
~mREF
Text GLabel 9900 3750 2    39   BiDi ~ 0
~mRST
Text GLabel 9900 4650 2    39   BiDi ~ 0
~mIRQ
Text GLabel 9900 4450 2    39   BiDi ~ 0
~mMPD
Text GLabel 7000 4350 0    39   BiDi ~ 0
~mD1XX
Text GLabel 9900 4150 2    39   BiDi ~ 0
~mEXSEL
$Comp
L stduinof429-rescue:R_Small-Device1-stduinof429-rescue-stduinof429-rescue R9
U 1 1 5CBFC52B
P 10700 3650
F 0 "R9" H 10730 3670 50  0000 L CNN
F 1 "10K" H 10730 3610 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 10700 3650 50  0001 C CNN
F 3 "" H 10700 3650 50  0001 C CNN
	1    10700 3650
	1    0    0    -1  
$EndComp
$Comp
L stduinof429-rescue:R_Small-Device1-stduinof429-rescue-stduinof429-rescue R10
U 1 1 5CBFC584
P 10700 4050
F 0 "R10" H 10730 4070 50  0000 L CNN
F 1 "510" H 10730 4010 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 10700 4050 50  0001 C CNN
F 3 "" H 10700 4050 50  0001 C CNN
	1    10700 4050
	1    0    0    -1  
$EndComp
$Comp
L stduinof429-rescue:CONN_01X02-stduinof429-rescue-stduinof429-rescue BOOT1_MEM1
U 1 1 5CBFC5CC
P 10900 4300
AR Path="/5CBFC5CC" Ref="BOOT1_MEM1"  Part="1" 
AR Path="/5DA2930A/5CBFC5CC" Ref="BOOT1_MEM1"  Part="1" 
F 0 "BOOT1_MEM1" V 11100 4300 50  0000 C CNN
F 1 "CONN_01X02" V 11000 4300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10900 4300 50  0001 C CNN
F 3 "" H 10900 4300 50  0000 C CNN
	1    10900 4300
	1    0    0    -1  
$EndComp
$Comp
L stduinof429-rescue:GND-power1-stduinof429-rescue-stduinof429-rescue #PWR020
U 1 1 5CBFC64D
P 10700 4450
F 0 "#PWR020" H 10700 4200 50  0001 C CNN
F 1 "GND" H 10700 4300 50  0000 C CNN
F 2 "" H 10700 4450 50  0001 C CNN
F 3 "" H 10700 4450 50  0001 C CNN
	1    10700 4450
	1    0    0    -1  
$EndComp
Text GLabel 10700 3500 1    39   Input ~ 0
VCC_3V3
$Comp
L stduinof429-rescue:R_Small-Device1-stduinof429-rescue-stduinof429-rescue R5
U 1 1 5CBFD035
P 5900 2100
F 0 "R5" H 5930 2120 50  0000 L CNN
F 1 "10K" H 5930 2060 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5900 2100 50  0001 C CNN
F 3 "" H 5900 2100 50  0001 C CNN
	1    5900 2100
	1    0    0    -1  
$EndComp
$Comp
L stduinof429-rescue:R_Small-Device1-stduinof429-rescue-stduinof429-rescue R6
U 1 1 5CBFD03B
P 5900 2500
F 0 "R6" H 5930 2520 50  0000 L CNN
F 1 "510" H 5930 2460 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5900 2500 50  0001 C CNN
F 3 "" H 5900 2500 50  0001 C CNN
	1    5900 2500
	1    0    0    -1  
$EndComp
$Comp
L stduinof429-rescue:CONN_01X02-stduinof429-rescue-stduinof429-rescue BOOT0_MEM1
U 1 1 5CBFD041
P 6100 2750
AR Path="/5CBFD041" Ref="BOOT0_MEM1"  Part="1" 
AR Path="/5DA2930A/5CBFD041" Ref="BOOT0_MEM1"  Part="1" 
F 0 "BOOT0_MEM1" V 5800 2750 50  0000 C CNN
F 1 "CONN_01X02" V 6200 2750 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6100 2750 50  0001 C CNN
F 3 "" H 6100 2750 50  0000 C CNN
	1    6100 2750
	1    0    0    -1  
$EndComp
$Comp
L stduinof429-rescue:GND-power1-stduinof429-rescue-stduinof429-rescue #PWR021
U 1 1 5CBFD047
P 5900 2900
F 0 "#PWR021" H 5900 2650 50  0001 C CNN
F 1 "GND" H 5900 2750 50  0000 C CNN
F 2 "" H 5900 2900 50  0001 C CNN
F 3 "" H 5900 2900 50  0001 C CNN
	1    5900 2900
	1    0    0    -1  
$EndComp
Text GLabel 5900 1950 1    39   Input ~ 0
VCC_3V3
$Comp
L stduinof429-rescue:C_Small-Device1-stduinof429-rescue-stduinof429-rescue C11
U 1 1 5CBFD329
P 14800 800
F 0 "C11" H 14810 870 50  0000 L CNN
F 1 "100n" H 14810 720 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 14800 800 50  0001 C CNN
F 3 "" H 14800 800 50  0000 C CNN
	1    14800 800 
	0    1    1    0   
$EndComp
$Comp
L stduinof429-rescue:C_Small-Device1-stduinof429-rescue-stduinof429-rescue C9
U 1 1 5CBFD5FA
P 6850 2950
F 0 "C9" H 6860 3020 50  0000 L CNN
F 1 "100n" H 6860 2870 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6850 2950 50  0001 C CNN
F 3 "" H 6850 2950 50  0000 C CNN
	1    6850 2950
	-1   0    0    1   
$EndComp
$Comp
L stduinof429-rescue:GND-power1-stduinof429-rescue-stduinof429-rescue #PWR022
U 1 1 5CBFD69C
P 6850 3050
F 0 "#PWR022" H 6850 2800 50  0001 C CNN
F 1 "GND" H 6850 2900 50  0000 C CNN
F 2 "" H 6850 3050 50  0001 C CNN
F 3 "" H 6850 3050 50  0001 C CNN
	1    6850 3050
	1    0    0    -1  
$EndComp
Text GLabel 7000 2550 0    39   BiDi ~ 0
VCAP_1_MEM
Text GLabel 7000 2650 0    39   BiDi ~ 0
VCAP_2_MEM
Text GLabel 5100 2250 1    39   BiDi ~ 0
VCAP_1_MEM
Text GLabel 4850 2250 1    39   BiDi ~ 0
VCAP_2_MEM
$Comp
L stduinof429-rescue:C_Small-Device1-stduinof429-rescue-stduinof429-rescue C7
U 1 1 5CBFDA42
P 4850 2450
F 0 "C7" H 4860 2520 50  0000 L CNN
F 1 "2.2u" H 4860 2370 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4850 2450 50  0001 C CNN
F 3 "" H 4850 2450 50  0000 C CNN
	1    4850 2450
	-1   0    0    1   
$EndComp
$Comp
L stduinof429-rescue:C_Small-Device1-stduinof429-rescue-stduinof429-rescue C8
U 1 1 5CBFDACE
P 5100 2450
F 0 "C8" H 5110 2520 50  0000 L CNN
F 1 "2.2u" H 5110 2370 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5100 2450 50  0001 C CNN
F 3 "" H 5100 2450 50  0000 C CNN
	1    5100 2450
	-1   0    0    1   
$EndComp
$Comp
L stduinof429-rescue:GND-power1-stduinof429-rescue-stduinof429-rescue #PWR023
U 1 1 5CBFDC43
P 4850 2650
F 0 "#PWR023" H 4850 2400 50  0001 C CNN
F 1 "GND" H 4850 2500 50  0000 C CNN
F 2 "" H 4850 2650 50  0001 C CNN
F 3 "" H 4850 2650 50  0001 C CNN
	1    4850 2650
	1    0    0    -1  
$EndComp
$Comp
L stduinof429-rescue:R_Small-Device1-stduinof429-rescue-stduinof429-rescue R7
U 1 1 5CBFE173
P 9100 10650
F 0 "R7" H 9130 10670 50  0000 L CNN
F 1 "0" H 9130 10610 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9100 10650 50  0001 C CNN
F 3 "" H 9100 10650 50  0001 C CNN
	1    9100 10650
	1    0    0    -1  
$EndComp
Text GLabel 9900 4250 2    39   BiDi ~ 0
PB6
Text GLabel 9900 4550 2    39   BiDi ~ 0
PB9
Text GLabel 11450 5300 0    39   BiDi ~ 0
PB6
Text GLabel 11450 5400 0    39   BiDi ~ 0
PB9
$Comp
L stduinof429-rescue:R_Small-Device1-stduinof429-rescue-stduinof429-rescue R12
U 1 1 5CBFE6D9
P 11600 5150
F 0 "R12" H 11630 5170 50  0000 L CNN
F 1 "4.7K" H 11630 5110 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 11600 5150 50  0001 C CNN
F 3 "" H 11600 5150 50  0001 C CNN
	1    11600 5150
	1    0    0    -1  
$EndComp
Text GLabel 11600 4900 1    39   Input ~ 0
VCC_3V3
$Comp
L stduinof429-rescue:R_Small-Device1-stduinof429-rescue-stduinof429-rescue R13
U 1 1 5CBFE72E
P 11850 5150
F 0 "R13" H 11880 5170 50  0000 L CNN
F 1 "4.7K" H 11880 5110 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 11850 5150 50  0001 C CNN
F 3 "" H 11850 5150 50  0001 C CNN
	1    11850 5150
	1    0    0    -1  
$EndComp
Text GLabel 11050 3850 2    39   BiDi ~ 0
mRD5
Text GLabel 9900 4050 2    39   BiDi ~ 0
mRD4
Wire Wire Line
	5100 5300 5100 5050
Wire Wire Line
	5100 5500 5100 5750
Wire Wire Line
	4600 5050 4350 5050
Wire Wire Line
	4350 5050 4350 5400
Wire Wire Line
	4350 5750 4600 5750
Connection ~ 4350 5400
Connection ~ 5100 5050
Connection ~ 5100 5750
Wire Wire Line
	14900 1000 15050 1000
Wire Wire Line
	15050 600  15050 800 
Wire Wire Line
	14900 2750 15050 2750
Connection ~ 15050 2750
Wire Wire Line
	14900 2400 15050 2400
Connection ~ 15050 2400
Wire Wire Line
	14900 2050 15050 2050
Connection ~ 15050 2050
Wire Wire Line
	14900 1700 15050 1700
Connection ~ 15050 1700
Wire Wire Line
	14900 1350 15050 1350
Connection ~ 15050 1350
Wire Wire Line
	14400 1000 14500 1000
Wire Wire Line
	13800 3100 14500 3100
Wire Wire Line
	13900 2750 14500 2750
Connection ~ 14500 2750
Wire Wire Line
	14000 2400 14500 2400
Connection ~ 14500 2400
Wire Wire Line
	14100 2050 14500 2050
Connection ~ 14500 2050
Wire Wire Line
	14200 1700 14500 1700
Connection ~ 14500 1700
Wire Wire Line
	14300 1350 14500 1350
Connection ~ 14500 1350
Connection ~ 14500 3100
Wire Wire Line
	8600 1100 13800 1100
Wire Wire Line
	13800 1100 13800 3100
Wire Wire Line
	8500 1050 13900 1050
Wire Wire Line
	13900 1050 13900 2750
Wire Wire Line
	8400 1000 14000 1000
Wire Wire Line
	14000 1000 14000 2400
Wire Wire Line
	8300 950  14100 950 
Wire Wire Line
	14100 950  14100 2050
Wire Wire Line
	8200 900  14200 900 
Wire Wire Line
	14200 900  14200 1700
Wire Wire Line
	8100 850  14300 850 
Wire Wire Line
	14300 850  14300 1350
Wire Wire Line
	8000 800  14400 800 
Wire Wire Line
	14400 800  14400 1000
Connection ~ 14500 1000
Wire Wire Line
	12150 6650 12150 6500
Wire Wire Line
	12150 7050 12150 7200
Wire Wire Line
	12150 7200 11700 7200
Wire Wire Line
	4800 5750 5100 5750
Wire Wire Line
	4800 5050 5100 5050
Wire Wire Line
	5550 5050 6200 5050
Wire Wire Line
	6200 5050 6200 5350
Wire Wire Line
	6200 5350 7000 5350
Wire Wire Line
	7000 5450 6200 5450
Wire Wire Line
	6200 5450 6200 5750
Wire Wire Line
	6200 5750 5550 5750
Wire Wire Line
	10350 2500 10350 2350
Wire Wire Line
	10850 2600 10850 2450
Wire Wire Line
	10850 2950 10850 2800
Wire Wire Line
	9900 2850 10350 2850
Wire Wire Line
	10350 2700 10350 2850
Connection ~ 10350 2850
Wire Wire Line
	9900 2950 10850 2950
Connection ~ 10850 2950
Wire Wire Line
	9900 3850 10700 3850
Wire Wire Line
	10700 4450 10700 4350
Wire Wire Line
	10700 4250 10700 4150
Wire Wire Line
	10700 3750 10700 3850
Connection ~ 10700 3850
Wire Wire Line
	10700 3500 10700 3550
Wire Wire Line
	5900 2900 5900 2800
Wire Wire Line
	5900 2700 5900 2600
Wire Wire Line
	5900 2200 5900 2350
Wire Wire Line
	5900 1950 5900 2000
Wire Wire Line
	7000 2350 5900 2350
Connection ~ 5900 2350
Wire Wire Line
	7900 750  14500 750 
Wire Wire Line
	14500 800  14700 800 
Connection ~ 14500 800 
Wire Wire Line
	14900 800  15050 800 
Connection ~ 15050 1000
Wire Wire Line
	6700 2750 6850 2750
Wire Wire Line
	6850 2850 6850 2750
Connection ~ 6850 2750
Wire Wire Line
	4850 2550 4850 2600
Wire Wire Line
	4850 2600 5100 2600
Wire Wire Line
	5100 2600 5100 2550
Connection ~ 4850 2600
Wire Wire Line
	5100 2250 5100 2350
Wire Wire Line
	4850 2250 4850 2350
Wire Wire Line
	11600 4900 11600 5000
Wire Wire Line
	11850 5000 11850 5050
Wire Wire Line
	11450 5300 11600 5300
Wire Wire Line
	11600 5300 11600 5250
Wire Wire Line
	11450 5400 11850 5400
Wire Wire Line
	11850 5400 11850 5250
Wire Wire Line
	11850 5000 11600 5000
Connection ~ 11600 5000
Text GLabel 10350 2350 1    39   Input ~ 0
VCC_3V3
Text GLabel 10850 2450 1    39   Input ~ 0
VCC_3V3
Wire Wire Line
	7900 750  7900 1650
Wire Wire Line
	8000 800  8000 1650
Wire Wire Line
	8100 850  8100 1650
Wire Wire Line
	8200 900  8200 1650
Wire Wire Line
	8300 950  8300 1650
Wire Wire Line
	8400 1000 8400 1650
Wire Wire Line
	8500 1050 8500 1650
Wire Wire Line
	8600 1100 8600 1650
$Comp
L stduinof429-rescue:C_Small-Device1-stduinof429-rescue-stduinof429-rescue C19
U 1 1 5D33E304
P 14800 3600
F 0 "C19" H 14810 3670 50  0000 L CNN
F 1 "100n" H 14810 3520 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 14800 3600 50  0001 C CNN
F 3 "" H 14800 3600 50  0000 C CNN
	1    14800 3600
	0    1    1    0   
$EndComp
$Comp
L stduinof429-rescue:C_Small-Device1-stduinof429-rescue-stduinof429-rescue C20
U 1 1 5D33E30A
P 14800 3950
F 0 "C20" H 14810 4020 50  0000 L CNN
F 1 "100n" H 14810 3870 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 14800 3950 50  0001 C CNN
F 3 "" H 14800 3950 50  0000 C CNN
	1    14800 3950
	0    1    1    0   
$EndComp
$Comp
L stduinof429-rescue:C_Small-Device1-stduinof429-rescue-stduinof429-rescue C21
U 1 1 5D33E310
P 14800 4300
F 0 "C21" H 14810 4370 50  0000 L CNN
F 1 "100n" H 14810 4220 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 14800 4300 50  0001 C CNN
F 3 "" H 14800 4300 50  0000 C CNN
	1    14800 4300
	0    1    1    0   
$EndComp
$Comp
L stduinof429-rescue:C_Small-Device1-stduinof429-rescue-stduinof429-rescue C22
U 1 1 5D33E316
P 14800 4650
F 0 "C22" H 14810 4720 50  0000 L CNN
F 1 "100n" H 14810 4570 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 14800 4650 50  0001 C CNN
F 3 "" H 14800 4650 50  0000 C CNN
	1    14800 4650
	0    1    1    0   
$EndComp
$Comp
L stduinof429-rescue:C_Small-Device1-stduinof429-rescue-stduinof429-rescue C23
U 1 1 5D33E31C
P 14800 5000
F 0 "C23" H 14810 5070 50  0000 L CNN
F 1 "100n" H 14810 4920 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 14800 5000 50  0001 C CNN
F 3 "" H 14800 5000 50  0000 C CNN
	1    14800 5000
	0    1    1    0   
$EndComp
$Comp
L stduinof429-rescue:C_Small-Device1-stduinof429-rescue-stduinof429-rescue C24
U 1 1 5D33E322
P 14800 5350
F 0 "C24" H 14810 5420 50  0000 L CNN
F 1 "100n" H 14810 5270 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 14800 5350 50  0001 C CNN
F 3 "" H 14800 5350 50  0000 C CNN
	1    14800 5350
	0    1    1    0   
$EndComp
$Comp
L stduinof429-rescue:GND-power1-stduinof429-rescue-stduinof429-rescue #PWR024
U 1 1 5D33E328
P 15250 4300
F 0 "#PWR024" H 15250 4050 50  0001 C CNN
F 1 "GND" H 15250 4150 50  0000 C CNN
F 2 "" H 15250 4300 50  0001 C CNN
F 3 "" H 15250 4300 50  0001 C CNN
	1    15250 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	15050 5350 14900 5350
Wire Wire Line
	14900 5000 15050 5000
Connection ~ 15050 5000
Wire Wire Line
	14900 4650 15050 4650
Connection ~ 15050 4650
Wire Wire Line
	14900 4300 15050 4300
Wire Wire Line
	14900 3950 15050 3950
Connection ~ 15050 3950
Wire Wire Line
	14900 3600 15050 3600
Connection ~ 15050 3600
Wire Wire Line
	13200 5350 14500 5350
Wire Wire Line
	13300 5000 14500 5000
Connection ~ 14500 5000
Wire Wire Line
	13400 4650 14500 4650
Connection ~ 14500 4650
Wire Wire Line
	13500 4300 14500 4300
Connection ~ 14500 4300
Wire Wire Line
	13600 3950 14500 3950
Connection ~ 14500 3950
Wire Wire Line
	13700 3600 14500 3600
Connection ~ 14500 3600
Connection ~ 14500 5350
Wire Wire Line
	14500 750  14500 800 
Wire Wire Line
	8700 1150 8700 1650
Wire Wire Line
	8700 1150 13700 1150
Wire Wire Line
	13700 1150 13700 3600
Wire Wire Line
	8800 1200 8800 1650
Wire Wire Line
	8800 1200 13600 1200
Wire Wire Line
	13600 1200 13600 3950
Wire Wire Line
	8900 1250 8900 1650
Wire Wire Line
	8900 1250 13500 1250
Wire Wire Line
	13500 1250 13500 4300
Wire Wire Line
	9000 1300 9000 1650
Wire Wire Line
	9000 1300 13400 1300
Wire Wire Line
	13400 1300 13400 4650
Wire Wire Line
	9100 1350 9100 1650
Wire Wire Line
	9100 1350 13300 1350
Wire Wire Line
	13300 1350 13300 5000
Wire Wire Line
	8000 10550 8000 10850
Wire Wire Line
	8000 10850 8100 10850
Wire Wire Line
	9100 10850 9100 10750
Wire Wire Line
	9000 10550 9000 10850
Connection ~ 9000 10850
Wire Wire Line
	8900 10550 8900 10850
Connection ~ 8900 10850
Wire Wire Line
	8800 10550 8800 10850
Connection ~ 8800 10850
Wire Wire Line
	8700 10550 8700 10850
Connection ~ 8700 10850
Wire Wire Line
	8600 10550 8600 10850
Connection ~ 8600 10850
Wire Wire Line
	8500 10550 8500 10850
Connection ~ 8500 10850
Wire Wire Line
	8400 10550 8400 10850
Connection ~ 8400 10850
Wire Wire Line
	8300 10550 8300 10850
Connection ~ 8300 10850
Wire Wire Line
	8200 10550 8200 10850
Connection ~ 8200 10850
Wire Wire Line
	8100 10550 8100 10850
Connection ~ 8100 10850
Wire Wire Line
	8550 10850 8550 10950
Connection ~ 8550 10850
Wire Wire Line
	9200 1650 9200 1400
Wire Wire Line
	9200 1400 13200 1400
Wire Wire Line
	13200 1400 13200 5350
$Comp
L stduinof429-rescue:C_Small-Device1-stduinof429-rescue-stduinof429-rescue C25
U 1 1 5D34252E
P 14800 5700
F 0 "C25" H 14810 5770 50  0000 L CNN
F 1 "100n" H 14810 5620 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 14800 5700 50  0001 C CNN
F 3 "" H 14800 5700 50  0000 C CNN
	1    14800 5700
	0    1    1    0   
$EndComp
$Comp
L stduinof429-rescue:C_Small-Device1-stduinof429-rescue-stduinof429-rescue C26
U 1 1 5D342534
P 14800 6050
F 0 "C26" H 14810 6120 50  0000 L CNN
F 1 "100n" H 14810 5970 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 14800 6050 50  0001 C CNN
F 3 "" H 14800 6050 50  0000 C CNN
	1    14800 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	15050 6050 14900 6050
Wire Wire Line
	14900 5700 15050 5700
Wire Wire Line
	13000 6050 14500 6050
Wire Wire Line
	13100 5700 14500 5700
Connection ~ 14500 5700
Connection ~ 14500 6050
Wire Wire Line
	9300 1650 9300 1450
Wire Wire Line
	9300 1450 13100 1450
Wire Wire Line
	13100 1450 13100 5700
Wire Wire Line
	9400 1650 9400 1500
Wire Wire Line
	9400 1500 13000 1500
Wire Wire Line
	13000 1500 13000 6050
Connection ~ 15050 5350
$Comp
L stduinof429-rescue:C_Small-Device1-stduinof429-rescue-stduinof429-rescue C10
U 1 1 5D342CF5
P 14800 600
F 0 "C10" H 14810 670 50  0000 L CNN
F 1 "1u" H 14810 520 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 14800 600 50  0001 C CNN
F 3 "" H 14800 600 50  0000 C CNN
	1    14800 600 
	0    1    1    0   
$EndComp
Wire Wire Line
	14900 600  15050 600 
Connection ~ 15050 800 
Wire Wire Line
	7800 1650 7800 700 
Wire Wire Line
	7800 700  14500 700 
Wire Wire Line
	14500 700  14500 600 
NoConn ~ 7000 2150
NoConn ~ 7000 2050
NoConn ~ 9900 2750
NoConn ~ 9900 3050
NoConn ~ 9900 3150
NoConn ~ 9900 3450
NoConn ~ 9900 4850
NoConn ~ 9900 4950
NoConn ~ 9900 5050
NoConn ~ 9900 5150
NoConn ~ 9900 9250
NoConn ~ 9900 9350
NoConn ~ 9900 9850
NoConn ~ 9900 9950
NoConn ~ 9900 10050
NoConn ~ 9900 10150
NoConn ~ 9900 10250
NoConn ~ 7000 9850
NoConn ~ 7000 9750
NoConn ~ 7000 9650
NoConn ~ 7000 9550
NoConn ~ 7000 9450
NoConn ~ 7000 9350
NoConn ~ 7000 8550
NoConn ~ 7000 8450
NoConn ~ 7000 8350
NoConn ~ 7000 8250
NoConn ~ 7000 8150
NoConn ~ 7000 8050
NoConn ~ 7000 7850
NoConn ~ 7000 5550
NoConn ~ 7000 5650
NoConn ~ 7000 5750
NoConn ~ 7000 5850
NoConn ~ 7000 5950
NoConn ~ 7000 6050
NoConn ~ 7000 6150
NoConn ~ 7000 6250
NoConn ~ 7000 6350
NoConn ~ 7000 6450
NoConn ~ 7000 6550
NoConn ~ 7000 6650
NoConn ~ 7000 6750
NoConn ~ 7000 6850
NoConn ~ 7000 5150
Connection ~ 15050 4300
Connection ~ 15050 5700
NoConn ~ 7000 7950
Text GLabel 9900 2450 2    39   BiDi ~ 0
SPI1_SCK
Text GLabel 9900 2550 2    39   Input ~ 0
SPI1_MISO
Text GLabel 9900 2650 2    39   Output ~ 0
SPI1_MOSI
NoConn ~ 7000 8750
NoConn ~ 7000 8850
NoConn ~ 7000 8950
NoConn ~ 7000 9050
NoConn ~ 7000 9150
NoConn ~ 7000 9250
NoConn ~ 7000 10250
NoConn ~ 7000 10150
NoConn ~ 7000 10050
NoConn ~ 7000 9950
NoConn ~ 9900 9450
NoConn ~ 9900 9550
NoConn ~ 9900 9650
NoConn ~ 9900 9750
NoConn ~ 9900 8350
NoConn ~ 9900 8450
NoConn ~ 9900 8550
Text GLabel 9900 1950 2    39   Output ~ 0
SPI_SEL0
Text GLabel 9900 2050 2    39   Output ~ 0
SPI_SEL1
Text GLabel 9900 2150 2    39   Output ~ 0
SPI_SEL2
Text GLabel 9900 2250 2    39   Output ~ 0
SPI_SEL3
NoConn ~ 9900 2350
$Comp
L stduinof429-rescue:STM32F429IGTx-MCU_ST_STM32F41-stduinof429-rescue-stduinof429-rescue U2
U 1 1 5DA242D2
P 8500 6050
F 0 "U2" H 7200 10300 50  0000 L CNN
F 1 "STM32F429IGTx" H 9500 10300 50  0000 L CNN
F 2 "Package_QFP:LQFP-176_24x24mm_P0.5mm" H 7200 1750 50  0001 R CNN
F 3 "" H 8500 6050 50  0001 C CNN
	1    8500 6050
	1    0    0    -1  
$EndComp
Text GLabel 9900 7050 2    39   BiDi ~ 0
D0
Text GLabel 9900 7150 2    39   BiDi ~ 0
D1
Text GLabel 9900 7250 2    39   BiDi ~ 0
D2
Text GLabel 9900 7350 2    39   BiDi ~ 0
D3
Text GLabel 9900 7450 2    39   BiDi ~ 0
D4
Text GLabel 9900 7550 2    39   BiDi ~ 0
D5
Text GLabel 9900 7650 2    39   BiDi ~ 0
D6
Text GLabel 9900 7750 2    39   BiDi ~ 0
D7
Text GLabel 9900 4750 2    39   BiDi ~ 0
~mHALT
Text GLabel 14075 7875 0    39   BiDi ~ 0
PB6
Text GLabel 14075 7975 0    39   BiDi ~ 0
PB9
Text GLabel 14225 7975 2    39   BiDi ~ 0
I2C_SDA
Text GLabel 14225 7875 2    39   BiDi ~ 0
I2C_SCL
Wire Wire Line
	14075 7875 14225 7875
Wire Wire Line
	14225 7975 14075 7975
Text GLabel 3800 8050 0    39   BiDi ~ 0
mD0
Text GLabel 3800 8150 0    39   BiDi ~ 0
mD1
Text GLabel 3800 8250 0    39   BiDi ~ 0
mD2
Text GLabel 3800 8350 0    39   BiDi ~ 0
mD3
Text GLabel 3800 8450 0    39   BiDi ~ 0
mD4
Text GLabel 3800 8550 0    39   BiDi ~ 0
mD5
Text GLabel 3800 8650 0    39   BiDi ~ 0
mD6
Text GLabel 3800 8750 0    39   BiDi ~ 0
mD7
Text GLabel 4300 7950 2    39   BiDi ~ 0
mA0
Text GLabel 4300 8050 2    39   BiDi ~ 0
mA1
Text GLabel 4300 8150 2    39   BiDi ~ 0
mA2
Text GLabel 4300 8250 2    39   BiDi ~ 0
mA3
Text GLabel 4300 8350 2    39   BiDi ~ 0
mA4
Text GLabel 4300 8450 2    39   BiDi ~ 0
mA5
Text GLabel 4300 8550 2    39   BiDi ~ 0
mA6
Text GLabel 4300 8650 2    39   BiDi ~ 0
mA7
Text GLabel 4300 8750 2    39   BiDi ~ 0
mA8
Text GLabel 4300 8850 2    39   BiDi ~ 0
mA9
Text GLabel 4300 8950 2    39   BiDi ~ 0
mA10
Text GLabel 4300 9050 2    39   BiDi ~ 0
mA11
Text GLabel 4300 9150 2    39   BiDi ~ 0
mA12
Text GLabel 4300 9250 2    39   BiDi ~ 0
mA13
Text GLabel 4300 9350 2    39   BiDi ~ 0
mA14
Text GLabel 4300 9450 2    39   BiDi ~ 0
mA15
Text GLabel 3800 8950 0    39   BiDi ~ 0
mPHI2
Text GLabel 3800 9050 0    39   BiDi ~ 0
~mS5
Text GLabel 3800 9150 0    39   BiDi ~ 0
~mS4
Text GLabel 3800 9450 0    39   BiDi ~ 0
mR/~W
Text GLabel 3800 9250 0    39   BiDi ~ 0
~mD1XX
NoConn ~ 7000 5050
NoConn ~ 7000 4950
$Comp
L stduinof429-rescue:GND-power1-stduinof429-rescue-stduinof429-rescue #PWR025
U 1 1 5DA29D1C
P 3225 8850
F 0 "#PWR025" H 3225 8600 50  0001 C CNN
F 1 "GND" H 3225 8700 50  0000 C CNN
F 2 "" H 3225 8850 50  0001 C CNN
F 3 "" H 3225 8850 50  0001 C CNN
	1    3225 8850
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 8850 3225 8850
Text GLabel 3800 9350 0    39   BiDi ~ 0
~mCCTL
NoConn ~ 7000 4650
NoConn ~ 7000 4750
NoConn ~ 7000 4850
NoConn ~ 9900 4350
$Comp
L stduinof429-rescue:CONN_01X03-stduinof429-rescue-stduinof429-rescue DEBUG1
U 1 1 5DA2AA4A
P 2700 3825
F 0 "DEBUG1" V 2875 3825 50  0000 C CNN
F 1 "CONN_01X03" V 2800 3825 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2700 3825 50  0001 C CNN
F 3 "" H 2700 3825 50  0000 C CNN
	1    2700 3825
	-1   0    0    1   
$EndComp
$Comp
L stduinof429-rescue:CONN_01X04-stduinof429-rescue-stduinof429-rescue SWDIO/CLK1
U 1 1 5DA2AAD5
P 1825 3850
F 0 "SWDIO/CLK1" V 2025 3825 50  0000 C CNN
F 1 "CONN_01X04" V 1925 3850 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 1825 3850 50  0001 C CNN
F 3 "" H 1825 3850 50  0000 C CNN
	1    1825 3850
	1    0    0    -1  
$EndComp
$Comp
L stduinof429-rescue:GND-power1-stduinof429-rescue-stduinof429-rescue #PWR026
U 1 1 5DA2AD8A
P 1550 3600
F 0 "#PWR026" H 1550 3350 50  0001 C CNN
F 1 "GND" H 1550 3450 50  0000 C CNN
F 2 "" H 1550 3600 50  0001 C CNN
F 3 "" H 1550 3600 50  0001 C CNN
	1    1550 3600
	-1   0    0    1   
$EndComp
Text GLabel 1425 3800 0    39   BiDi ~ 0
SWDIO
Text GLabel 1425 3900 0    39   BiDi ~ 0
SWDCLK
Text GLabel 1425 4000 0    39   BiDi ~ 0
VCC_3V3
Wire Wire Line
	1550 3600 1550 3700
Wire Wire Line
	1550 3700 1625 3700
Wire Wire Line
	1425 3800 1625 3800
Wire Wire Line
	1625 3900 1425 3900
Wire Wire Line
	1425 4000 1625 4000
Text GLabel 3075 3725 2    39   BiDi ~ 0
UART_TX
Text GLabel 3075 3825 2    39   BiDi ~ 0
UART_RX
$Comp
L stduinof429-rescue:GND-power1-stduinof429-rescue-stduinof429-rescue #PWR027
U 1 1 5DA2C0EE
P 2975 4000
F 0 "#PWR027" H 2975 3750 50  0001 C CNN
F 1 "GND" H 2975 3850 50  0000 C CNN
F 2 "" H 2975 4000 50  0001 C CNN
F 3 "" H 2975 4000 50  0001 C CNN
	1    2975 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3725 3075 3725
Wire Wire Line
	2900 3825 3075 3825
Wire Wire Line
	2900 3925 2975 3925
Wire Wire Line
	2975 3925 2975 4000
Wire Notes Line
	900  4425 4100 4425
Wire Notes Line
	4100 4425 4100 2750
Wire Notes Line
	4100 2750 900  2750
Text Notes 975  2900 0    59   ~ 12
DEBUG SECTION
Wire Notes Line
	1050 10650 5825 10650
Wire Notes Line
	5825 10650 5825 7400
Wire Notes Line
	5825 7400 1050 7400
Text Notes 1200 7625 0    59   ~ 12
EXPANSION BUS CONNECTOR
Wire Notes Line
	13150 8425 15100 8425
Wire Notes Line
	15100 8425 15100 7325
Wire Notes Line
	15100 7325 13150 7325
Text Notes 13225 7475 0    59   ~ 12
I2C ARDUINO SHIELD
$Comp
L stduinof429-rescue:+5V-power1-stduinof429-rescue-stduinof429-rescue #PWR028
U 1 1 5DA2CFC9
P 3125 7950
F 0 "#PWR028" H 3125 7800 50  0001 C CNN
F 1 "+5V" H 3125 8090 50  0000 C CNN
F 2 "" H 3125 7950 50  0001 C CNN
F 3 "" H 3125 7950 50  0001 C CNN
	1    3125 7950
	-1   0    0    1   
$EndComp
Wire Notes Line
	4525 7950 4750 7950
Wire Notes Line
	4750 7950 4750 9450
Wire Notes Line
	4750 9450 4550 9450
Text Notes 4875 9050 1    60   ~ 12
PORTC 16 bit
Wire Notes Line
	3575 8050 3425 8050
Wire Notes Line
	3425 8050 3425 8750
Wire Notes Line
	3425 8750 3575 8750
Text Notes 3400 8675 1    60   ~ 12
PORTG 8 bit
Text Notes 10450 7900 1    60   ~ 12
PORTD 8 pins (SHIELD)
Wire Notes Line
	3525 8950 3425 8950
Wire Notes Line
	3425 8950 3425 9450
Wire Notes Line
	3425 9450 3525 9450
Text Notes 3375 9475 1    60   ~ 12
PORTI 6 bit
Text GLabel 3800 9850 0    39   BiDi ~ 0
~mRST
Text GLabel 4300 9850 2    39   BiDi ~ 0
mRD5
Text GLabel 4300 9750 2    39   BiDi ~ 0
~mREF
Text GLabel 4300 9650 2    39   BiDi ~ 0
mRD4
Text GLabel 4300 9550 2    39   BiDi ~ 0
~mEXSEL
Text GLabel 3800 9550 0    39   BiDi ~ 0
~mMPD
Text GLabel 3800 9650 0    39   BiDi ~ 0
~mIRQ
Text GLabel 3800 9750 0    39   BiDi ~ 0
~mHALT
Wire Notes Line
	3300 10050 4825 10050
Wire Notes Line
	4825 10050 4825 9550
Text Notes 3375 9575 0    39   ~ 8
PB8
Text Notes 3375 9675 0    39   ~ 8
PB10
Text Notes 3375 9775 0    39   ~ 8
PB11
Wire Wire Line
	3800 7950 3125 7950
Wire Notes Line
	3300 9525 3300 10050
$Comp
L stduinof429-rescue:Conn_02x03_Odd_Even-Connector_Generic1-stduinof429-rescue-stduinof429-rescue J1
U 1 1 5DA3C61C
P 2025 8925
AR Path="/5DA3C61C" Ref="J1"  Part="1" 
AR Path="/5DA2930A/5DA3C61C" Ref="J1"  Part="1" 
F 0 "J1" H 2075 9125 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 2075 8725 50  0000 C CNN
F 2 "RetroBitLab:IDC-Header_2x03_P2.54mm_Vertical" H 2025 8925 50  0001 C CNN
F 3 "" H 2025 8925 50  0001 C CNN
	1    2025 8925
	1    0    0    -1  
$EndComp
Text Notes 3400 9875 0    39   ~ 8
PB1
Text Notes 4625 9875 0    39   ~ 8
PB2
Text Notes 4625 9775 0    39   ~ 8
PB3
Text Notes 4625 9675 0    39   ~ 8
PB4
Text Notes 4625 9575 0    39   ~ 8
PB5
Wire Notes Line
	4825 9550 4775 9550
Text Notes 4950 9950 1    60   ~ 12
PORTB
Text Notes 3225 9950 1    60   ~ 12
PORTB
Wire Notes Line
	3300 9525 3350 9525
$Comp
L stduinof429-rescue:GND-power1-stduinof429-rescue-stduinof429-rescue #PWR029
U 1 1 5DA4532F
P 1300 9175
F 0 "#PWR029" H 1300 8925 50  0001 C CNN
F 1 "GND" H 1300 9025 50  0000 C CNN
F 2 "" H 1300 9175 50  0001 C CNN
F 3 "" H 1300 9175 50  0001 C CNN
	1    1300 9175
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 8925 1300 9175
$Comp
L stduinof429-rescue:GND-power1-stduinof429-rescue-stduinof429-rescue #PWR030
U 1 1 5DA45612
P 2800 9175
F 0 "#PWR030" H 2800 8925 50  0001 C CNN
F 1 "GND" H 2800 9025 50  0000 C CNN
F 2 "" H 2800 9175 50  0001 C CNN
F 3 "" H 2800 9175 50  0001 C CNN
	1    2800 9175
	1    0    0    -1  
$EndComp
Wire Wire Line
	2325 8925 2800 8925
Text GLabel 2325 9025 2    39   Input ~ 0
VCC5V
Wire Wire Line
	2800 8925 2800 9175
Wire Wire Line
	1300 8925 1825 8925
Text GLabel 1825 8825 0    39   Output ~ 0
SPI_SEL1
Text GLabel 2325 8825 2    39   Output ~ 0
SPI_SEL2
Text GLabel 1825 9025 0    39   Output ~ 0
SPI_SEL3
Wire Notes Line
	1050 7400 1050 10650
Text GLabel 9900 8750 2    39   BiDi ~ 0
D8
Text GLabel 9900 8850 2    39   BiDi ~ 0
D9
Text GLabel 9900 8950 2    39   BiDi ~ 0
D10
Text GLabel 9900 9050 2    39   BiDi ~ 0
D11
Text GLabel 9900 9150 2    39   BiDi ~ 0
D12
NoConn ~ 9900 7850
NoConn ~ 9900 7950
NoConn ~ 9900 8050
NoConn ~ 9900 8150
NoConn ~ 9900 8250
Wire Notes Line
	10075 7050 10325 7050
Wire Notes Line
	10325 7050 10325 7750
Wire Notes Line
	10325 7750 10075 7750
Wire Notes Line
	10100 8750 10325 8750
Wire Notes Line
	10325 8750 10325 9150
Wire Notes Line
	10325 9150 10100 9150
Text Notes 10475 9475 1    60   ~ 12
PORTE 6 pins (SHIELD)
Text Notes 10625 8000 1    59   ~ 12
OPTIMIZED FOR BUS ACCESS
Wire Wire Line
	4350 5400 4350 5750
Wire Wire Line
	5100 5050 5350 5050
Wire Wire Line
	5100 5750 5350 5750
Wire Wire Line
	15050 2400 15050 2750
Wire Wire Line
	15050 2050 15050 2400
Wire Wire Line
	15050 1700 15050 2050
Wire Wire Line
	15050 1350 15050 1700
Wire Wire Line
	14500 2750 14700 2750
Wire Wire Line
	14500 2750 14500 3100
Wire Wire Line
	14500 2400 14700 2400
Wire Wire Line
	14500 2400 14500 2750
Wire Wire Line
	14500 2050 14700 2050
Wire Wire Line
	14500 2050 14500 2400
Wire Wire Line
	14500 1700 14700 1700
Wire Wire Line
	14500 1700 14500 2050
Wire Wire Line
	14500 1350 14700 1350
Wire Wire Line
	14500 1350 14500 1700
Wire Wire Line
	14500 3100 14700 3100
Wire Wire Line
	14500 3100 14500 3600
Wire Wire Line
	14500 1000 14700 1000
Wire Wire Line
	14500 1000 14500 1350
Wire Wire Line
	10350 2850 10450 2850
Wire Wire Line
	10850 2950 10950 2950
Wire Wire Line
	10700 3850 11050 3850
Wire Wire Line
	10700 3850 10700 3950
Wire Wire Line
	5900 2350 5900 2400
Wire Wire Line
	14500 800  14500 1000
Wire Wire Line
	15050 1000 15050 1350
Wire Wire Line
	6850 2750 7000 2750
Wire Wire Line
	4850 2600 4850 2650
Wire Wire Line
	11600 5000 11600 5050
Wire Wire Line
	15050 5000 15050 5350
Wire Wire Line
	15050 4650 15050 5000
Wire Wire Line
	15050 3950 15050 4300
Wire Wire Line
	15050 3600 15050 3950
Wire Wire Line
	14500 5000 14700 5000
Wire Wire Line
	14500 5000 14500 5350
Wire Wire Line
	14500 4650 14700 4650
Wire Wire Line
	14500 4650 14500 5000
Wire Wire Line
	14500 4300 14700 4300
Wire Wire Line
	14500 4300 14500 4650
Wire Wire Line
	14500 3950 14700 3950
Wire Wire Line
	14500 3950 14500 4300
Wire Wire Line
	14500 3600 14700 3600
Wire Wire Line
	14500 3600 14500 3950
Wire Wire Line
	14500 5350 14700 5350
Wire Wire Line
	14500 5350 14500 5700
Wire Wire Line
	9000 10850 9100 10850
Wire Wire Line
	8900 10850 9000 10850
Wire Wire Line
	8800 10850 8900 10850
Wire Wire Line
	8700 10850 8800 10850
Wire Wire Line
	8600 10850 8700 10850
Wire Wire Line
	8500 10850 8550 10850
Wire Wire Line
	8400 10850 8500 10850
Wire Wire Line
	8300 10850 8400 10850
Wire Wire Line
	8200 10850 8300 10850
Wire Wire Line
	8100 10850 8200 10850
Wire Wire Line
	8550 10850 8600 10850
Wire Wire Line
	14500 5700 14700 5700
Wire Wire Line
	14500 5700 14500 6050
Wire Wire Line
	14500 6050 14700 6050
Wire Wire Line
	14500 6050 14500 6400
Wire Wire Line
	15050 5350 15050 5700
Wire Wire Line
	15050 800  15050 1000
Wire Wire Line
	15050 4300 15250 4300
Wire Wire Line
	15050 4300 15050 4650
Wire Wire Line
	15050 5700 15050 6050
Wire Wire Line
	15050 2750 15050 3100
Wire Notes Line
	900  2750 900  4425
Wire Notes Line
	13150 7325 13150 8425
Wire Wire Line
	14900 3100 15050 3100
Connection ~ 15050 3100
Wire Wire Line
	15050 3100 15050 3600
Wire Wire Line
	14500 600  14700 600 
$Comp
L Connector_Generic:Conn_02x20_Odd_Even P10
U 1 1 605B226E
P 4000 8850
F 0 "P10" H 4050 10000 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 4050 9900 50  0000 C CNN
F 2 "RetroBitLab:IDC_02X20_2.54mm_Horizontal_PCB_2SIDES" H 4000 8850 50  0001 C CNN
F 3 "~" H 4000 8850 50  0001 C CNN
	1    4000 8850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
