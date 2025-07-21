v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 70 -330 100 -330 {lab=A}
N 70 -330 70 -270 {lab=A}
N 70 -230 110 -230 {lab=A}
N 170 -380 170 -330 {lab=VDD}
N 140 -380 140 -360 {lab=VDD}
N 140 -380 170 -380 {lab=VDD}
N 150 -230 180 -230 {lab=VSS}
N 180 -230 180 -190 {lab=VSS}
N 150 -190 180 -190 {lab=VSS}
N 150 -260 210 -260 {lab=Q}
N 140 -300 210 -300 {lab=Q}
N 210 -300 210 -280 {lab=Q}
N 210 -280 210 -260 {lab=Q}
N 70 -270 70 -230 {lab=A}
N 150 -190 150 -80 {lab=VSS}
N 140 -460 140 -380 {lab=VDD}
N 40 -270 70 -270 {lab=A}
N 150 -200 150 -190 {lab=VSS}
N 210 -280 270 -280 {lab=Q}
N 140 -330 170 -330 {lab=VDD}
C {primitives/nfet.sym} 130 -230 0 0 {name=M1 
model=nmos
W=2u
L=1u
m=1
}
C {primitives/pfet.sym} 120 -330 0 0 {name=M2 
model=pmos
W=6u
L=1u
m=1
}
C {devices/ipin.sym} 270 -280 2 0 {name=p1 lab=Q}
C {devices/ipin.sym} 40 -270 0 0 {name=p2 lab=A}
C {devices/iopin.sym} 150 -80 0 0 {name=p3 lab=VSS}
C {devices/iopin.sym} 140 -460 2 0 {name=p4 lab=VDD}
