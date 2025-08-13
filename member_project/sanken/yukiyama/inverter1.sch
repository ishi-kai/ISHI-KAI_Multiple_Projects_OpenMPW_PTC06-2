v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -50 -110 -50 60 {lab=Q}
N -50 -220 -50 -170 {lab=VDD}
N -50 120 -50 190 {lab=VSS}
N -50 140 -30 140 {lab=VSS}
N -30 90 -30 140 {lab=VSS}
N -50 90 -30 90 {lab=VSS}
N -50 -190 -30 -190 {lab=VDD}
N -30 -190 -30 -140 {lab=VDD}
N -140 -140 -90 -140 {lab=A}
N -140 -140 -140 90 {lab=A}
N -140 90 -90 90 {lab=A}
N -240 -30 -140 -30 {lab=A}
N -50 -30 70 -30 {lab=Q}
N -50 -140 -30 -140 {lab=VDD}
C {primitives/pfet.sym} -70 -140 0 0 {name=M1 
model=pmos
W=3.3u
L=1u
m=1
}
C {primitives/nfet.sym} -70 90 0 0 {name=M2 
model=nmos
W=2u
L=1u
m=1
}
C {devices/ipin.sym} -240 -30 0 0 {name=p1 lab=A}
C {devices/opin.sym} 70 -30 0 0 {name=p2 lab=Q}
C {devices/iopin.sym} -50 -220 0 1 {name=p3 lab=VDD}
C {devices/iopin.sym} -50 190 0 0 {name=p4 lab=VSS}
