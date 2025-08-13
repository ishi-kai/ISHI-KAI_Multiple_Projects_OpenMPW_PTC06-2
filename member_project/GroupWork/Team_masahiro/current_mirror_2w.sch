v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 530 180 530 220 {lab=#net1}
N 530 200 600 200 {lab=#net1}
N 600 200 600 250 {lab=#net1}
N 570 250 600 250 {lab=#net1}
N 510 250 530 250 {lab=GND}
N 510 250 510 310 {lab=GND}
N 510 310 530 310 {lab=GND}
N 530 280 530 320 {lab=GND}
N 700 280 700 320 {lab=GND}
N 700 250 710 250 {lab=GND}
N 710 250 710 300 {lab=GND}
N 700 300 710 300 {lab=GND}
N 960 280 960 320 {lab=GND}
N 700 200 700 220 {lab=#net2}
N 700 120 700 140 {lab=#net3}
N 810 120 960 120 {lab=#net3}
N 960 120 960 130 {lab=#net3}
N 960 260 960 280 {lab=GND}
N 960 130 960 200 {lab=#net3}
N 600 250 660 250 {lab=#net1}
N 350 250 350 320 {lab=GND}
N 350 80 350 190 {lab=#net4}
N 350 80 530 80 {lab=#net4}
N 530 80 530 120 {lab=#net4}
N 700 120 810 120 {lab=#net3}
N 850 280 850 320 {lab=GND}
N 850 120 850 140 {lab=#net3}
N 850 200 850 220 {lab=#net5}
N 640 210 640 250 {lab=#net1}
N 640 210 780 210 {lab=#net1}
N 780 210 780 250 {lab=#net1}
N 780 250 810 250 {lab=#net1}
N 850 250 870 250 {lab=GND}
N 870 250 870 300 {lab=GND}
N 850 300 870 300 {lab=GND}
C {devices/code.sym} 10 30 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {primitives/nfet.sym} 550 250 0 1 {name=M1 
model=nmos
W=10u
L=1u
m=1
}
C {devices/isource.sym} 530 150 0 0 {name=I0 value=0.8m}
C {primitives/nfet.sym} 680 250 0 0 {name=M2 
model=nmos
W=10u
L=1u
m=1
}
C {devices/gnd.sym} 530 320 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 700 320 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 960 230 0 0 {name=VDS value=2.5 savecurrent=false}
C {devices/gnd.sym} 960 320 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 350 220 0 0 {name=VDD value=5 savecurrent=false}
C {devices/gnd.sym} 350 320 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} 20 200 0 0 {name=s1 only_toplevel=false value="""
.option savecurrent
.control
op
save all
dc I0 0 1m 0.01m
plot I(Vmeas) I(Vmeas1)
dc VDS 0 5 0.01
plot I(Vmeas) I(Vmeas1)
show m
.endc
"""}
C {primitives/nfet.sym} 830 250 0 0 {name=M3 
model=nmos
W=20u
L=1u
m=1
}
C {devices/gnd.sym} 850 320 0 0 {name=l5 lab=GND}
C {devices/ammeter.sym} 700 170 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {devices/ammeter.sym} 850 170 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
