v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 850 -310 860 -310 {
lab=out}
N 70 -450 70 -430 {
lab=vdd}
N 70 -400 80 -400 {
lab=vdd}
N 80 -440 80 -400 {
lab=vdd}
N 70 -440 80 -440 {
lab=vdd}
N 70 -150 90 -150 {
lab=vss}
N 90 -150 90 -20 {
lab=vss}
N 70 -20 90 -20 {
lab=vss}
N 70 -40 70 -20 {
lab=vss}
N 70 -70 80 -70 {
lab=vss}
N 80 -70 80 -20 {
lab=vss}
N 70 -120 70 -100 {
lab=#net1}
N 20 -110 70 -110 {
lab=#net1}
N 20 -110 20 -70 {
lab=#net1}
N 20 -70 30 -70 {
lab=#net1}
N 20 -190 70 -190 {
lab=#net2}
N 20 -190 20 -150 {
lab=#net2}
N 20 -150 30 -150 {
lab=#net2}
N 20 -400 30 -400 {
lab=#net3}
N 0 -400 20 -400 {
lab=#net3}
N 390 -150 410 -150 {lab=vinp}
N 390 -100 410 -100 {lab=vinn}
N 10 -400 10 -230 {lab=#net3}
N 220 -170 410 -170 {lab=#net3}
N 220 -220 220 -170 {lab=#net3}
N 10 -220 220 -220 {lab=#net3}
N 10 -230 10 -220 {lab=#net3}
N 70 -370 70 -180 {lab=#net2}
N 80 -20 860 -20 {lab=vss}
N 480 -90 480 -20 {lab=vss}
N 730 -80 730 -20 {lab=vss}
N 790 -110 860 -110 {lab=out}
N 550 -130 680 -130 {lab=#net4}
N 70 -450 890 -450 {lab=vdd}
N 70 -350 700 -350 {lab=#net2}
N 630 -310 670 -310 {lab=#net4}
N 630 -310 630 -130 {lab=#net4}
N 730 -140 750 -140 {lab=vdd}
N 750 -450 750 -140 {lab=vdd}
N 730 -310 790 -310 {lab=#net5}
N 860 -310 860 -110 {lab=out}
N 850 -110 910 -110 {lab=out}
N 680 -200 680 -150 {lab=#net3}
N 220 -200 680 -200 {lab=#net3}
N -80 -370 -80 -330 {lab=#net3}
N -40 -400 0 -400 {lab=#net3}
N -20 -400 -20 -350 {lab=#net3}
N -80 -350 -20 -350 {lab=#net3}
N -100 -400 -80 -400 {lab=vdd}
N -100 -450 -100 -400 {lab=vdd}
N -100 -450 -80 -450 {lab=vdd}
N -80 -450 -80 -430 {lab=vdd}
N -80 -450 70 -450 {lab=vdd}
N 480 -450 480 -180 {lab=vdd}
N -80 -270 -80 -20 {lab=vss}
N -240 -20 70 -20 {lab=vss}
N -280 -450 -100 -450 {lab=vdd}
N -240 -450 -240 -440 {lab=vdd}
N -240 -410 -220 -410 {lab=vdd}
N -220 -450 -220 -410 {lab=vdd}
N -240 -370 -240 -330 {lab=#net6}
N -240 -380 -240 -370 {lab=#net6}
N -240 -370 -180 -370 {lab=#net6}
N -180 -370 -180 -300 {lab=#net6}
N -200 -300 -120 -300 {lab=#net6}
N -240 -270 -240 -20 {lab=vss}
N -280 -300 -240 -300 {lab=vss}
N -280 -300 -280 -230 {lab=vss}
N -280 -230 -240 -230 {lab=vss}
N -450 -450 -280 -450 {lab=vdd}
N -450 -450 -450 -430 {lab=vdd}
N -450 -310 -450 -20 {lab=vss}
N -450 -20 -240 -20 {lab=vss}
N -330 -410 -280 -410 {lab=#net7}
N -330 -410 -330 -390 {lab=#net7}
N -370 -390 -330 -390 {lab=#net7}
N -80 -300 -50 -300 {lab=vss}
N -50 -300 -50 -240 {lab=vss}
N -80 -240 -50 -240 {lab=vss}
N 700 -310 700 -230 {lab=vss}
N 660 -230 700 -230 {lab=vss}
N 660 -230 660 -20 {lab=vss}
C {devices/ipin.sym} 390 -150 0 0 {name=p1 lab=vinp
}
C {devices/ipin.sym} 390 -100 0 0 {name=p2 lab=vinn
}
C {devices/opin.sym} 910 -110 0 0 {name=p4 lab=out}
C {devices/iopin.sym} 890 -450 0 0 {name=p5 lab=vdd}
C {devices/iopin.sym} 860 -20 0 0 {name=p6 lab=vss}
C {primitives/nfet.sym} 700 -330 1 0 {name=M2 
model=nmos
W=40u
L=2u
m=1
}
C {primitives/pfet.sym} 50 -400 0 0 {name=M6
model=pmos
W=10u
L=2.5u
m=1
}
C {primitives/nfet.sym} 50 -150 0 0 {name=M1 
model=nmos
W=10u
L=2u
m=1
}
C {primitives/nfet.sym} 50 -70 0 0 {name=M7
model=nmos
W=10u
L=2u
m=1
}
C {primitives/Poly_cap.sym} 820 -310 1 0 {name=C1 model=poly_cap W=18 L=18}
C {primitives/pfet.sym} -60 -400 0 1 {name=M3
model=pmos
W=10u
L=2.5u
m=1
}
C {ishi/diffwl500-4.sym} 480 -130 0 0 {name=x1}
C {ishi/source_g.sym} 730 -120 0 0 {name=x2}
C {primitives/nfet.sym} -100 -300 0 0 {name=M4 
model=nmos
W=5u
L=2u
m=1
}
C {primitives/nfet.sym} -220 -300 0 1 {name=M5 
model=nmos
W=5u
L=2u
m=1
}
C {primitives/pfet.sym} -260 -410 0 0 {name=M8
model=pmos
W=10u
L=2.5u
m=1
}
C {ishi/VthRef.sym} -430 -370 0 0 {name=x3}
