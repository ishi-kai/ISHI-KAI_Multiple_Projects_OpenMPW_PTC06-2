v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 400 240 460 {lab=vss}
N 240 430 370 430 {lab=vss}
N 280 370 330 370 {lab=ib}
N 240 270 240 340 {lab=ib}
N 420 400 420 430 {lab=vss}
N 370 430 420 430 {lab=vss}
N 330 370 380 370 {lab=ib}
N 420 180 420 340 {lab=#net1}
N 460 150 530 150 {lab=#net1}
N 490 150 490 210 {lab=#net1}
N 420 210 490 210 {lab=#net1}
N 610 320 610 340 {lab=#net2}
N 610 400 610 450 {lab=vss}
N 560 330 610 330 {lab=#net2}
N 560 330 560 370 {lab=#net2}
N 560 370 570 370 {lab=#net2}
N 610 180 610 260 {lab=bias2}
N 530 150 570 150 {lab=#net1}
N 560 290 570 290 {lab=bias2}
N 560 240 560 290 {lab=bias2}
N 560 240 610 240 {lab=bias2}
N 610 370 660 370 {lab=vss}
N 660 370 660 430 {lab=vss}
N 610 430 660 430 {lab=vss}
N 610 290 660 290 {lab=vss}
N 660 290 660 370 {lab=vss}
N 420 80 420 120 {lab=vdd}
N 420 80 610 80 {lab=vdd}
N 610 80 610 120 {lab=vdd}
N 240 460 240 480 {lab=vss}
N 240 480 740 480 {lab=vss}
N 610 460 610 480 {lab=vss}
N 610 450 610 460 {lab=vss}
N 400 150 420 150 {lab=vdd}
N 400 100 400 150 {lab=vdd}
N 400 100 420 100 {lab=vdd}
N 610 150 630 150 {lab=vdd}
N 630 100 630 150 {lab=vdd}
N 610 100 630 100 {lab=vdd}
N 520 50 520 80 {lab=vdd}
N 350 340 350 370 {lab=ib}
N 610 210 650 210 {lab=bias2}
N 310 310 310 370 {lab=ib}
N 240 310 310 310 {lab=ib}
N 220 370 240 370 {lab=vss}
N 220 370 220 450 {lab=vss}
N 220 450 240 450 {lab=vss}
N 420 370 450 370 {lab=vss}
N 450 370 450 430 {lab=vss}
N 420 430 450 430 {lab=vss}
C {devices/code.sym} 0 40 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {primitives/nfet.sym} 260 370 0 1 {name=M1 
model=nmos
W=20u
L=2u
m=1
}
C {primitives/nfet.sym} 400 370 0 0 {name=M2 
model=nmos
W=20u
L=2u
m=1
}
C {primitives/pfet.sym} 440 150 0 1 {name=M3 
model=pmos
W=20u
L=2u
m=1
}
C {primitives/pfet.sym} 590 150 0 0 {name=M4 
model=pmos
W=20u
L=2u
m=1
}
C {primitives/nfet.sym} 590 290 0 0 {name=M5 
model=nmos
W=15u
L=1u
m=1
}
C {primitives/nfet.sym} 590 370 0 0 {name=M6 
model=nmos
W=15u
L=1u
m=1
}
C {devices/iopin.sym} 240 270 3 0 {name=p1 lab=ib}
C {devices/iopin.sym} 520 50 0 0 {name=p2 lab=vdd}
C {devices/iopin.sym} 740 480 0 0 {name=p3 lab=vss}
C {devices/iopin.sym} 350 340 3 0 {name=p4 lab=bias1}
C {devices/iopin.sym} 650 210 0 0 {name=p5 lab=bias2}
