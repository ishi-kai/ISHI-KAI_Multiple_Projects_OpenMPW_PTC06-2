v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 220 -260 330 -260 {
lab=in}
N 220 -260 220 -250 {
lab=in}
N 80 -300 80 -260 {
lab=#net1}
N 80 -60 390 -60 {
lab=GND}
N 80 -200 80 -100 {
lab=GND}
N 80 -60 80 -40 {
lab=GND}
N 80 -350 80 -300 {
lab=#net1}
N 450 -240 490 -240 {
lab=out}
N 490 -240 490 -220 {
lab=out}
N 490 -160 490 -110 {
lab=GND}
N 390 -60 490 -60 {
lab=GND}
N 270 -150 290 -150 {
lab=#net2}
N 220 -190 270 -190 {
lab=#net2}
N 270 -210 310 -210 {
lab=#net2}
N 270 -70 270 -60 {
lab=GND}
N 470 -240 470 -170 {
lab=out}
N 270 -190 270 -150 {
lab=#net2}
N 270 -150 270 -130 {
lab=#net2}
N 350 -150 470 -150 {
lab=out}
N 470 -170 470 -150 {
lab=out}
N 490 -110 490 -60 {
lab=GND}
N 80 -100 80 -60 {
lab=GND}
N 270 -210 270 -190 {lab=#net2}
N 370 -190 370 -170 {lab=GND}
N 370 -170 370 -60 {lab=GND}
N 370 -350 370 -280 {lab=#net1}
N 80 -350 370 -350 {lab=#net1}
C {devices/code_shown.sym} -470 -300 0 0 {name=control only_toplevel=false value=".option savecurrent
.control
set units=degree
op
show m
save all
ac dec 20 1e2 1e10
plot vdb(out)
plot vp(out)
.endc"}
C {devices/vsource.sym} 80 -230 0 0 {name=Vdd value=5.0}
C {devices/vsource.sym} 220 -220 0 0 {name=Vinp value="AC 1"}
C {devices/gnd.sym} 80 -40 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 490 -240 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/code_shown.sym} -470 -80 0 0 {name=measure only_toplevel=false value=".measure ac gain find vdb(out) at=1e3
.measure ac ugf when vdb(out)=0
.measure ac phase find vp(out) at=24.3e6"}
C {devices/capa.sym} 490 -190 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 220 -260 0 0 {name=p2 sig_type=std_logic lab=in}
C {devices/res.sym} 320 -150 1 0 {name=R1
value=100Meg
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 270 -100 0 0 {name=C2
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/code.sym} -480 -450 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {ishi/2stage_pc_3.sym} 440 -240 0 0 {name=x1}
