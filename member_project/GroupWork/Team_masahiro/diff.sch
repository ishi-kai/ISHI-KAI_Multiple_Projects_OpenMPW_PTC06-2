v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 320 150 320 230 {lab=#net1}
N 510 150 510 230 {lab=vout}
N 320 60 320 90 {lab=vdd}
N 320 60 510 60 {lab=vdd}
N 510 60 510 90 {lab=vdd}
N 360 120 470 120 {lab=#net1}
N 420 120 420 180 {lab=#net1}
N 320 180 420 180 {lab=#net1}
N 510 180 600 180 {lab=vout}
N 320 290 320 320 {lab=#net2}
N 320 320 510 320 {lab=#net2}
N 510 290 510 320 {lab=#net2}
N 420 320 420 340 {lab=#net2}
N 290 120 320 120 {lab=vdd}
N 290 80 290 120 {lab=vdd}
N 290 80 320 80 {lab=vdd}
N 510 120 540 120 {lab=vdd}
N 540 80 540 120 {lab=vdd}
N 510 80 540 80 {lab=vdd}
N 420 370 460 370 {lab=vss}
N 420 20 420 60 {lab=vdd}
N 420 400 420 430 {lab=vss}
N 260 260 280 260 {lab=vinn}
N 550 260 570 260 {lab=vinp}
N 370 370 380 370 {lab=vbias}
N 420 410 460 410 {lab=vss}
N 460 370 460 410 {lab=vss}
N 320 260 340 260 {lab=vss}
N 490 260 510 260 {lab=vss}
N 340 260 490 260 {lab=vss}
N 460 260 460 370 {lab=vss}
C {devices/code.sym} 20 30 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {primitives/nfet.sym} 300 260 0 0 {name=M1 
model=nmos
W=100u
L=2u
m=1
}
C {primitives/nfet.sym} 530 260 0 1 {name=M2 
model=nmos
W=100u
L=2u
m=1
}
C {primitives/nfet.sym} 400 370 0 0 {name=M3 
model=nmos
W=20u
L=2u
m=1
}
C {primitives/pfet.sym} 340 120 0 1 {name=M4 
model=pmos
W=35u
L=2u
m=1
}
C {primitives/pfet.sym} 490 120 0 0 {name=M5 
model=pmos
W=35u
L=2u
m=1
}
C {devices/iopin.sym} 420 430 0 0 {name=vss lab=vss}
C {devices/iopin.sym} 420 20 0 0 {name=vdd lab=vdd}
C {devices/ipin.sym} 260 260 0 0 {name=vinn1 lab=vinn}
C {devices/ipin.sym} 570 260 0 1 {name=vinp lab=vinp}
C {devices/opin.sym} 600 180 0 0 {name=vout lab=vout}
C {devices/ipin.sym} 370 370 0 0 {name=vbias lab=vbias}
