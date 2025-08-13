v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 540 160 540 200 {lab=#net1}
N 540 180 610 180 {lab=#net1}
N 610 180 610 230 {lab=#net1}
N 580 230 610 230 {lab=#net1}
N 520 230 540 230 {lab=GND}
N 520 230 520 290 {lab=GND}
N 520 290 540 290 {lab=GND}
N 540 260 540 300 {lab=GND}
N 710 260 710 300 {lab=GND}
N 710 230 720 230 {lab=GND}
N 720 230 720 280 {lab=GND}
N 710 280 720 280 {lab=GND}
N 710 180 710 200 {lab=vx}
N 610 230 670 230 {lab=#net1}
N 420 230 420 300 {lab=GND}
N 540 60 540 100 {lab=VDD}
N 860 260 860 300 {lab=GND}
N 860 180 860 200 {lab=vcopy}
N 650 190 650 230 {lab=#net1}
N 650 190 790 190 {lab=#net1}
N 790 190 790 230 {lab=#net1}
N 790 230 820 230 {lab=#net1}
N 860 230 880 230 {lab=GND}
N 880 230 880 280 {lab=GND}
N 860 280 880 280 {lab=GND}
N 420 150 420 170 {lab=VDD}
N 860 60 860 70 {lab=vcopy2}
N 710 60 710 70 {lab=VDD}
N 860 70 860 80 {lab=vcopy2}
N 710 70 710 80 {lab=VDD}
N 710 70 730 70 {lab=VDD}
N 730 70 730 110 {lab=VDD}
N 710 110 730 110 {lab=VDD}
N 860 70 880 70 {lab=vcopy2}
N 880 70 880 110 {lab=vcopy2}
N 860 110 880 110 {lab=vcopy2}
N 810 110 820 110 {lab=vcopy}
N 810 110 810 160 {lab=vcopy}
N 810 160 860 160 {lab=vcopy}
N 860 150 860 180 {lab=vcopy}
N 860 140 860 150 {lab=vcopy}
N 710 140 710 180 {lab=vx}
N 640 110 670 110 {lab=in}
N 860 160 900 160 {lab=vcopy}
N 620 110 640 110 {lab=in}
N 860 -60 860 -30 {lab=VDD}
N 860 30 860 60 {lab=vcopy2}
N 810 40 860 40 {lab=vcopy2}
N 810 0 810 40 {lab=vcopy2}
N 810 0 820 0 {lab=vcopy2}
N 860 0 890 0 {lab=VDD}
N 890 -40 890 0 {lab=VDD}
N 860 -40 890 -40 {lab=VDD}
N 860 60 900 60 {lab=vcopy2}
C {devices/code.sym} 10 30 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {primitives/nfet.sym} 560 230 0 1 {name=M1 
model=nmos
W=10u
L=1u
m=1
}
C {devices/isource.sym} 540 130 0 0 {name=I0 value=0.8m}
C {primitives/nfet.sym} 690 230 0 0 {name=M2 
model=nmos
W=10u
L=1u
m=1
}
C {devices/gnd.sym} 540 300 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 710 300 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 420 200 0 0 {name=VDD value=5 savecurrent=false}
C {devices/gnd.sym} 420 300 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} 20 200 0 0 {name=s1 only_toplevel=false value="""
.option savecurrent
.control
op
save all
dc V1 0 5 0.01
plot V(in) V(vx) V(vcopy) V(vcopy2)
show m
.endc
"""}
C {primitives/nfet.sym} 840 230 0 0 {name=M3 
model=nmos
W=10u
L=1u
m=1
}
C {devices/gnd.sym} 860 300 0 0 {name=l5 lab=GND}
C {devices/vdd.sym} 420 150 0 0 {name=l6 lab=VDD}
C {devices/vdd.sym} 540 60 0 0 {name=l7 lab=VDD}
C {devices/vdd.sym} 710 60 0 0 {name=l3 lab=VDD}
C {devices/vdd.sym} 860 -60 0 0 {name=l8 lab=VDD}
C {primitives/pfet.sym} 690 110 0 0 {name=M4 
model=pmos
W=100u
L=1u
m=1
}
C {primitives/pfet.sym} 840 110 0 0 {name=M5 
model=pmos
W=100u
L=1u
m=1
}
C {devices/gnd.sym} 620 170 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} 710 170 0 1 {name=p1 sig_type=std_logic lab=vx}
C {devices/lab_pin.sym} 900 160 0 1 {name=p2 sig_type=std_logic lab=vcopy}
C {devices/vsource.sym} 620 140 0 0 {name=V1 value=5 savecurrent=false}
C {devices/lab_wire.sym} 640 110 1 0 {name=p3 sig_type=std_logic lab=in}
C {devices/lab_wire.sym} 900 60 0 1 {name=p4 sig_type=std_logic lab=vcopy2}
C {primitives/pfet.sym} 840 0 0 0 {name=M6 
model=pmos
W=100u
L=1u
m=1
}
