v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 360 180 360 190 {lab=in}
N 360 250 360 260 {lab=GND}
N 270 250 270 260 {lab=GND}
N 270 40 270 190 {lab=#net1}
N 490 40 490 70 {lab=#net1}
N 490 240 490 260 {lab=GND}
N 360 100 360 180 {lab=in}
N 490 130 490 180 {lab=out}
N 490 160 520 160 {lab=out}
N 590 240 590 260 {lab=GND}
N 590 160 590 180 {lab=out}
N 520 160 590 160 {lab=out}
N 270 40 490 40 {lab=#net1}
N 360 100 450 100 {lab=in}
N 490 100 510 100 {lab=#net1}
N 510 40 510 100 {lab=#net1}
N 490 40 510 40 {lab=#net1}
C {devices/code.sym} 10 30 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {devices/res.sym} 490 210 0 0 {name=R1
value=4k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 490 260 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 270 220 0 0 {name=VDD value=5 savecurrent=false}
C {devices/vsource.sym} 360 220 0 0 {name=Vin value="sin 2.5 0.1 1e6 0 0 0" savecurrent=false}
C {devices/gnd.sym} 360 260 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 270 260 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} 30 200 0 0 {name=s1 only_toplevel=false value="""
.option savecurrent
.control
op
show m1
save all
tran 1n 5u
plot V(in) V(out)
.endc
"""}
C {devices/lab_wire.sym} 590 160 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/lab_wire.sym} 360 180 0 0 {name=p2 sig_type=std_logic lab=in}
C {primitives/pfet.sym} 470 100 0 0 {name=M1 
model=pmos
W=30u
L=1u
m=1
}
C {devices/capa.sym} 590 210 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 590 260 0 0 {name=l4 lab=GND}
