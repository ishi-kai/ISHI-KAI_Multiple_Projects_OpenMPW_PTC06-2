v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 440 130 440 170 {lab=#net1}
N 440 150 510 150 {lab=#net1}
N 510 150 510 200 {lab=#net1}
N 480 200 510 200 {lab=#net1}
N 420 200 440 200 {lab=GND}
N 420 200 420 260 {lab=GND}
N 420 260 440 260 {lab=GND}
N 440 230 440 270 {lab=GND}
N 610 230 610 270 {lab=GND}
N 610 200 620 200 {lab=GND}
N 620 200 620 250 {lab=GND}
N 610 250 620 250 {lab=GND}
N 760 230 760 270 {lab=GND}
N 610 150 610 170 {lab=#net2}
N 610 70 610 90 {lab=#net3}
N 610 70 760 70 {lab=#net3}
N 760 70 760 80 {lab=#net3}
N 760 210 760 230 {lab=GND}
N 760 80 760 150 {lab=#net3}
N 510 200 570 200 {lab=#net1}
N 260 200 260 270 {lab=GND}
N 260 30 260 140 {lab=#net4}
N 260 30 440 30 {lab=#net4}
N 440 30 440 70 {lab=#net4}
C {devices/code.sym} 0 30 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {primitives/nfet.sym} 460 200 0 1 {name=M1 
model=nmos
W=10u
L=1u
m=1
}
C {devices/isource.sym} 440 100 0 0 {name=I0 value=0.8m}
C {primitives/nfet.sym} 590 200 0 0 {name=M2 
model=nmos
W=10u
L=1u
m=1
}
C {devices/gnd.sym} 440 270 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 610 270 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 760 180 0 0 {name=VDS value=2.5 savecurrent=false}
C {devices/gnd.sym} 760 270 0 0 {name=l3 lab=GND}
C {devices/ammeter.sym} 610 120 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {devices/vsource.sym} 260 170 0 0 {name=VDD value=5 savecurrent=false}
C {devices/gnd.sym} 260 270 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} 10 190 0 0 {name=s1 only_toplevel=false value="""
.option savecurrent
.control
op
save all
dc I0 0 1m 0.01m
plot I(Vmeas)
dc VDS 0 5 0.01
plot I(Vmeas)
show m
.endc
"""}
