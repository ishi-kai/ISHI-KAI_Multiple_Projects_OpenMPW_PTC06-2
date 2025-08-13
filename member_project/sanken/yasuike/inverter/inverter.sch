v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 100 -60 100 -40 {lab=VDD}
N 100 -10 120 -10 {lab=VDD}
N 120 -60 120 -10 {lab=VDD}
N 100 -60 120 -60 {lab=VDD}
N 100 -90 100 -60 {lab=VDD}
N 100 20 140 20 {lab=Q}
N 140 20 140 80 {lab=Q}
N 100 80 140 80 {lab=Q}
N 30 -10 60 -10 {lab=A}
N 30 -10 30 110 {lab=A}
N 30 110 60 110 {lab=A}
N -40 50 30 50 {lab=A}
N 100 140 100 200 {lab=VSS}
N 100 110 120 110 {lab=VSS}
N 120 110 120 160 {lab=VSS}
N 100 160 120 160 {lab=VSS}
N 140 50 200 50 {lab=Q}
C {primitives/pfet.sym} 80 -10 0 0 {name=M1 
model=pmos
W=3.3u
L=1u
m=1
}
C {primitives/nfet.sym} 80 110 0 0 {name=M2 
model=nmos
W=2u
L=1u
m=1
}
C {devices/opin.sym} 200 50 0 0 {name=p1 lab=Q}
C {devices/ipin.sym} -40 50 0 0 {name=p2 lab=A}
C {devices/iopin.sym} 100 -90 0 0 {name=p3 lab=VDD}
C {devices/iopin.sym} 100 200 0 0 {name=p4 lab=VSS}
