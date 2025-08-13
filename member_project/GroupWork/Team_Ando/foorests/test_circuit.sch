v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -770 -150 -670 -150 {lab=#net1}
N -770 -150 -770 -130 {lab=#net1}
N -710 -100 -670 -100 {lab=#net2}
N -710 -100 -710 -30 {lab=#net2}
N -710 -30 -710 -10 {lab=#net2}
N -710 -10 -710 10 {lab=#net2}
N -710 0 -680 0 {lab=#net2}
N -410 -130 -340 -130 {lab=out}
N -620 0 -380 0 {lab=out}
N -380 -130 -380 0 {lab=out}
N -340 -130 -330 -130 {lab=out}
N -340 -130 -340 -110 {lab=out}
N -590 -40 -590 120 {lab=GND}
N -340 -50 -340 120 {lab=GND}
N -710 70 -710 120 {lab=GND}
N -710 120 -340 120 {lab=GND}
N -890 120 -710 120 {lab=GND}
N -900 -70 -900 120 {lab=GND}
N -900 120 -890 120 {lab=GND}
N -590 -270 -590 -220 {lab=#net3}
N -890 -270 -590 -270 {lab=#net3}
N -900 -270 -900 -130 {lab=#net3}
N -900 -270 -890 -270 {lab=#net3}
N -900 120 -900 160 {lab=GND}
N -770 -70 -770 -40 {lab=#net2}
N -770 -40 -710 -40 {lab=#net2}
N -590 -40 -580 -40 {lab=GND}
N -670 -150 -660 -150 {lab=#net1}
N -420 -130 -420 -110 {lab=out}
N -420 -130 -410 -130 {lab=out}
N -670 -100 -660 -100 {lab=#net2}
C {devices/vsource.sym} -770 -100 0 0 {name=Vinp value="ac 1" savecurrent=false}
C {devices/capa.sym} -710 40 0 0 {name=C1
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} -650 0 1 0 {name=R1
value=100Meg
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -330 -130 2 0 {name=p1 sig_type=std_logic lab=out}
C {devices/capa.sym} -340 -80 0 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} -900 -100 0 0 {name=Vdd value="5.0" savecurrent=false}
C {devices/gnd.sym} -900 160 0 0 {name=l1 lab=GND}
C {devices/code.sym} -1330 70 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {devices/simulator_commands_shown.sym} -1340 -430 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.option savecurrent
.control
set units=degree
op
show m 
save all
ac dec 20 1 1e10
plot vdb(out)
plot vp(out)
.endc
"}
C {devices/code_shown.sym} -1420 -160 0 0 {name=s1 only_toplevel=false value="
.measure ac gain find vdb(out) at=1e3
.measure ac ugf when vdb(out)=0
.measure ac phase find vp(out) at=5.892989e6"
}
C {ISHI/circuit/complete/circuit.sym} -510 -70 0 0 {name=x1}
