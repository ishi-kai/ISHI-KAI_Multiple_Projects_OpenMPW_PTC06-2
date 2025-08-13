v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 350 180 350 190 {lab=in}
N 350 250 350 260 {lab=GND}
N 260 250 260 260 {lab=GND}
N 260 40 260 190 {lab=#net1}
N 480 40 480 70 {lab=#net1}
N 480 240 480 260 {lab=GND}
N 350 100 350 180 {lab=in}
N 480 130 480 180 {lab=out}
N 480 160 510 160 {lab=out}
N 580 240 580 260 {lab=GND}
N 580 160 580 180 {lab=out}
N 510 160 580 160 {lab=out}
N 260 40 480 40 {lab=#net1}
N 350 100 440 100 {lab=in}
N 480 100 500 100 {lab=#net1}
N 500 40 500 100 {lab=#net1}
N 480 40 500 40 {lab=#net1}
C {devices/code.sym} 0 30 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {devices/res.sym} 480 210 0 0 {name=R1
value=4k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 480 260 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 260 220 0 0 {name=VDD value=5 savecurrent=false}
C {devices/vsource.sym} 350 220 0 0 {name=Vin value="DC 2.5 AC 1" savecurrent=false}
C {devices/gnd.sym} 350 260 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 260 260 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} 20 200 0 0 {name=s1 only_toplevel=false value="""
.option savecurrent
.control
op
show m1
save all
ac dec 20 1e6 1e10
plot Vdb(out)
plot Vp(out) * 180/3.14 - 180
.endc
"""}
C {devices/lab_wire.sym} 580 160 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/lab_wire.sym} 350 180 0 0 {name=p2 sig_type=std_logic lab=in}
C {primitives/pfet.sym} 460 100 0 0 {name=M1 
model=pmos
W=30u
L=1u
m=1
}
C {devices/capa.sym} 580 210 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 580 260 0 0 {name=l4 lab=GND}
