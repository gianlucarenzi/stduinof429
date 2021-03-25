EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "STM32Duino429"
Date "2021-03-22"
Rev "1.1"
Comp "RetroBit Lab"
Comment1 "Arduino Shield Layout"
Comment2 ""
Comment3 ""
Comment4 "ARDUINO CONNECTORS"
$EndDescr
$Comp
L stduinof429-rescue:CONN_8-stduinof429-rescue-stduinof429-rescue P1
U 1 1 5517C2C1
P 9725 1875
F 0 "P1" V 9675 1875 60  0000 C CNN
F 1 "Power" V 9775 1875 60  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 9725 1875 60  0001 C CNN
F 3 "" H 9725 1875 60  0000 C CNN
	1    9725 1875
	1    0    0    -1  
$EndComp
$Comp
L stduinof429-rescue:CONN_6-stduinof429-rescue-stduinof429-rescue P2
U 1 1 5517C323
P 9725 2675
F 0 "P2" V 9675 2675 60  0000 C CNN
F 1 "Analog" V 9775 2675 60  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 9725 2675 60  0001 C CNN
F 3 "" H 9725 2675 60  0000 C CNN
	1    9725 2675
	1    0    0    -1  
$EndComp
$Comp
L stduinof429-rescue:CONN_8-stduinof429-rescue-stduinof429-rescue P4
U 1 1 5517C366
P 10050 2575
F 0 "P4" V 10000 2575 60  0000 C CNN
F 1 "Digital" V 10100 2575 60  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 10050 2575 60  0001 C CNN
F 3 "" H 10050 2575 60  0000 C CNN
	1    10050 2575
	-1   0    0    -1  
$EndComp
$Comp
L stduinof429-rescue:CONN_10-stduinof429-rescue-stduinof429-rescue P3
U 1 1 5517C46C
P 10050 1575
F 0 "P3" V 10000 1575 60  0000 C CNN
F 1 "Digital" V 10100 1575 60  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x10_P2.54mm_Vertical" H 10050 1575 60  0001 C CNN
F 3 "" H 10050 1575 60  0000 C CNN
	1    10050 1575
	-1   0    0    -1  
$EndComp
Text Label 8600 1725 0    60   ~ 0
Reset
Text Label 8925 1350 1    60   ~ 0
Vin
Text Label 9300 1350 1    60   ~ 0
IOREF
Text Label 8600 2425 0    60   ~ 0
A0
Text Label 8600 2525 0    60   ~ 0
A1
Text Label 8600 2625 0    60   ~ 0
A2
Text Label 8600 2825 0    60   ~ 0
A4(SDA)
Text Label 8600 2925 0    60   ~ 0
A5(SCL)
Text Label 11125 2925 2    60   ~ 0
0(Rx)
Text Label 11125 2725 2    60   ~ 0
2
Text Label 11125 2825 2    60   ~ 0
1(Tx)
Text Label 11125 2625 2    60   ~ 0
3(**)
Text Label 11125 2525 2    60   ~ 0
4
Text Label 11125 2425 2    60   ~ 0
5(**)
Text Label 11125 2325 2    60   ~ 0
6(**)
Text Label 11125 2225 2    60   ~ 0
7
Text Label 11125 2025 2    60   ~ 0
8
Text Label 11125 1925 2    60   ~ 0
9(**)
Text Label 11125 1825 2    60   ~ 0
10(**/SS)
Text Label 11125 1725 2    60   ~ 0
11(**/MOSI)
Text Label 11125 1625 2    60   ~ 0
12(MISO)
Text Label 11125 1525 2    60   ~ 0
13(SCK)
Text Label 11125 1325 2    60   ~ 0
AREF
$Comp
L stduinof429-rescue:GND-power1-stduinof429-rescue-stduinof429-rescue #PWR01
U 1 1 5517CC27
P 10475 3100
F 0 "#PWR01" H 10475 3100 30  0001 C CNN
F 1 "GND" H 10475 3030 30  0001 C CNN
F 2 "" H 10475 3100 60  0000 C CNN
F 3 "" H 10475 3100 60  0000 C CNN
	1    10475 3100
	1    0    0    -1  
$EndComp
$Comp
L stduinof429-rescue:GND-power1-stduinof429-rescue-stduinof429-rescue #PWR02
U 1 1 5517CC7B
P 9300 3100
F 0 "#PWR02" H 9300 3100 30  0001 C CNN
F 1 "GND" H 9300 3030 30  0001 C CNN
F 2 "" H 9300 3100 60  0000 C CNN
F 3 "" H 9300 3100 60  0000 C CNN
	1    9300 3100
	1    0    0    -1  
$EndComp
$Comp
L stduinof429-rescue:+3.3V-power1-stduinof429-rescue-stduinof429-rescue #PWR03
U 1 1 5517CCDA
P 9175 1350
F 0 "#PWR03" H 9175 1310 30  0001 C CNN
F 1 "+3.3V" H 9175 1460 30  0000 C CNN
F 2 "" H 9175 1350 60  0000 C CNN
F 3 "" H 9175 1350 60  0000 C CNN
	1    9175 1350
	1    0    0    -1  
$EndComp
NoConn ~ 9375 1525
Text Label 11125 1225 2    60   ~ 0
A4(SDA)
Text Label 11125 1125 2    60   ~ 0
A5(SCL)
$Comp
L stduinof429-rescue:CONN_1-stduinof429-rescue-stduinof429-rescue P5
U 1 1 551BBC06
P 10875 650
F 0 "P5" H 10955 650 40  0000 L CNN
F 1 "CONN_1" H 10875 705 30  0001 C CNN
F 2 "RetroBitLab:MountingHole" H 10875 650 60  0001 C CNN
F 3 "" H 10875 650 60  0000 C CNN
	1    10875 650 
	0    -1   -1   0   
$EndComp
$Comp
L stduinof429-rescue:CONN_1-stduinof429-rescue-stduinof429-rescue P6
U 1 1 551BBD10
P 10950 650
F 0 "P6" H 11030 650 40  0000 L CNN
F 1 "CONN_1" H 10950 705 30  0001 C CNN
F 2 "RetroBitLab:MountingHole" H 10950 650 60  0001 C CNN
F 3 "" H 10950 650 60  0000 C CNN
	1    10950 650 
	0    -1   -1   0   
$EndComp
$Comp
L stduinof429-rescue:CONN_1-stduinof429-rescue-stduinof429-rescue P7
U 1 1 551BBD30
P 11025 650
F 0 "P7" H 11105 650 40  0000 L CNN
F 1 "CONN_1" H 11025 705 30  0001 C CNN
F 2 "RetroBitLab:MountingHole" H 11025 650 60  0001 C CNN
F 3 "" H 11025 650 60  0000 C CNN
	1    11025 650 
	0    -1   -1   0   
$EndComp
$Comp
L stduinof429-rescue:CONN_1-stduinof429-rescue-stduinof429-rescue P8
U 1 1 551BBD52
P 11100 650
F 0 "P8" H 11180 650 40  0000 L CNN
F 1 "CONN_1" H 11100 705 30  0001 C CNN
F 2 "RetroBitLab:MountingHole" H 11100 650 60  0001 C CNN
F 3 "" H 11100 650 60  0000 C CNN
	1    11100 650 
	0    -1   -1   0   
$EndComp
Text Notes 10875 925  0    60   ~ 0
Holes
NoConn ~ 10875 800 
NoConn ~ 10950 800 
NoConn ~ 11025 800 
NoConn ~ 11100 800 
Text Notes 8550 750  0    60   ~ 0
Shield for Arduino that uses\nthe same pin disposition\nlike "Uno" board Rev 3.
$Comp
L stduinof429-rescue:AZ1117-3.3-Regulator_Linear1-stduinof429-rescue-stduinof429-rescue U1
U 1 1 5DA23390
P 2250 2025
F 0 "U1" H 2100 2150 50  0000 C CNN
F 1 "AZ1117-3.3" H 2250 2150 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 2250 2275 50  0001 C CIN
F 3 "" H 2250 2025 50  0001 C CNN
	1    2250 2025
	1    0    0    -1  
$EndComp
$Comp
L stduinof429-rescue:C_Small-Device1-stduinof429-rescue-stduinof429-rescue C3
U 1 1 5DA23506
P 3000 2300
F 0 "C3" H 3010 2370 50  0000 L CNN
F 1 "100n" H 3010 2220 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 3000 2300 50  0001 C CNN
F 3 "" H 3000 2300 50  0000 C CNN
	1    3000 2300
	1    0    0    -1  
$EndComp
$Comp
L stduinof429-rescue:CP1_Small-Device1-stduinof429-rescue-stduinof429-rescue C2
U 1 1 5DA23553
P 2700 2300
F 0 "C2" H 2710 2370 50  0000 L CNN
F 1 "22u" H 2710 2220 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A_Pad1.58x1.35mm_HandSolder" H 2700 2300 50  0001 C CNN
F 3 "" H 2700 2300 50  0000 C CNN
	1    2700 2300
	1    0    0    -1  
$EndComp
$Comp
L stduinof429-rescue:CP1_Small-Device1-stduinof429-rescue-stduinof429-rescue C1
U 1 1 5DA2358A
P 1775 2300
F 0 "C1" H 1785 2370 50  0000 L CNN
F 1 "10u" H 1785 2220 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A_Pad1.58x1.35mm_HandSolder" H 1775 2300 50  0001 C CNN
F 3 "" H 1775 2300 50  0000 C CNN
	1    1775 2300
	1    0    0    -1  
$EndComp
$Comp
L stduinof429-rescue:GND-power1-stduinof429-rescue-stduinof429-rescue #PWR04
U 1 1 5DA238C8
P 3000 2950
F 0 "#PWR04" H 3000 2700 50  0001 C CNN
F 1 "GND" H 3000 2800 50  0000 C CNN
F 2 "" H 3000 2950 50  0001 C CNN
F 3 "" H 3000 2950 50  0001 C CNN
	1    3000 2950
	1    0    0    -1  
$EndComp
$Comp
L stduinof429-rescue:TEST_1P-stduinof429-rescue-stduinof429-rescue W1
U 1 1 5DA2393F
P 2875 2800
F 0 "W1" H 2875 3070 50  0000 C CNN
F 1 "TP1" H 2875 3000 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 3075 2800 50  0001 C CNN
F 3 "" H 3075 2800 50  0000 C CNN
	1    2875 2800
	0    -1   -1   0   
$EndComp
$Comp
L stduinof429-rescue:LED-stduinof429-rescue-stduinof429-rescue D1
U 1 1 5DA239FC
P 3300 2725
F 0 "D1" H 3250 2850 50  0000 L CNN
F 1 "LED" H 3250 2625 50  0000 L CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3300 2725 50  0001 C CNN
F 3 "" V 3300 2725 50  0000 C CNN
	1    3300 2725
	0    -1   -1   0   
$EndComp
$Comp
L stduinof429-rescue:GND-power1-stduinof429-rescue-stduinof429-rescue #PWR05
U 1 1 5DA23A43
P 3300 2950
F 0 "#PWR05" H 3300 2700 50  0001 C CNN
F 1 "GND" H 3300 2800 50  0000 C CNN
F 2 "" H 3300 2950 50  0001 C CNN
F 3 "" H 3300 2950 50  0001 C CNN
	1    3300 2950
	1    0    0    -1  
$EndComp
$Comp
L stduinof429-rescue:R_Small-Device1-stduinof429-rescue-stduinof429-rescue R1
U 1 1 5DA23AF5
P 3300 2300
F 0 "R1" H 3350 2350 50  0000 L CNN
F 1 "1.5K" H 3330 2260 50  0000 L CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 3300 2300 50  0001 C CNN
F 3 "" H 3300 2300 50  0000 C CNN
	1    3300 2300
	1    0    0    -1  
$EndComp
Text GLabel 3625 2025 2    60   Output ~ 0
VCC_3V3
Text GLabel 3625 1525 2    60   Input ~ 0
VCC_3V3
$Comp
L stduinof429-rescue:PWR_FLAG-power1-stduinof429-rescue-stduinof429-rescue #FLG06
U 1 1 5DA24062
P 3475 1500
F 0 "#FLG06" H 3475 1575 50  0001 C CNN
F 1 "PWR_FLAG" H 3475 1650 50  0000 C CNN
F 2 "" H 3475 1500 50  0001 C CNN
F 3 "" H 3475 1500 50  0001 C CNN
	1    3475 1500
	1    0    0    -1  
$EndComp
Text GLabel 1775 1800 1    60   Output ~ 0
VCC5V
$Comp
L stduinof429-rescue:GND-power1-stduinof429-rescue-stduinof429-rescue #PWR07
U 1 1 5DA242C3
P 3150 1550
F 0 "#PWR07" H 3150 1300 50  0001 C CNN
F 1 "GND" H 3150 1400 50  0000 C CNN
F 2 "" H 3150 1550 50  0001 C CNN
F 3 "" H 3150 1550 50  0001 C CNN
	1    3150 1550
	1    0    0    -1  
$EndComp
$Comp
L stduinof429-rescue:PWR_FLAG-power1-stduinof429-rescue-stduinof429-rescue #FLG08
U 1 1 5DA242F5
P 2975 1500
F 0 "#FLG08" H 2975 1575 50  0001 C CNN
F 1 "PWR_FLAG" H 2975 1650 50  0000 C CNN
F 2 "" H 2975 1500 50  0001 C CNN
F 3 "" H 2975 1500 50  0001 C CNN
	1    2975 1500
	1    0    0    -1  
$EndComp
Text Notes 1100 3250 0    60   ~ 12
POWER SECTION
Text Label 4975 4850 0    60   ~ 0
IOREF
Text GLabel 4675 5150 0    60   Input ~ 0
VCC_3V3
Text Label 3350 4650 0    60   ~ 0
A0
Text Label 3350 4850 0    60   ~ 0
A1
Text Label 3350 5050 0    60   ~ 0
A2
Text Label 3350 5250 0    60   ~ 0
A3
Text Label 6425 4800 0    60   ~ 0
A4(SDA)
Text Label 6900 4800 0    60   ~ 0
A5(SCL)
Text GLabel 6425 4975 3    60   BiDi ~ 0
I2C_SDA
Text GLabel 6900 4975 3    60   BiDi ~ 0
I2C_SCL
Text Label 7525 4775 0    60   ~ 0
1(Tx)
Text Label 7875 4775 0    60   ~ 0
0(Rx)
Text GLabel 7525 4975 3    60   BiDi ~ 0
UART_TX
Text GLabel 7875 4975 3    60   BiDi ~ 0
UART_RX
Text Label 6000 5325 0    60   ~ 0
2
Text Label 6000 5200 0    60   ~ 0
3(**)
Text Label 6000 5075 0    60   ~ 0
4
Text Label 6000 4950 0    60   ~ 0
5(**)
Text Label 6000 4825 0    60   ~ 0
6(**)
Text Label 6000 4700 0    60   ~ 0
7
Text Label 6000 4575 0    60   ~ 0
8
Text Label 6000 4450 0    60   ~ 0
9(**)
Wire Wire Line
	8600 2425 9375 2425
Wire Wire Line
	8600 2525 9375 2525
Wire Wire Line
	8600 2625 9375 2625
Wire Wire Line
	8600 2825 9375 2825
Wire Wire Line
	8600 2925 9375 2925
Wire Wire Line
	10400 2025 11125 2025
Wire Wire Line
	10400 1925 11125 1925
Wire Wire Line
	10400 1825 11125 1825
Wire Wire Line
	10400 1725 11125 1725
Wire Wire Line
	10400 1625 11125 1625
Wire Wire Line
	10400 1525 11125 1525
Wire Wire Line
	10400 1325 11125 1325
Wire Wire Line
	10400 1225 11125 1225
Wire Wire Line
	10400 1125 11125 1125
Wire Wire Line
	9175 1825 9375 1825
Wire Wire Line
	9050 1925 9375 1925
Wire Wire Line
	9300 2025 9300 2125
Wire Wire Line
	8600 1725 9375 1725
Wire Wire Line
	10475 1425 10475 3100
Wire Wire Line
	10475 1425 10400 1425
Wire Wire Line
	10400 2425 11125 2425
Wire Wire Line
	10400 2325 11125 2325
Wire Wire Line
	10400 2225 11125 2225
Wire Wire Line
	10400 2725 11125 2725
Wire Wire Line
	10400 2625 11125 2625
Wire Wire Line
	10400 2525 11125 2525
Wire Wire Line
	10400 2925 11125 2925
Wire Wire Line
	10400 2825 11125 2825
Wire Wire Line
	9175 1825 9175 1350
Wire Wire Line
	9300 1350 9300 1625
Wire Wire Line
	9300 1625 9375 1625
Wire Wire Line
	9050 1350 9050 1925
Wire Wire Line
	8925 1350 8925 2225
Wire Wire Line
	8925 2225 9375 2225
Wire Wire Line
	9300 2025 9375 2025
Wire Wire Line
	9375 2125 9300 2125
Connection ~ 9300 2125
Wire Notes Line
	11225 975  10775 975 
Wire Notes Line
	10775 975  10775 475 
Wire Notes Line
	11225 3225 8525 3225
Wire Notes Line
	8525 3225 8525 475 
Wire Notes Line
	8525 825  9925 825 
Wire Notes Line
	9925 825  9925 475 
Wire Wire Line
	2550 2025 2700 2025
Wire Wire Line
	1775 1800 1775 2025
Connection ~ 1775 2025
Wire Wire Line
	2700 2200 2700 2025
Connection ~ 2700 2025
Wire Wire Line
	3000 2200 3000 2025
Connection ~ 3000 2025
Wire Wire Line
	2700 2400 2700 2625
Wire Wire Line
	1775 2625 2250 2625
Wire Wire Line
	1775 2625 1775 2400
Wire Wire Line
	3000 2400 3000 2625
Connection ~ 2700 2625
Wire Wire Line
	2250 2325 2250 2625
Connection ~ 2250 2625
Connection ~ 3000 2625
Wire Wire Line
	2875 2800 3000 2800
Connection ~ 3000 2800
Wire Wire Line
	3300 2025 3300 2200
Connection ~ 3300 2025
Wire Wire Line
	3300 2400 3300 2525
Wire Wire Line
	3475 1500 3475 1525
Wire Wire Line
	3475 1525 3625 1525
Wire Wire Line
	1950 2025 1775 2025
Wire Wire Line
	2975 1500 2975 1550
Wire Wire Line
	2975 1550 3150 1550
Wire Wire Line
	3300 2925 3300 2950
Wire Notes Line
	4250 1050 4250 3325
Wire Notes Line
	4250 3325 975  3325
Wire Notes Line
	975  3325 975  1050
Wire Wire Line
	4675 5150 4975 5150
Wire Wire Line
	4975 5150 4975 4850
Wire Wire Line
	3350 4650 3200 4650
Wire Wire Line
	3350 4850 3200 4850
Wire Wire Line
	3200 5050 3350 5050
Wire Wire Line
	3350 5250 3200 5250
Wire Wire Line
	6425 4800 6425 4975
Wire Wire Line
	6900 4800 6900 4975
Wire Wire Line
	7525 4775 7525 4975
Wire Wire Line
	7875 4975 7875 4775
Wire Wire Line
	6000 4825 5750 4825
Wire Wire Line
	6000 4950 5750 4950
Wire Wire Line
	6000 5075 5750 5075
Wire Wire Line
	6000 5200 5750 5200
Wire Wire Line
	6000 5325 5750 5325
Text GLabel 5750 4825 0    60   BiDi ~ 0
D4
Text GLabel 5750 4950 0    60   BiDi ~ 0
D3
Text GLabel 5750 5075 0    60   BiDi ~ 0
D2
Text GLabel 5750 5200 0    60   BiDi ~ 0
D1
Text GLabel 5750 5325 0    60   BiDi ~ 0
D0
Text GLabel 5750 4700 0    60   BiDi ~ 0
D5
Text GLabel 5750 4575 0    60   BiDi ~ 0
D6
Text GLabel 5750 4450 0    60   BiDi ~ 0
D7
Text Label 3350 5450 0    60   ~ 0
AREF
Wire Wire Line
	3350 5450 3200 5450
Text Label 8600 2725 0    60   ~ 0
A3
Wire Wire Line
	9375 2725 8600 2725
Wire Wire Line
	5750 4700 6000 4700
Wire Wire Line
	5750 4575 6000 4575
Wire Wire Line
	5750 4450 6000 4450
Text Label 5025 6175 2    60   ~ 0
10(**/SS)
Text Label 5025 6075 2    60   ~ 0
11(**/MOSI)
Text Label 5025 5975 2    60   ~ 0
12(MISO)
Text Label 5025 5875 2    60   ~ 0
13(SCK)
Wire Wire Line
	3400 6075 5025 6075
Wire Wire Line
	3850 5975 5025 5975
Wire Wire Line
	4300 5875 5025 5875
Text GLabel 4300 5875 0    60   BiDi ~ 0
SPI1_SCK
Text GLabel 3850 5975 0    60   BiDi ~ 0
SPI1_MISO
Text GLabel 3400 6075 0    60   BiDi ~ 0
SPI1_MOSI
Wire Wire Line
	5025 6175 2925 6175
Text GLabel 2925 6175 0    60   BiDi ~ 0
SPI_SEL0
Wire Notes Line
	950  4100 950  6625
Wire Notes Line
	950  6625 6175 6625
Wire Notes Line
	6175 6625 6175 5625
Wire Notes Line
	6175 5625 8375 5625
Wire Notes Line
	8375 5625 8375 4100
Wire Notes Line
	8375 4100 950  4100
Text Notes 1075 4300 0    60   ~ 12
MAPPING COMPATIBILITY PINS
Text GLabel 6300 1750 1    60   Input ~ 0
VCC_3V3
$Comp
L stduinof429-rescue:R_Small-Device1-stduinof429-rescue-stduinof429-rescue R2
U 1 1 5DA28353
P 6300 1975
F 0 "R2" H 6350 2025 50  0000 L CNN
F 1 "22K" H 6350 1925 50  0000 L CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 6300 1975 50  0001 C CNN
F 3 "" H 6300 1975 50  0000 C CNN
	1    6300 1975
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2075 6300 2250
Text Label 6575 2250 0    60   ~ 0
Reset
Wire Wire Line
	6300 1750 6300 1875
$Comp
L stduinof429-rescue:GND-power1-stduinof429-rescue-stduinof429-rescue #PWR09
U 1 1 5DA28681
P 6300 2850
F 0 "#PWR09" H 6300 2600 50  0001 C CNN
F 1 "GND" H 6300 2700 50  0000 C CNN
F 2 "" H 6300 2850 50  0001 C CNN
F 3 "" H 6300 2850 50  0001 C CNN
	1    6300 2850
	1    0    0    -1  
$EndComp
$Comp
L stduinof429-rescue:SW_PUSH-stduinof429-rescue-stduinof429-rescue SW1
U 1 1 5DA286C5
P 6025 2550
F 0 "SW1" H 6175 2660 50  0000 C CNN
F 1 "SW_PUSH" H 6025 2470 50  0000 C CNN
F 2 "RetroBitLab:SW_SPST_FSMSM_3D" H 6025 2550 50  0001 C CNN
F 3 "" H 6025 2550 50  0000 C CNN
	1    6025 2550
	0    -1   -1   0   
$EndComp
Connection ~ 6300 2250
Wire Wire Line
	6025 2850 6300 2850
$Comp
L stduinof429-rescue:C_Small-Device1-stduinof429-rescue-stduinof429-rescue C4
U 1 1 5DA2889B
P 6300 2550
F 0 "C4" H 6310 2620 50  0000 L CNN
F 1 "100n" H 6310 2470 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 6300 2550 50  0001 C CNN
F 3 "" H 6300 2550 50  0000 C CNN
	1    6300 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2850 6300 2650
Text GLabel 6850 2250 2    60   Output ~ 0
nRST
Wire Wire Line
	6025 2250 6300 2250
Wire Notes Line
	7625 1050 7625 3325
Wire Notes Line
	7625 3325 4800 3325
Wire Notes Line
	4800 3325 4800 1050
Text Notes 4950 3225 0    60   ~ 12
RESET SECTION
$Sheet
S 75   8500 11575 6250
U 5DA2930A
F0 "pageMCU" 60
F1 "mcu_memory.sch" 60
$EndSheet
$Comp
L stduinof429-rescue:CONN_1-stduinof429-rescue-stduinof429-rescue P9
U 1 1 5DA49690
P 11175 650
F 0 "P9" H 11255 650 40  0000 L CNN
F 1 "CONN_1" H 11175 705 30  0001 C CNN
F 2 "RetroBitLab:MountingHole" H 11175 650 60  0001 C CNN
F 3 "" H 11175 650 60  0000 C CNN
	1    11175 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 11175 800 
NoConn ~ 8925 1350
Text GLabel 3200 4650 0    60   BiDi ~ 0
D8
Text GLabel 3200 4850 0    60   BiDi ~ 0
D9
Text GLabel 3200 5050 0    60   BiDi ~ 0
D10
Text GLabel 3200 5250 0    60   BiDi ~ 0
D11
Text GLabel 3200 5450 0    60   BiDi ~ 0
D12
$Comp
L stduinof429-rescue:+5V-power1-stduinof429-rescue-stduinof429-rescue #PWR010
U 1 1 5DA371CC
P 1375 1475
F 0 "#PWR010" H 1375 1325 50  0001 C CNN
F 1 "+5V" V 1300 1625 50  0000 C CNN
F 2 "" H 1375 1475 50  0001 C CNN
F 3 "" H 1375 1475 50  0001 C CNN
	1    1375 1475
	0    1    1    0   
$EndComp
$Comp
L stduinof429-rescue:PWR_FLAG-power1-stduinof429-rescue-stduinof429-rescue #FLG011
U 1 1 5DA37249
P 1275 1400
F 0 "#FLG011" H 1275 1475 50  0001 C CNN
F 1 "PWR_FLAG" H 1275 1550 50  0000 C CNN
F 2 "" H 1275 1400 50  0001 C CNN
F 3 "" H 1275 1400 50  0001 C CNN
	1    1275 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1275 1400 1275 1475
Wire Wire Line
	1275 1475 1375 1475
$Comp
L stduinof429-rescue:+3.3V-power1-stduinof429-rescue-stduinof429-rescue #PWR012
U 1 1 5DA38573
P 3500 1900
F 0 "#PWR012" H 3500 1860 30  0001 C CNN
F 1 "+3.3V" H 3500 2050 39  0000 C CNN
F 2 "" H 3500 1900 60  0000 C CNN
F 3 "" H 3500 1900 60  0000 C CNN
	1    3500 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1900 3500 2025
Connection ~ 3500 2025
Text GLabel 9050 1350 1    39   Output ~ 0
VCC5V
$Comp
L stduinof429-rescue:CONN_01X03-stduinof429-rescue-stduinof429-rescue P11
U 1 1 5DA3B776
P 1225 2025
F 0 "P11" H 1225 2225 50  0000 C CNN
F 1 "CONN_01X03" V 1325 2025 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1225 2025 50  0001 C CNN
F 3 "" H 1225 2025 50  0000 C CNN
	1    1225 2025
	-1   0    0    1   
$EndComp
$Comp
L stduinof429-rescue:+5V-power1-stduinof429-rescue-stduinof429-rescue #PWR013
U 1 1 5DA3B7E5
P 1425 1925
F 0 "#PWR013" H 1425 1775 50  0001 C CNN
F 1 "+5V" H 1425 2100 50  0000 C CNN
F 2 "" H 1425 1925 50  0001 C CNN
F 3 "" H 1425 1925 50  0001 C CNN
	1    1425 1925
	1    0    0    -1  
$EndComp
Text GLabel 1425 2350 3    39   Input ~ 0
VCC_5V_USB
Wire Wire Line
	1425 2125 1425 2350
$Comp
L stduinof429-rescue:USB_OTG-stduinof429-rescue-stduinof429-rescue P12
U 1 1 5DA3BD90
P 9875 4575
F 0 "P12" H 10200 4450 50  0000 C CNN
F 1 "USB_OTG" H 9875 4775 50  0000 C CNN
F 2 "RetroBitLab:USB_Micro-B_Large_Pads" V 9825 4475 50  0001 C CNN
F 3 "" V 9825 4475 50  0000 C CNN
	1    9875 4575
	1    0    0    -1  
$EndComp
NoConn ~ 9775 4875
NoConn ~ 9875 4875
NoConn ~ 9975 4875
$Comp
L stduinof429-rescue:GND-power1-stduinof429-rescue-stduinof429-rescue #PWR014
U 1 1 5DA3BEC3
P 10075 5025
F 0 "#PWR014" H 10075 5025 30  0001 C CNN
F 1 "GND" H 10075 4955 30  0001 C CNN
F 2 "" H 10075 5025 60  0000 C CNN
F 3 "" H 10075 5025 60  0000 C CNN
	1    10075 5025
	1    0    0    -1  
$EndComp
Wire Wire Line
	10275 4475 10275 4875
Wire Wire Line
	10275 4875 10075 4875
Wire Wire Line
	10075 4875 10075 5000
Text GLabel 9675 5125 3    39   BiDi ~ 0
VCC_5V_USB
Wire Wire Line
	9675 4875 9675 5000
$Comp
L stduinof429-rescue:C_Small-Device1-stduinof429-rescue-stduinof429-rescue C27
U 1 1 5DA3C280
P 9900 5000
F 0 "C27" H 9910 5070 50  0000 L CNN
F 1 "100n" H 9910 4920 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 9900 5000 50  0001 C CNN
F 3 "" H 9900 5000 50  0000 C CNN
	1    9900 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	9425 5000 9675 5000
Connection ~ 9675 5000
Wire Wire Line
	10000 5000 10075 5000
Connection ~ 10075 5000
Wire Notes Line
	8600 4100 11025 4100
Wire Notes Line
	11025 4100 11025 5625
Wire Notes Line
	11025 5625 8600 5625
Wire Notes Line
	8600 5625 8600 4100
Text Notes 8725 4300 0    59   ~ 12
USB POWER PLUG
$Comp
L stduinof429-rescue:PWR_FLAG-power1-stduinof429-rescue-stduinof429-rescue #FLG015
U 1 1 5DA3D4AB
P 9425 5000
F 0 "#FLG015" H 9425 5075 50  0001 C CNN
F 1 "PWR_FLAG" H 9425 5150 50  0000 C CNN
F 2 "" H 9425 5000 50  0001 C CNN
F 3 "" H 9425 5000 50  0001 C CNN
	1    9425 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9300 2125 9300 3100
Wire Wire Line
	1775 2025 1775 2200
Wire Wire Line
	1775 2025 1425 2025
Wire Wire Line
	2700 2025 3000 2025
Wire Wire Line
	3000 2025 3300 2025
Wire Wire Line
	2700 2625 3000 2625
Wire Wire Line
	2250 2625 2700 2625
Wire Wire Line
	3000 2625 3000 2800
Wire Wire Line
	3000 2800 3000 2950
Wire Wire Line
	3300 2025 3500 2025
Wire Wire Line
	6300 2250 6300 2450
Wire Wire Line
	6300 2250 6850 2250
Wire Wire Line
	3500 2025 3625 2025
Wire Wire Line
	9675 5000 9675 5125
Wire Wire Line
	9675 5000 9800 5000
Wire Wire Line
	10075 5000 10075 5025
Wire Notes Line
	975  1050 4250 1050
Wire Notes Line
	4800 1050 7625 1050
$EndSCHEMATC
