v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -90 -190 -90 -150 {lab=VDD}
N 70 -190 70 -150 {lab=VDD}
N -90 -90 -90 -40 {lab=VOUT}
N -90 -40 70 -40 {lab=VOUT}
N 70 -90 70 -40 {lab=VOUT}
N -10 -40 -10 -0 {lab=VOUT}
N -10 60 -10 130 {lab=#net1}
N 0 -120 30 -120 {lab=B}
N 0 -120 0 -70 {lab=B}
N -260 -70 0 -70 {lab=B}
N -220 -120 -220 30 {lab=A}
N -220 30 -50 30 {lab=A}
N -260 -120 -130 -120 {lab=A}
N -170 -70 -170 160 {lab=B}
N -170 160 -50 160 {lab=B}
N -90 -190 70 -190 {lab=VDD}
N -90 -120 -50 -120 {lab=VDD}
N -50 -170 -50 -120 {lab=VDD}
N -90 -170 -50 -170 {lab=VDD}
N 70 -120 100 -120 {lab=VDD}
N 100 -170 100 -120 {lab=VDD}
N 70 -170 100 -170 {lab=VDD}
N -10 30 60 30 {lab=VSS}
N -10 160 20 160 {lab=VSS}
N 20 160 20 250 {lab=VSS}
N -10 250 20 250 {lab=VSS}
N -90 -270 -90 -190 {lab=VDD}
N 70 -40 160 -40 {lab=VOUT}
N 20 250 60 250 {lab=VSS}
N 60 30 60 250 {lab=VSS}
N -10 190 -10 280 {lab=VSS}
C {primitives/nfet.sym} -30 160 0 0 {name=M2
model=nmos
W=2u
L=1u
m=1
}
C {primitives/pfet.sym} -110 -120 0 0 {name=M1 
model=pmos
W=6u
L=1u
m=1
}
C {primitives/nfet.sym} -30 30 0 0 {name=M3
model=nmos
W=2u
L=1u
m=1
}
C {primitives/pfet.sym} 50 -120 0 0 {name=M4 
model=pmos
W=6u
L=1u
m=1
}
C {devices/iopin.sym} -90 -270 0 1 {name=p3 lab=VDD}
C {devices/iopin.sym} -10 280 0 1 {name=p5 lab=VSS}
C {devices/opin.sym} 160 -40 0 0 {name=p4 lab=VOUT}
C {devices/ipin.sym} -260 -120 0 0 {name=p2 lab=A}
C {devices/ipin.sym} -260 -70 0 0 {name=p1 lab=B}
