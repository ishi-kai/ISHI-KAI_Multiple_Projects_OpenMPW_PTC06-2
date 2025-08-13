v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 670 240 780 240 {
lab=in}
N 670 240 670 250 {
lab=in}
N 530 150 840 150 {
lab=#net1}
N 530 200 530 240 {
lab=#net1}
N 530 440 840 440 {
lab=GND}
N 530 300 530 400 {
lab=GND}
N 530 440 530 460 {
lab=GND}
N 530 150 530 200 {
lab=#net1}
N 900 260 940 260 {
lab=out}
N 940 260 940 280 {
lab=out}
N 940 340 940 390 {
lab=GND}
N 840 320 840 400 {
lab=GND}
N 840 150 840 200 {
lab=#net1}
N 840 440 940 440 {
lab=GND}
N 720 350 740 350 {
lab=#net2}
N 670 310 720 310 {
lab=#net2}
N 720 280 720 310 {
lab=#net2}
N 720 280 780 280 {
lab=#net2}
N 720 430 720 440 {
lab=GND}
N 920 260 920 330 {
lab=out}
N 720 310 720 350 {
lab=#net2}
N 720 350 720 370 {
lab=#net2}
N 800 350 920 350 {
lab=out}
N 920 330 920 350 {
lab=out}
N 940 390 940 440 {
lab=GND}
N 840 400 840 440 {
lab=GND}
N 530 400 530 440 {
lab=GND}
C {devices/code_shown.sym} 60 220 0 0 {name=control only_toplevel=false value=".option savecurrent
.control
set units=degree
op
show m
save all
ac dec 20 1 1e9
plot vdb(out)
plot vp(out)
meas ac gain find vdb(out) at=1
meas ac unity_gain when vdb(out)=0
meas ac phase find vp(out) when vdp(out)=0
let phase_margin = 180 + phase
print phase_margin
.endc"}
C {devices/vsource.sym} 530 270 0 0 {name=Vdd value=5.0}
C {devices/vsource.sym} 670 280 0 0 {name=Vinp value="AC 1"}
C {devices/gnd.sym} 530 460 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 940 260 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/capa.sym} 940 310 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 670 240 0 0 {name=p2 sig_type=std_logic lab=in}
C {devices/res.sym} 770 350 1 0 {name=R1
value=100Meg
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 720 400 0 0 {name=C2
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/code.sym} 50 70 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {opamp_cs_full.sym} 800 260 0 0 {name=x1}
