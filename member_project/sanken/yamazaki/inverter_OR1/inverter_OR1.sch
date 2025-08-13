v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -30 -0 0 -0 {lab=A}
N 0 -50 -0 -0 {lab=A}
N -0 -50 20 -50 {lab=A}
N 0 50 20 50 {lab=A}
N -0 0 -0 50 {lab=A}
N 60 -20 60 20 {lab=Q}
N 60 80 60 130 {lab=VSS}
N 60 50 80 50 {lab=VSS}
N 80 50 80 100 {lab=VSS}
N 60 100 80 100 {lab=VSS}
N 60 0 110 -0 {lab=Q}
N 60 -120 60 -80 {lab=VDD}
N 60 -50 80 -50 {lab=VDD}
N 80 -100 80 -50 {lab=VDD}
N 60 -100 80 -100 {lab=VDD}
C {primitives/pfet.sym} 40 -50 0 0 {name=M1 
model=pmos
W=6u
L=1u
m=1
}
C {primitives/nfet.sym} 40 50 0 0 {name=M2 
model=nmos
W=2u
L=1u
m=1
}
C {devices/iopin.sym} 60 -120 0 0 {name=p3 lab=VDD}
C {devices/iopin.sym} 60 130 0 0 {name=p4 lab=VSS}
C {devices/ipin.sym} -30 0 0 0 {name=p1 lab=A}
C {devices/opin.sym} 110 0 0 0 {name=p2 lab=Q}
