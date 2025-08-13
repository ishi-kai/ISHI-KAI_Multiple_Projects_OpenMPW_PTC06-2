v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -120 0 -80 0 {lab=A}
N -80 -50 -80 0 {lab=A}
N -80 -50 -40 -50 {lab=A}
N -80 0 -80 50 {lab=A}
N -80 50 -40 50 {lab=A}
N -0 -50 20 -50 {lab=VDD}
N 20 -90 20 -50 {lab=VDD}
N 0 -90 20 -90 {lab=VDD}
N 0 -140 0 -80 {lab=VDD}
N -0 80 0 140 {lab=VSS}
N -0 -20 40 -20 {lab=Q}
N 40 -20 40 20 {lab=Q}
N 0 20 40 20 {lab=Q}
N 40 -0 90 0 {lab=Q}
N -0 50 20 50 {lab=VSS}
N 20 50 20 90 {lab=VSS}
N 0 90 20 90 {lab=VSS}
C {primitives/pfet.sym} -20 -50 0 0 {name=M1 
model=pmos
W=6u
L=1u
m=1
}
C {primitives/nfet.sym} -20 50 0 0 {name=M2 
model=nmos
W=2u
L=1u
m=1
}
C {devices/opin.sym} 90 0 0 0 {name=p1 lab=Q}
C {devices/ipin.sym} -120 0 0 0 {name=p2 lab=A}
C {devices/iopin.sym} 0 -140 0 1 {name=p3 lab=VDD}
C {devices/iopin.sym} 0 140 0 0 {name=p4 lab=VSS}
