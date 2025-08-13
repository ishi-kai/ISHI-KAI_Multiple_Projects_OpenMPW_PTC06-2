v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -100 -50 -10 -50 {lab=Q}
N -10 -50 -10 110 {lab=Q}
N -100 110 -10 110 {lab=Q}
N -220 -80 -140 -80 {lab=A}
N -220 -80 -220 140 {lab=A}
N -220 140 -140 140 {lab=A}
N -290 30 -220 30 {lab=A}
N -10 30 60 30 {lab=Q}
N -100 -190 -100 -110 {lab=VDD}
N -100 170 -100 250 {lab=VSS}
N -100 190 -70 190 {lab=VSS}
N -70 140 -70 190 {lab=VSS}
N -100 140 -70 140 {lab=VSS}
N -100 -80 -50 -80 {lab=VDD}
N -50 -140 -50 -80 {lab=VDD}
N -100 -140 -50 -140 {lab=VDD}
C {primitives/pfet.sym} -120 -80 0 0 {name=M1 
model=pmos
W=20.0u
L=1.0u
m=1
}
C {primitives/nfet.sym} -120 140 0 0 {name=M2 
model=nmos
W=10.0u
L=1.0u
m=1
}
C {devices/ipin.sym} -290 30 0 0 {name=p1 lab=A
}
C {devices/opin.sym} 60 30 0 0 {name=p2 lab=Q}
C {devices/iopin.sym} -100 -190 0 0 {name=p5 lab=VDD
}
C {devices/iopin.sym} -100 250 0 0 {name=p6 lab=VSS
}
