v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 410 180 410 220 {lab=#net1}
N 410 200 480 200 {lab=#net1}
N 480 200 480 250 {lab=#net1}
N 450 250 480 250 {lab=#net1}
N 390 250 410 250 {lab=GND}
N 390 250 390 310 {lab=GND}
N 390 310 410 310 {lab=GND}
N 410 280 410 320 {lab=GND}
N 580 280 580 320 {lab=GND}
N 580 250 590 250 {lab=GND}
N 590 250 590 300 {lab=GND}
N 580 300 590 300 {lab=GND}
N 580 200 580 220 {lab=vx}
N 480 250 540 250 {lab=#net1}
N 290 250 290 320 {lab=GND}
N 410 80 410 120 {lab=VDD}
N 730 280 730 320 {lab=GND}
N 730 200 730 220 {lab=vcopy}
N 520 210 520 250 {lab=#net1}
N 520 210 660 210 {lab=#net1}
N 660 210 660 250 {lab=#net1}
N 660 250 690 250 {lab=#net1}
N 730 250 750 250 {lab=GND}
N 750 250 750 300 {lab=GND}
N 730 300 750 300 {lab=GND}
N 290 170 290 190 {lab=VDD}
N 730 80 730 90 {lab=VDD}
N 580 80 580 90 {lab=VDD}
N 730 90 730 100 {lab=VDD}
N 580 90 580 100 {lab=VDD}
N 580 90 600 90 {lab=VDD}
N 600 90 600 130 {lab=VDD}
N 580 130 600 130 {lab=VDD}
N 730 90 750 90 {lab=VDD}
N 750 90 750 130 {lab=VDD}
N 730 130 750 130 {lab=VDD}
N 680 130 690 130 {lab=vcopy}
N 680 130 680 180 {lab=vcopy}
N 680 180 730 180 {lab=vcopy}
N 730 170 730 200 {lab=vcopy}
N 730 160 730 170 {lab=vcopy}
N 580 160 580 200 {lab=vx}
N 510 130 540 130 {lab=in}
N 730 180 770 180 {lab=vcopy}
N 490 130 510 130 {lab=in}
C {devices/code.sym} 10 30 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {primitives/nfet.sym} 430 250 0 1 {name=M1 
model=nmos
W=10u
L=1u
m=1
}
C {devices/isource.sym} 410 150 0 0 {name=I0 value=0.8m}
C {primitives/nfet.sym} 560 250 0 0 {name=M2 
model=nmos
W=10u
L=1u
m=1
}
C {devices/gnd.sym} 410 320 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 580 320 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 290 220 0 0 {name=VDD value=5 savecurrent=false}
C {devices/gnd.sym} 290 320 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} 20 200 0 0 {name=s1 only_toplevel=false value="""
.option savecurrent
.control
op
save all
dc V1 0 5 0.01
plot V(in) V(vx) V(vcopy)
show m
.endc
"""}
C {primitives/nfet.sym} 710 250 0 0 {name=M3 
model=nmos
W=10u
L=1u
m=1
}
C {devices/gnd.sym} 730 320 0 0 {name=l5 lab=GND}
C {devices/vdd.sym} 290 170 0 0 {name=l6 lab=VDD}
C {devices/vdd.sym} 410 80 0 0 {name=l7 lab=VDD}
C {devices/vdd.sym} 580 80 0 0 {name=l3 lab=VDD}
C {devices/vdd.sym} 730 80 0 0 {name=l8 lab=VDD}
C {primitives/pfet.sym} 560 130 0 0 {name=M4 
model=pmos
W=200u
L=1u
m=1
}
C {primitives/pfet.sym} 710 130 0 0 {name=M5 
model=pmos
W=200u
L=1u
m=1
}
C {devices/gnd.sym} 490 190 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} 580 190 0 1 {name=p1 sig_type=std_logic lab=vx}
C {devices/lab_pin.sym} 770 180 0 1 {name=p2 sig_type=std_logic lab=vcopy}
C {devices/vsource.sym} 490 160 0 0 {name=V1 value=5 savecurrent=false}
C {devices/lab_wire.sym} 510 130 1 0 {name=p3 sig_type=std_logic lab=in}
