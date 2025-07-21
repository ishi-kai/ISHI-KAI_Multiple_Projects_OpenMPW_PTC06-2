v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 -130 40 -60 {lab=VDD}
N 40 120 40 190 {lab=VSS}
N -40 -30 0 -30 {lab=A}
N -40 -30 -40 90 {lab=A}
N -40 90 -0 90 {lab=A}
N -130 30 -40 30 {lab=A}
N 40 -30 60 -30 {lab=VDD}
N 60 -80 60 -30 {lab=VDD}
N 40 -80 60 -80 {lab=VDD}
N 40 90 60 90 {lab=VSS}
N 60 90 60 140 {lab=VSS}
N 40 140 60 140 {lab=VSS}
N 40 0 90 0 {lab=Q}
N 90 -0 90 60 {lab=Q}
N 40 60 90 60 {lab=Q}
N 90 30 180 30 {lab=Q}
C {primitives/pfet.sym} 20 -30 0 0 {name=M1 
model=pmos
W=6.0u
L=1.0u
m=1
}
C {primitives/nfet.sym} 20 90 0 0 {name=M2 
model=nmos
W=2.0u
L=1.0u
m=1
}
C {devices/iopin.sym} 40 -130 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 40 190 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -130 30 0 0 {name=p3 lab=A}
C {devices/opin.sym} 180 30 0 0 {name=p4 lab=Q}
