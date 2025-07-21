v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 20 -190 30 -190 {lab=VDD}
N 30 -190 30 -130 {lab=VDD}
N 30 -100 50 -100 {lab=VDD}
N 50 -150 50 -100 {lab=VDD}
N 30 -150 50 -150 {lab=VDD}
N -110 -30 -40 -30 {lab=A}
N -40 -100 -40 -30 {lab=A}
N -40 -100 -10 -100 {lab=A}
N -40 60 -10 60 {lab=A}
N -40 -30 -40 60 {lab=A}
N 30 -70 30 -50 {lab=Q}
N 30 10 30 30 {lab=Q}
N 30 90 30 140 {lab=VSS}
N 30 -50 70 -50 {lab=Q}
N 70 -50 70 10 {lab=Q}
N 30 10 70 10 {lab=Q}
N 70 -30 120 -30 {lab=Q}
N 30 60 50 60 {lab=VSS}
N 50 60 50 110 {lab=VSS}
N 30 110 50 110 {lab=VSS}
C {.xschem/symbols/OR1/primitives/pfet.sym} 10 -100 0 0 {name=M1 
model=pmos
W=3.3u
L=1u
m=1
}
C {.xschem/symbols/OR1/primitives/nfet.sym} 10 60 0 0 {name=M2 
model=nmos
W=2u
L=1u
m=1
}
C {devices/iopin.sym} 20 -190 2 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 30 140 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -110 -30 0 0 {name=p3 lab=A}
C {devices/opin.sym} 120 -30 0 0 {name=p4 lab=Q}
