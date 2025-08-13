v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 450 130 450 150 {lab=out}
N 450 210 450 230 {lab=GND}
N 450 180 470 180 {lab=GND}
N 470 180 470 220 {lab=GND}
N 450 220 470 220 {lab=GND}
N 350 180 350 190 {lab=in}
N 350 180 410 180 {lab=in}
N 350 250 350 260 {lab=GND}
N 260 250 260 260 {lab=GND}
N 260 40 260 190 {lab=#net1}
N 260 40 450 40 {lab=#net1}
N 450 40 450 70 {lab=#net1}
N 450 230 450 260 {lab=GND}
N 450 140 480 140 {lab=out}
N 480 140 620 140 {lab=out}
N 580 140 580 180 {lab=out}
N 580 240 580 250 {lab=GND}
N 450 250 580 250 {lab=GND}
C {devices/code.sym} 0 40 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {primitives/nfet.sym} 430 180 0 0 {name=M1 
model=nmos
W=10u
L=1u
m=1
}
C {devices/res.sym} 450 100 0 0 {name=R1
value=3k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 450 260 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 260 220 0 0 {name=VDD value=5 savecurrent=false}
C {devices/vsource.sym} 350 220 0 0 {name=Vin value="sin 2.5 0.1 1e6 0 0 0" savecurrent=false}
C {devices/gnd.sym} 350 260 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 260 260 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} 20 210 0 0 {name=s1 only_toplevel=false value="""
.option savecurrent
.control
op
save all
show m1
tran 1n 5u
plot V(in) V(out)
.endc
"""}
C {devices/lab_wire.sym} 620 140 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/lab_wire.sym} 350 180 0 0 {name=p2 sig_type=std_logic lab=in}
C {devices/capa.sym} 580 210 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
