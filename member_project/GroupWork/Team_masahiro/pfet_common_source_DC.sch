v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 350 250 350 260 {lab=in}
N 350 320 350 330 {lab=GND}
N 260 320 260 330 {lab=GND}
N 260 110 260 260 {lab=#net1}
N 260 110 450 110 {lab=#net1}
N 450 110 450 140 {lab=#net1}
N 450 310 450 330 {lab=GND}
N 450 170 460 170 {lab=#net1}
N 460 130 460 170 {lab=#net1}
N 450 130 460 130 {lab=#net1}
N 350 170 410 170 {lab=in}
N 350 170 350 250 {lab=in}
N 450 200 450 250 {lab=out}
N 450 230 480 230 {lab=out}
C {devices/code.sym} 0 30 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {devices/res.sym} 450 280 0 0 {name=R1
value=4k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 450 330 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 260 290 0 0 {name=VDD value=5 savecurrent=false}
C {devices/vsource.sym} 350 290 0 0 {name=Vin value=2.5 savecurrent=false}
C {devices/gnd.sym} 350 330 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 260 330 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} 20 200 0 0 {name=s1 only_toplevel=false value="""
.option savecurrent
.control
op
show m1
save all
dc Vin 0 5 0.01
plot V(in) V(out)
.endc
"""}
C {devices/lab_wire.sym} 480 230 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/lab_wire.sym} 350 250 0 0 {name=p2 sig_type=std_logic lab=in}
C {primitives/pfet.sym} 430 170 0 0 {name=M1 
model=pmos
W=30u
L=1u
m=1
}
