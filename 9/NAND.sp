
.SUBCKT nand X Y F GND VDD
Mp1 F X VDD VDD p_18 w=1u L=0.18u
Mp2 F Y VDD VDD p_18 w=1u L=0.18u
Mn1 F X e  GND  n_18 w=0.5u L=0.18u
Mn2 e Y GND GND n_18 w=0.5u L=0.18u
.ENDS

.GLOBAL GND VDD
VGND GND 0v DC 0v
VVDD VDD GND DC 1.8v
V1 X GND PULSE( 0v 1.8V 15ns 5ns 5ns 20ns 50ns)
V2 Y GND PULSE( 0v 1.8V -5ns 5ns 5ns 30ns 70ns)

Xnand X Y F GND VDD nand

.protect
.lib 'cic018.l' TT
.unprotect
.options post
.tran 0.01u 140u
.end
