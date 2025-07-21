v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -70 10 -20 10 {lab=A}
N -20 -40 -20 10 {lab=A}
N -20 -60 20 -60 {lab=A}
N -20 -60 -20 -40 {lab=A}
N 60 -140 60 -90 {lab=VDD}
N 60 -100 80 -100 {lab=VDD}
N 80 -100 80 -60 {lab=VDD}
N 60 -60 80 -60 {lab=VDD}
N -20 10 -20 70 {lab=A}
N -20 70 20 70 {lab=A}
N 60 -30 60 40 {lab=Q}
N 60 10 170 10 {lab=Q}
N 60 70 80 70 {lab=VSS}
N 60 100 60 160 {lab=VSS}
N 80 70 80 110 {lab=VSS}
N 60 110 80 110 {lab=VSS}
C {.xschem/symbols/OR1/primitives/nfet.sym} 40 70 0 0 {name=M2 
model=nmos
W=3.2u
L=1.4u
m=1
}
C {devices/ipin.sym} -70 10 0 0 {name=p1 lab=A}
C {devices/opin.sym} 170 10 0 0 {name=p2 lab=Q}
C {devices/iopin.sym} 60 -140 0 0 {name=p3 lab=VDD}
C {devices/iopin.sym} 60 160 0 0 {name=p4 lab=VSS}
C {.xschem/symbols/OR1/primitives/pfet.sym} 40 -60 0 0 {name=M1 
model=pmos
W=8.2u
L=1.6u
m=1
}
