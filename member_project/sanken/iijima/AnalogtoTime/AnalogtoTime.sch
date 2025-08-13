v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 260 -330 260 -270 {lab=#net1}
N 260 -300 480 -300 {lab=#net1}
N 480 -360 520 -360 {lab=#net1}
N 480 -360 480 -300 {lab=#net1}
N 480 -300 480 -240 {lab=#net1}
N 480 -240 520 -240 {lab=#net1}
N 560 -330 560 -270 {lab=Tout}
N 140 -240 220 -240 {lab=charge}
N 140 -360 220 -360 {lab=start}
N 140 -460 220 -460 {lab=ain}
N 260 -430 260 -390 {lab=#net2}
N 360 -480 390 -480 {lab=VCC}
N 360 -600 360 -480 {lab=VCC}
N 360 -600 420 -600 {lab=VCC}
N 420 -640 420 -600 {lab=VCC}
N 450 -480 480 -480 {lab=VCC}
N 480 -600 480 -480 {lab=VCC}
N 420 -600 480 -600 {lab=VCC}
N 420 -680 420 -640 {lab=VCC}
N 420 -440 420 -300 {lab=#net1}
N 260 -210 260 -160 {lab=GND}
N 260 -160 560 -160 {lab=GND}
N 560 -210 560 -160 {lab=GND}
N 400 -160 400 -100 {lab=GND}
N 560 -300 680 -300 {lab=Tout}
N 260 -600 260 -490 {lab=VCC}
N 260 -600 360 -600 {lab=VCC}
N 560 -600 560 -390 {lab=VCC}
N 480 -600 560 -600 {lab=VCC}
N 420 -540 420 -480 {lab=VCC}
N 360 -540 420 -540 {lab=VCC}
N 560 -360 620 -360 {lab=VCC}
N 620 -420 620 -360 {lab=VCC}
N 560 -420 620 -420 {lab=VCC}
N 560 -240 620 -240 {lab=GND}
N 620 -240 620 -180 {lab=GND}
N 560 -180 620 -180 {lab=GND}
N 260 -240 320 -240 {lab=GND}
N 320 -240 320 -180 {lab=GND}
N 260 -180 320 -180 {lab=GND}
N 260 -460 320 -460 {lab=VCC}
N 320 -520 320 -460 {lab=VCC}
N 260 -520 320 -520 {lab=VCC}
N 260 -360 320 -360 {lab=VCC}
N 320 -460 320 -360 {lab=VCC}
C {primitives/pfet.sym} 240 -460 0 0 {name=M1 
model=pmos
W=2u
L=200u
m=1
}
C {primitives/pfet.sym} 240 -360 0 0 {name=M2 
model=pmos
W=6u
L=1u
m=1
}
C {primitives/pfet.sym} 420 -460 3 0 {name=M4 
model=pmos
W=200u
L=200u
m=1
}
C {primitives/nfet.sym} 240 -240 0 0 {name=M3
model=nmos
W=2u
L=1u
m=1
}
C {primitives/nfet.sym} 540 -240 0 0 {name=M6 
model=nmos
W=2u
L=1u
m=1
}
C {devices/iopin.sym} 420 -680 0 0 {name=p1 lab=VCC}
C {devices/ipin.sym} 140 -460 0 0 {name=p2 lab=ain}
C {devices/opin.sym} 680 -300 0 0 {name=p3 lab=tout}
C {devices/iopin.sym} 400 -100 0 0 {name=p4 lab=GND}
C {devices/ipin.sym} 140 -360 0 0 {name=p5 lab=start}
C {devices/ipin.sym} 140 -240 0 0 {name=p6 lab=charge
}
C {primitives/pfet.sym} 540 -360 0 0 {name=M5 
model=pmos
W=6u
L=1u
m=1
}
