v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -550 -230 -550 -190 {lab=VDD}
N -550 -130 -550 -100 {lab=GND}
N -460 -230 -460 -190 {lab=data}
N -460 -130 -460 -100 {lab=GND}
N 840 220 840 240 {lab=GND}
N 840 80 840 100 {lab=VDD}
N 930 140 990 140 {lab=dout}
N 680 140 750 140 {lab=#net1}
N 680 180 750 180 {lab=clk}
N -460 -10 -460 30 {lab=clk}
N -460 90 -460 120 {lab=GND}
N 790 100 810 100 {lab=VDD}
N 810 100 830 100 {lab=VDD}
N 830 100 850 100 {lab=VDD}
N 850 100 870 100 {lab=VDD}
N 870 100 890 100 {lab=VDD}
N 790 220 810 220 {lab=GND}
N 810 220 830 220 {lab=GND}
N 830 220 840 220 {lab=GND}
N 840 220 850 220 {lab=GND}
N 850 220 870 220 {lab=GND}
N 870 220 890 220 {lab=GND}
N -700 -260 -700 -240 {lab=VDD}
N -700 -240 -700 -220 {lab=VDD}
N -700 -160 -700 -120 {lab=vref}
N -700 -60 -700 -40 {lab=GND}
N -700 -140 -640 -140 {lab=vref}
N 400 120 440 120 {lab=vref}
N 420 160 440 160 {lab=#net2}
N 420 160 420 260 {lab=#net2}
N 620 140 620 260 {lab=#net1}
N 560 140 620 140 {lab=#net1}
N 420 260 480 260 {lab=#net2}
N 540 260 620 260 {lab=#net1}
N 380 160 420 160 {lab=#net2}
N 280 160 320 160 {lab=ain}
N 620 140 680 140 {lab=#net1}
N 500 200 500 220 {lab=GND}
N 500 60 500 80 {lab=VDD}
C {devices/code.sym} 240 -440 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {devices/code_shown.sym} 250 -260 0 0 {name=spice only_toplevel=false value="
.option savecurrent
.control
save all

* Tran analysis
tran 0.1m 10m
plot data clk dout
.endc
"}
C {devices/vsource.sym} -550 -160 0 0 {name=Vdd value=5 savecurrent=false}
C {devices/vdd.sym} -550 -230 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} -550 -100 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} -460 -160 0 0 {name=vin value="pwl 0 0 0.5m 0 1m 5" savecurrent=false}
C {devices/gnd.sym} -460 -100 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -460 -230 1 0 {name=p3 sig_type=std_logic lab=data}
C {../sanken/shishido/D_FF_NAND/D_FF_NAND.sym} 840 160 0 0 {name=x1}
C {devices/gnd.sym} 840 240 0 0 {name=l7 lab=GND}
C {devices/vdd.sym} 840 80 0 0 {name=l8 lab=VDD}
C {devices/lab_pin.sym} 990 140 2 0 {name=p4 sig_type=std_logic lab=dout}
C {devices/lab_pin.sym} 680 100 0 0 {name=p5 sig_type=std_logic lab=data}
C {devices/lab_pin.sym} 680 180 0 0 {name=p6 sig_type=std_logic lab=clk}
C {devices/vsource.sym} -460 60 0 0 {name=vin1 value="pulse 0 5 10n 0 0 0.5m 1m 0" savecurrent=false}
C {devices/gnd.sym} -460 120 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} -460 -10 1 0 {name=p7 sig_type=std_logic lab=clk}
C {../GroupWork/Team_Ando/dokunira/sch/opamp_cs_full.sym} 460 140 0 0 {name=x2}
C {devices/vdd.sym} -700 -240 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} -700 -40 0 0 {name=l2 lab=GND}
C {devices/res.sym} -700 -190 0 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -700 -90 0 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -640 -140 2 0 {name=p1 sig_type=std_logic lab=vref}
C {devices/lab_pin.sym} 400 120 0 0 {name=p2 sig_type=std_logic lab=vref}
C {devices/capa.sym} 510 260 1 0 {name=C1
m=1
value=10n
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 280 160 0 0 {name=p8 sig_type=std_logic lab=ain}
C {devices/res.sym} 350 160 1 0 {name=R3
value=100k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 500 60 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 500 220 0 0 {name=l10 lab=GND}
