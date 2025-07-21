v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -160 -10 -60 -10 {lab=A}
N 20 90 20 170 {lab=VSS}
N 50 -10 140 -10 {lab=Q}
N 20 -170 20 -110 {lab=VDD}
N 20 -80 30 -80 {lab=VDD}
N 30 -120 30 -80 {lab=VDD}
N 20 -120 30 -120 {lab=VDD}
N -60 -80 -20 -80 {lab=A}
N -60 -80 -60 60 {lab=A}
N -60 60 -20 60 {lab=A}
N 20 100 30 100 {lab=VSS}
N 20 60 30 60 {lab=VSS}
N 30 60 30 100 {lab=VSS}
N 20 -50 50 -50 {lab=Q}
N 50 -50 50 30 {lab=Q}
N 20 30 50 30 {lab=Q}
C {devices/ipin.sym} -160 -10 0 0 {name=p1 lab=A}
C {devices/opin.sym} 140 -10 0 0 {name=p2 lab=Q}
C {devices/iopin.sym} 20 -170 0 1 {name=p3 lab=VDD}
C {devices/iopin.sym} 20 170 0 0 {name=p4 lab=VSS}
C {primitives/pfet.sym} 0 -80 0 0 {name=M3 
model=pmos
W=10.0u
L=10.0u
m=1
}
C {primitives/nfet.sym} 0 60 0 0 {name=M4 
model=nmos
W=10.0u
L=10.0u
m=1
}
