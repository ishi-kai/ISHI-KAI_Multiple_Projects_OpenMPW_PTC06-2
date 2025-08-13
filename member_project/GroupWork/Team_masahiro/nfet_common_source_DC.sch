v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 450 210 450 230 {lab=out}
N 450 290 450 310 {lab=GND}
N 450 260 470 260 {lab=GND}
N 470 260 470 300 {lab=GND}
N 450 300 470 300 {lab=GND}
N 350 260 350 270 {lab=in}
N 350 260 410 260 {lab=in}
N 350 330 350 340 {lab=GND}
N 260 330 260 340 {lab=GND}
N 260 120 260 270 {lab=#net1}
N 260 120 450 120 {lab=#net1}
N 450 120 450 150 {lab=#net1}
N 450 310 450 340 {lab=GND}
N 450 220 480 220 {lab=out}
C {devices/code.sym} 0 40 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {primitives/nfet.sym} 430 260 0 0 {name=M1 
model=nmos
W=10u
L=1u
m=1
}
C {devices/res.sym} 450 180 0 0 {name=R1
value=3k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 450 340 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 260 300 0 0 {name=VDD value=5 savecurrent=false}
C {devices/vsource.sym} 350 300 0 0 {name=Vin value=2.5 savecurrent=false}
C {devices/gnd.sym} 350 340 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 260 340 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} 20 210 0 0 {name=s1 only_toplevel=false value="""
.option savecurrent
.control
op
show m1
save all
dc Vin 0 5 0.01
plot V(in) V(out)
.endc
"""}
C {devices/lab_wire.sym} 480 220 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/lab_wire.sym} 350 260 0 0 {name=p2 sig_type=std_logic lab=in}
