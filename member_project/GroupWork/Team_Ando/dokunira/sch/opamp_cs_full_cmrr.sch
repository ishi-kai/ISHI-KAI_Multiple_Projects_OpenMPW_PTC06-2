v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 960 470 1000 470 {
lab=out_d}
N 1000 470 1000 490 {
lab=out_d}
N 1000 550 1000 600 {
lab=GND}
N 900 650 1000 650 {
lab=GND}
N 780 560 800 560 {
lab=#net1}
N 780 490 840 490 {
lab=#net1}
N 780 640 780 650 {
lab=GND}
N 780 560 780 580 {
lab=#net1}
N 860 560 980 560 {
lab=out_d}
N 1000 600 1000 650 {
lab=GND}
N 550 430 550 450 {
lab=VDD}
N 550 510 550 540 {
lab=GND}
N 900 390 900 410 {
lab=VDD}
N 900 120 900 140 {
lab=VDD}
N 960 200 1000 200 {
lab=out_c}
N 1000 200 1000 210 {
lab=out_c}
N 900 300 1000 300 {
lab=GND}
N 900 300 900 320 {
lab=GND}
N 900 260 900 300 {
lab=GND}
N 1000 270 1000 300 {
lab=GND}
N 970 200 970 280 {
lab=out_c}
N 860 280 970 280 {
lab=out_c}
N 780 280 800 280 {
lab=#net2}
N 790 220 790 280 {
lab=#net2}
N 790 220 840 220 {
lab=#net2}
N 710 180 840 180 {
lab=in}
N 710 180 710 280 {
lab=in}
N 710 280 720 280 {
lab=in}
N 900 530 900 650 {
lab=GND}
N 710 450 840 450 {
lab=in}
N 710 450 710 460 {
lab=in}
N 710 520 710 530 {
lab=GND}
N 710 280 710 450 {
lab=in}
N 780 650 780 670 {
lab=GND}
N 780 650 900 650 {
lab=GND}
N 980 470 980 560 {lab=out_d}
N 780 490 780 560 {lab=#net1}
C {devices/code_shown.sym} 50 270 0 0 {name=control only_toplevel=false value=".option savecurrent
.control
set units=degree
op
show m
save all
ac dec 100 1 1e9
plot vdb(out_d), vdb(out_c)
.endc"}
C {devices/vsource.sym} 550 480 0 0 {name=Vdd value=5.0}
C {devices/vsource.sym} 710 490 0 0 {name=Vinp value="DC 2.5 AC 1"}
C {devices/gnd.sym} 780 670 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 1000 470 0 1 {name=p1 sig_type=std_logic lab=out_d}
C {devices/code_shown.sym} 50 490 0 0 {name=measure only_toplevel=false value=".measure ac gain_d find vdb(out_d) at=1
.measure ac gain_c find vdb(out_c) at=1"}
C {devices/capa.sym} 1000 520 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 710 450 0 0 {name=p2 sig_type=std_logic lab=in}
C {devices/res.sym} 830 560 1 0 {name=R1
value=100Meg
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 780 610 0 0 {name=C2
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/vdd.sym} 550 430 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} 550 540 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 900 390 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} 900 320 0 0 {name=l5 lab=GND}
C {devices/vdd.sym} 900 120 0 0 {name=l6 lab=VDD}
C {devices/capa.sym} 1000 240 0 0 {name=C3
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1000 200 0 1 {name=p3 sig_type=std_logic lab=out_c}
C {devices/res.sym} 830 280 1 0 {name=R2
value=100Meg
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 750 280 1 0 {name=C4
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 710 530 0 0 {name=l8 lab=GND}
C {devices/code.sym} 40 120 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {opamp_cs_full.sym} 860 470 0 0 {name=x1}
C {opamp_cs_full.sym} 860 200 0 0 {name=x2}
