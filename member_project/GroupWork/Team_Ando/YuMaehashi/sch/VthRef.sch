v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 -170 -140 {}
T {Start Up} 140 -510 0 0 0.2 0.2 {}
T {8.5uA} 80 -500 0 0 0.2 0.2 {}
T {50uA} 390 -500 0 0 0.2 0.2 {}
T {50uA} 550 -500 0 0 0.2 0.2 {}
T {Vth Reference} 450 -510 0 0 0.2 0.2 {}
T {Dummy Elements for Layout} 350 80 0 0 0.2 0.2 {}
T {Dummy Elements for Layout} 710 -230 0 0 0.2 0.2 {}
T {Dummy Elements for Layout} 350 -540 0 0 0.2 0.2 {}
N 560 -480 560 -450 {lab=VDD}
N 60 -480 560 -480 {lab=VDD}
N 400 -480 400 -450 {lab=VDD}
N 400 -110 400 -20 {lab=VSS}
N 560 -50 560 -20 {lab=VSS}
N 60 -20 560 -20 {lab=VSS}
N 560 -170 560 -110 {lab=VGNOUT}
N 560 -390 560 -230 {lab=VGPOUT}
N 560 -420 580 -420 {lab=VDD}
N 580 -480 580 -420 {lab=VDD}
N 560 -480 580 -480 {lab=VDD}
N 380 -420 400 -420 {lab=VDD}
N 380 -480 380 -420 {lab=VDD}
N 440 -420 520 -420 {lab=VGPOUT}
N 500 -360 560 -360 {lab=VGPOUT}
N 500 -420 500 -360 {lab=VGPOUT}
N 400 -390 400 -170 {lab=netA}
N 440 -140 560 -140 {lab=VGNOUT}
N 400 -200 520 -200 {lab=netA}
N 380 -140 400 -140 {lab=VSS}
N 380 -140 380 -20 {lab=VSS}
N 560 -200 580 -200 {lab=VSS}
N 580 -200 580 -20 {lab=VSS}
N 560 -20 580 -20 {lab=VSS}
N 560 -140 740 -140 {lab=VGNOUT}
N 100 -480 100 -450 {lab=VDD}
N 100 -110 100 -20 {lab=VSS}
N 80 -140 100 -140 {lab=VSS}
N 80 -140 80 -20 {lab=VSS}
N 140 -140 160 -140 {lab=netB}
N 160 -200 160 -140 {lab=netB}
N 100 -200 160 -200 {lab=netB}
N 100 -260 200 -260 {lab=netB}
N 240 -230 240 -200 {lab=netA}
N 240 -260 260 -260 {lab=VSS}
N 560 -360 640 -360 {lab=VGPOUT}
N 80 -420 100 -420 {lab=VDD}
N 80 -480 80 -420 {lab=VDD}
N 100 -390 100 -350 {lab=#net1}
N 80 -320 100 -320 {lab=VDD}
N 80 -420 80 -320 {lab=VDD}
N 260 -260 260 -20 {lab=VSS}
N 100 -290 100 -260 {lab=netB}
N 100 -260 100 -200 {lab=netB}
N 100 -200 100 -170 {lab=netB}
N 140 -320 160 -320 {lab=netB}
N 160 -320 160 -260 {lab=netB}
N 140 -420 180 -420 {lab=VSS}
N 180 -420 180 -20 {lab=VSS}
N 560 -20 560 20 {lab=VSS}
N 500 -20 500 20 {lab=VSS}
N 370 -20 370 20 {lab=VSS}
N 340 -20 340 20 {lab=VSS}
N 310 -20 310 20 {lab=VSS}
N 340 60 370 60 {lab=VSS}
N 370 20 370 60 {lab=VSS}
N 680 -170 680 -140 {lab=VGNOUT}
N 680 -200 700 -200 {lab=VSS}
N 640 -200 640 -20 {lab=VSS}
N 580 -20 700 -20 {lab=VSS}
N 700 -200 700 -20 {lab=VSS}
N 680 -230 700 -230 {lab=VSS}
N 700 -230 700 -200 {lab=VSS}
N 280 -500 280 -480 {lab=VDD}
N 310 -500 310 -480 {lab=VDD}
N 340 -500 340 -480 {lab=VDD}
N 310 -540 340 -540 {lab=VDD}
N 340 -540 340 -500 {lab=VDD}
N 240 -480 240 -290 {lab=VDD}
N 240 -200 400 -200 {lab=netA}
C {primitives/HR_poly.sym} 560 -80 0 0 {name=R1 model=HR_poly W=4 L=24}
C {primitives/nfet.sym} 420 -140 0 1 {name=M1 
model=nmos
W=2u
L=4u
m=2
}
C {primitives/nfet.sym} 540 -200 0 0 {name=M2 
model=nmos
W=10u
L=2u
m=8
}
C {primitives/pfet.sym} 420 -420 0 1 {name=M3 
model=pmos
W=10u
L=2.5u
m=10
}
C {primitives/pfet.sym} 540 -420 0 0 {name=M4 
model=pmos
W=10u
L=2.5u
m=10
}
C {devices/iopin.sym} 60 -480 0 1 {name=p1 lab=VDD}
C {devices/iopin.sym} 60 -20 0 1 {name=p2 lab=VSS}
C {devices/opin.sym} 740 -140 0 0 {name=p3 lab=VGNOUT}
C {primitives/nfet.sym} 120 -140 0 1 {name=M5 
model=nmos
W=2u
L=10u
m=1
}
C {primitives/nfet.sym} 220 -260 0 0 {name=M6 
model=nmos
W=2u
L=4u
m=2
}
C {devices/opin.sym} 640 -360 0 0 {name=p4 lab=VGPOUT}
C {devices/lab_wire.sym} 420 -200 0 1 {name=p5 sig_type=std_logic lab=netA}
C {primitives/pfet.sym} 120 -420 0 1 {name=M7 
model=pmos
W=2u
L=10u
m=1
}
C {primitives/pfet.sym} 120 -320 0 1 {name=M8 
model=pmos
W=2u
L=10u
m=1
}
C {primitives/HR_poly.sym} 530 20 1 0 {name=R3 model=HR_poly W=44 L=24}
C {primitives/nfet.sym} 340 40 1 1 {name=M9 
model=nmos
W=2u
L=2u
m=1
}
C {primitives/nfet.sym} 660 -200 0 0 {name=M10 
model=nmos
W=10u
L=2u
m=2
}
C {primitives/pfet.sym} 310 -520 1 0 {name=M11 
model=pmos
W=10u
L=2.5u
m=2
}
C {devices/lab_wire.sym} 100 -260 0 0 {name=p6 sig_type=std_logic lab=netB}
