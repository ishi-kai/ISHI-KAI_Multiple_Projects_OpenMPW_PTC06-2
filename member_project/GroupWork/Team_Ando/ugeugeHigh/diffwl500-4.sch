v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 120 110 170 110 {lab=vinn}
N 310 40 310 60 {lab=#net1}
N 210 60 210 80 {lab=#net1}
N 210 60 390 60 {lab=#net1}
N 390 60 390 80 {lab=#net1}
N 210 140 210 200 {lab=#net2}
N 390 140 390 200 {lab=out}
N 210 110 230 110 {lab=#net1}
N 230 70 230 110 {lab=#net1}
N 210 70 230 70 {lab=#net1}
N 370 110 390 110 {lab=#net1}
N 370 70 370 110 {lab=#net1}
N 370 70 390 70 {lab=#net1}
N 430 110 470 110 {lab=vinp}
N 250 230 350 230 {lab=#net2}
N 210 170 260 170 {lab=#net2}
N 260 170 280 170 {lab=#net2}
N 280 170 280 230 {lab=#net2}
N 210 260 210 280 {lab=VSS}
N 210 280 390 280 {lab=VSS}
N 390 260 390 280 {lab=VSS}
N 290 280 290 320 {lab=VSS}
N 290 320 310 320 {lab=VSS}
N 180 230 210 230 {lab=VSS}
N 180 230 180 270 {lab=VSS}
N 180 270 210 270 {lab=VSS}
N 310 -50 320 -50 {lab=vdd}
N 310 -50 310 -20 {lab=vdd}
N 310 10 340 10 {lab=vdd}
N 340 -30 340 10 {lab=vdd}
N 330 -30 340 -30 {lab=vdd}
N 310 -30 330 -30 {lab=vdd}
N 230 10 270 10 {lab=vb}
N 390 170 460 170 {lab=out}
N 390 270 420 270 {lab=VSS}
N 420 260 420 270 {lab=VSS}
N 420 230 420 260 {lab=VSS}
N 390 230 420 230 {lab=VSS}
C {devices/code.sym} -130 -80 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {primitives/pfet.sym} 290 10 0 0 {name=M5
model=pmos
W=40u
L=2u
m=1
}
C {primitives/nfet.sym} 230 230 0 1 {name=M3
model=nmos
W=10u
L=2u
m=1
}
C {primitives/pfet.sym} 190 110 0 0 {name=M1
model=pmos
W=200u
L=2u
m=1
}
C {primitives/pfet.sym} 410 110 0 1 {name=M2
model=pmos
W=200u
L=2u
m=1
}
C {primitives/nfet.sym} 370 230 0 0 {name=M4
model=nmos
W=10u
L=2u
m=1
}
C {devices/ipin.sym} 120 110 0 0 {name=p1 lab=vinn}
C {devices/ipin.sym} 470 110 2 0 {name=p2 lab=vinp}
C {devices/iopin.sym} 310 320 0 0 {name=p3 lab=VSS}
C {devices/iopin.sym} 320 -50 0 0 {name=p4 lab=vdd}
C {devices/ipin.sym} 230 10 0 0 {name=p5 lab=vb}
C {devices/opin.sym} 460 170 0 0 {name=p6 lab=out}
