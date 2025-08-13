v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 30 -150 30 -50 {lab=out}
N 30 -100 120 -100 {lab=out}
N 30 10 30 70 {lab=VSS}
N 30 -20 60 -20 {lab=VSS}
N 60 -20 60 40 {lab=VSS}
N 30 40 60 40 {lab=VSS}
N -70 -20 -10 -20 {lab=vin}
N -80 -180 -10 -180 {lab=vb}
N 30 -290 30 -210 {lab=vdd}
N 30 -180 60 -180 {lab=vdd}
N 60 -230 60 -180 {lab=vdd}
N 30 -230 60 -230 {lab=vdd}
C {primitives/nfet.sym} 10 -20 0 0 {name=M2
model=nmos
W=200u
L=2u
m=1
}
C {primitives/pfet.sym} 10 -180 0 0 {name=M1 
model=pmos
W=400u
L=2u
m=1
}
C {devices/iopin.sym} 30 -290 0 0 {name=p4 lab=vdd}
C {devices/opin.sym} 120 -100 0 0 {name=p6 lab=out}
C {devices/ipin.sym} -80 -180 0 0 {name=p5 lab=vb}
C {devices/ipin.sym} -70 -20 0 0 {name=p1 lab=vin}
C {devices/iopin.sym} 30 70 0 0 {name=p3 lab=VSS}
