* File: NOR.pex.netlist
* Created: Tue May 24 14:45:42 2016
* Program "Calibre xRC"
* Version "v2012.2_26.20"
* 
.include "NOR.pex.netlist.pex"
.subckt nor  F X Y GND VDD
* 
* VDD	VDD
* GND	GND
* Y	Y
* X	X
* F	F
Mn2 N_F_Mn2_d N_X_Mn2_g N_GND_Mn2_s N_GND_Mn2_b N_18 L=1.8e-07 W=5e-07
+ AD=1.275e-13 AS=2.45e-13 PD=5.1e-07 PS=1.48e-06
Mn1 N_F_Mn1_d N_Y_Mn1_g N_GND_Mn1_s N_GND_Mn2_b N_18 L=1.8e-07 W=5e-07
+ AD=1.275e-13 AS=2.45e-13 PD=5.1e-07 PS=1.48e-06
Mp1 N_F_Mp1_d N_X_Mp1_g N_E_Mp1_s N_VDD_Mp1_b P_18 L=1.8e-07 W=1e-06 AD=4.9e-13
+ AS=2.55e-13 PD=1.98e-06 PS=5.1e-07
Mp2 N_E_Mp2_d N_Y_Mp2_g N_VDD_Mp2_s N_VDD_Mp1_b P_18 L=1.8e-07 W=1e-06
+ AD=2.55e-13 AS=4.9e-13 PD=5.1e-07 PS=1.98e-06
*
.include "NOR.pex.netlist.NOR.pxi"
*
.ends
*
*

.GLOBAL GND VDD
VGND GND 0v DC 0v
VVDD VDD GND DC 1.8v
V1 X GND PULSE( 0v 1.8V 15ns 5ns 5ns 20ns 50ns)
V2 Y GND PULSE( 0v 1.8V -5ns 5ns 5ns 30ns 70ns)

Xnor F X Y GND VDD nor

.protect
.lib 'cic018.l' TT
.unprotect
.options post
.tran 0.01u 140u
.end
