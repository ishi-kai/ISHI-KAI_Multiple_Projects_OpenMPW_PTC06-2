v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -160 0 -100 {lab=#net1}
N 0 -70 20 -70 {lab=#net1}
N 20 -120 20 -70 {lab=#net1}
N 0 -120 20 -120 {lab=#net1}
N -140 0 -70 0 {lab=vin}
N -70 -70 -70 0 {lab=vin}
N -70 -70 -40 -70 {lab=vin}
N -70 90 -40 90 {lab=vin}
N -70 0 -70 90 {lab=vin}
N 0 -40 0 -20 {lab=vout}
N 0 40 0 60 {lab=vout}
N 0 120 0 170 {lab=GND}
N 0 -20 40 -20 {lab=vout}
N 40 -20 40 40 {lab=vout}
N 0 40 40 40 {lab=vout}
N 120 0 170 0 {lab=vout}
N 0 90 20 90 {lab=GND}
N 20 90 20 140 {lab=GND}
N 0 140 20 140 {lab=GND}
N 0 170 0 210 {lab=GND}
N 40 0 120 0 {lab=vout}
N 110 0 110 90 {lab=vout}
N 110 150 110 210 {lab=GND}
N -0 -300 0 -260 {lab=VDD}
N 0 -200 0 -160 {lab=#net1}
N -300 90 -300 130 {lab=VDD}
N -300 190 -300 220 {lab=GND}
N -210 90 -210 130 {lab=vin}
N -210 190 -210 220 {lab=GND}
C {devices/code.sym} -230 -180 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {.xschem/symbols/OR1/primitives/pfet.sym} -20 -70 0 0 {name=M1 
model=pmos
W=3.3u
L=1u
m=1
}
C {.xschem/symbols/OR1/primitives/nfet.sym} -20 90 0 0 {name=M2 
model=nmos
W=2u
L=1u
m=1
}
C {devices/vdd.sym} 0 -300 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 0 210 0 0 {name=l2 lab=GND}
C {devices/ammeter.sym} 0 -230 0 0 {name=Vd savecurrent=true spice_ignore=0}
C {devices/lab_pin.sym} -140 0 0 0 {name=p1 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 170 0 2 0 {name=p2 sig_type=std_logic lab=vout}
C {devices/capa.sym} 110 120 0 0 {name=C1
m=1
value=10F
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 110 210 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} 250 -260 0 0 {name=spice only_toplevel=false value="
.option savecurrent
.control
save all

* Tran analysis
tran 0.1n 100n
plot vout vin
plot i(vd)
* wrdata ~/inverter_tb_mac.txt
* write inverter_tb_mac.raw
.endc
"}
C {devices/code_shown.sym} 250 30 0 0 {name=measurre only_toplevel=false 
value=".measure tran td_r trig v(vin) val=2.5 Fall=1 targ v(vout) val=2.5 rise=1
.measure tran td_r trig v(vin) val=2.5 rise=1 targ v(vout) val=2.5 fall=1
.measure tran trise trig v(vout) val=0.83 rise=1 targ v(vout) val=4.17 rise=1
.measure tran tfall trig v(vout) val=4.17 rise=1 targ v(vout) val=0.83 fall=1

"}
C {devices/vsource.sym} -300 160 0 0 {name=Vdd value=5 savecurrent=false}
C {devices/vdd.sym} -300 90 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} -300 220 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} -210 160 0 0 {name=vin value="pwl 0 0 10n 0 20n 5.0 60n 5.0 70n 0" savecurrent=false}
C {devices/gnd.sym} -210 220 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -210 90 1 0 {name=p3 sig_type=std_logic lab=vin}
