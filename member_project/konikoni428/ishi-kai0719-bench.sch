v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -70 10 -20 10 {lab=vin}
N -20 -40 -20 10 {lab=vin}
N -20 -60 20 -60 {lab=vin}
N -20 -60 -20 -40 {lab=vin}
N 60 -140 60 -90 {lab=#net1}
N 60 -100 80 -100 {lab=#net1}
N 80 -100 80 -60 {lab=#net1}
N 60 -60 80 -60 {lab=#net1}
N -20 10 -20 70 {lab=vin}
N -20 70 20 70 {lab=vin}
N 60 -30 60 40 {lab=vout}
N 60 10 170 10 {lab=vout}
N 60 70 80 70 {lab=GND}
N 60 100 60 160 {lab=GND}
N 60 -210 60 -200 {lab=VDD}
N -370 10 -370 60 {lab=VDD}
N -290 10 -290 60 {lab=vin}
N -370 120 -370 160 {lab=GND}
N -290 120 -290 160 {lab=GND}
N 170 10 250 10 {lab=vout}
N 190 10 190 40 {lab=vout}
N 190 100 190 160 {lab=GND}
N 80 70 80 110 {lab=GND}
N 60 110 80 110 {lab=GND}
C {devices/vdd.sym} 60 -210 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 60 160 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} 330 -140 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all

dc vin 0 5.0 0.01
plot vout vin
plot i(vd)
.endc"
}
C {devices/code_shown.sym} 330 90 0 0 {name=measure only_toplevel=false
value=".measure dc Vinv when v(vout)=2.5"}
C {devices/vsource.sym} -290 90 0 0 {name=vin value=5.0 savecurrent=false}
C {devices/vsource.sym} -370 90 0 0 {name=Vdd value=5.0 savecurrent=false}
C {devices/gnd.sym} -370 160 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -290 160 0 0 {name=l4 lab=GND}
C {devices/ammeter.sym} 60 -170 0 0 {name=Vd savecurrent=true spice_ignore=0}
C {devices/lab_pin.sym} -70 10 0 0 {name=p2 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 250 10 2 0 {name=p1 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} -290 10 0 0 {name=p3 sig_type=std_logic lab=vin}
C {devices/vdd.sym} -370 10 0 0 {name=l5 lab=VDD}
C {devices/capa.sym} 190 70 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 190 160 0 0 {name=l6 lab=GND}
C {primitives/nfet.sym} 40 70 0 0 {name=M1 
model=nmos
W=3.2u
L=1.4u
m=1
}
C {primitives/pfet.sym} 40 -60 0 0 {name=M2 
model=pmos
W=8.2u
L=1.6u
m=1
}
C {devices/code.sym} -510 -170 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
