v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 390 240 390 260 {
lab=GND}
N 530 200 530 210 {
lab=in}
N 530 270 530 280 {
lab=GND}
N 530 280 650 280 {
lab=GND}
N 450 280 500 280 {
lab=GND}
N 390 260 390 300 {
lab=GND}
N 390 280 450 280 {
lab=GND}
N 650 280 660 280 {
lab=GND}
N 750 180 780 180 {
lab=out}
N 780 180 780 190 {
lab=out}
N 780 250 780 260 {
lab=GND}
N 660 280 730 280 {
lab=GND}
N 500 280 530 280 {
lab=GND}
N 690 240 690 280 {
lab=GND}
N 730 280 780 280 {
lab=GND}
N 780 260 780 280 {
lab=GND}
N 390 70 390 180 {
lab=#net1}
N 390 70 690 70 {
lab=#net1}
N 690 70 690 120 {
lab=#net1}
N 530 160 630 160 {
lab=in}
N 530 160 530 200 {
lab=in}
N 610 200 630 200 {
lab=out}
N 610 200 610 250 {
lab=out}
N 610 250 760 250 {
lab=out}
N 760 180 760 250 {
lab=out}
C {devices/gnd.sym} 390 300 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 390 210 0 0 {name=Vdd value=5.0}
C {devices/code_shown.sym} 40 230 0 0 {name=control only_toplevel=false value=".option savecurrent
.control
op
show m
save all
tran 0.1n 1000n
plot v(in) v(out)
meas tran tr trig v(out) val=1 rise=1 targ v(out) val=4 rise=1
let slew_rate = 3/tr
print slew_rate
.endc"}
C {devices/lab_pin.sym} 780 180 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/capa.sym} 780 220 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 530 240 0 0 {name=Vin value="pwl 0 0 1n 0 1.1n 5.0"}
C {devices/lab_pin.sym} 530 160 0 0 {name=p2 sig_type=std_logic lab=in}
C {opamp_cs_full.sym} 650 180 0 0 {name=x1}
C {devices/code.sym} 30 60 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
