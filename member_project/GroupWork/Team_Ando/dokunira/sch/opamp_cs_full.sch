v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 480 200 480 390 {
lab=#net1}
N 480 120 480 140 {
lab=vdd}
N 480 170 490 170 {
lab=vdd}
N 490 130 490 170 {
lab=vdd}
N 480 130 490 130 {
lab=vdd}
N 480 420 500 420 {
lab=vss}
N 500 420 500 550 {
lab=vss}
N 480 550 500 550 {
lab=vss}
N 480 530 480 550 {
lab=vss}
N 480 500 490 500 {
lab=vss}
N 490 500 490 550 {
lab=vss}
N 480 450 480 470 {
lab=#net2}
N 430 460 480 460 {
lab=#net2}
N 430 460 430 500 {
lab=#net2}
N 430 500 440 500 {
lab=#net2}
N 430 380 480 380 {
lab=#net1}
N 430 380 430 420 {
lab=#net1}
N 430 420 440 420 {
lab=#net1}
N 150 380 160 380 {
lab=vss}
N 150 380 150 420 {
lab=vss}
N 280 330 290 330 {
lab=vss}
N 160 120 160 140 {
lab=vdd}
N 160 120 280 120 {
lab=vdd}
N 280 120 280 140 {
lab=vdd}
N 150 170 160 170 {
lab=vdd}
N 150 130 150 170 {
lab=vdd}
N 150 130 160 130 {
lab=vdd}
N 280 170 290 170 {
lab=vdd}
N 290 130 290 170 {
lab=vdd}
N 280 130 290 130 {
lab=vdd}
N 200 170 240 170 {
lab=#net3}
N 230 170 230 210 {
lab=#net3}
N 150 420 160 420 {
lab=vss}
N 280 360 280 430 {
lab=#net4}
N 160 330 240 330 {
lab=#net5}
N 200 380 280 380 {
lab=#net4}
N 860 360 860 420 {
lab=#net6}
N 660 360 660 420 {
lab=#net7}
N 700 450 820 450 {
lab=#net7}
N 660 480 660 510 {
lab=vss}
N 660 510 860 510 {
lab=vss}
N 860 480 860 510 {
lab=vss}
N 660 390 760 390 {
lab=#net7}
N 760 390 760 450 {
lab=#net7}
N 660 280 860 280 {
lab=#net8}
N 860 280 860 300 {
lab=#net8}
N 760 510 760 540 {
lab=vss}
N 660 280 660 300 {
lab=#net8}
N 650 450 660 450 {
lab=vss}
N 650 450 650 490 {
lab=vss}
N 650 490 660 490 {
lab=vss}
N 860 450 870 450 {
lab=vss}
N 870 450 870 490 {
lab=vss}
N 860 490 870 490 {
lab=vss}
N 660 330 670 330 {
lab=#net8}
N 670 290 670 330 {
lab=#net8}
N 660 290 670 290 {
lab=#net8}
N 850 330 860 330 {
lab=#net8}
N 850 290 850 330 {
lab=#net8}
N 850 290 860 290 {
lab=#net8}
N 590 330 620 330 {
lab=vinn}
N 900 330 940 330 {
lab=vinp}
N 760 540 760 550 {
lab=vss}
N 1240 330 1280 330 {
lab=out}
N 1240 390 1250 390 {
lab=vss}
N 1250 390 1250 430 {
lab=vss}
N 1240 430 1250 430 {
lab=vss}
N 1240 550 1290 550 {
lab=vss}
N 1200 170 1200 220 {
lab=#net3}
N 760 120 760 140 {
lab=vdd}
N 760 170 770 170 {
lab=vdd}
N 770 130 770 170 {
lab=vdd}
N 760 130 770 130 {
lab=vdd}
N 1240 120 1240 140 {
lab=vdd}
N 1240 170 1250 170 {
lab=vdd}
N 1250 130 1250 170 {
lab=vdd}
N 1240 130 1250 130 {
lab=vdd}
N 720 170 720 220 {
lab=#net3}
N 760 200 760 280 {
lab=#net8}
N 280 120 480 120 {lab=vdd}
N 1170 290 1240 290 {lab=out}
N 1080 290 1110 290 {lab=#net9}
N 1020 290 1020 390 {lab=#net6}
N 1050 290 1050 550 {lab=vss}
N 480 250 1050 250 {lab=#net1}
N 440 170 440 220 {lab=#net3}
N 160 410 160 550 {lab=vss}
N 280 490 280 550 {lab=vss}
N 290 330 290 550 {lab=vss}
N 160 200 160 350 {lab=#net5}
N 280 220 1200 220 {lab=#net3}
N 860 390 1200 390 {lab=#net6}
N 1240 420 1240 550 {lab=vss}
N 1240 200 1240 360 {lab=out}
N 760 120 1290 120 {lab=vdd}
N 480 120 760 120 {lab=vdd}
N 160 550 1240 550 {lab=vss}
N 280 200 280 300 {lab=#net3}
N 230 210 280 210 {lab=#net3}
C {devices/iopin.sym} 1290 120 0 0 {name=p5 lab=vdd}
C {devices/iopin.sym} 1290 550 0 0 {name=p6 lab=vss}
C {primitives/nfet.sym} 1050 270 1 0 {name=M12
model=nmos
W=16u
L=1.6u
m=1
}
C {primitives/pfet.sym} 460 170 0 0 {name=M9
model=pmos
W=32u
L=1.6u
m=1
}
C {primitives/nfet.sym} 460 420 0 0 {name=M10
model=nmos
W=16u
L=1.6u
m=1
}
C {primitives/nfet.sym} 460 500 0 0 {name=M11
model=nmos
W=16u
L=1.6u
m=1
}
C {primitives/HR_poly.sym} 280 460 0 0 {name=R1 model=HR_poly W=2.0 L=20}
C {primitives/pfet.sym} 260 170 0 0 {name=M8
model=pmos
W=32u
L=1.6u
m=1
}
C {primitives/pfet.sym} 180 170 0 1 {name=M13
model=pmos
W=32u
L=1.6u
m=1
}
C {primitives/nfet.sym} 260 330 0 0 {name=M15
model=nmos
W=16u
L=1.6u
m=1
}
C {primitives/nfet.sym} 180 380 0 1 {name=M14
model=nmos
W=16u
L=1.6u
m=1
}
C {devices/ipin.sym} 590 330 0 0 {name=p9 lab=vinn}
C {devices/ipin.sym} 940 330 0 1 {name=p3 lab=vinp}
C {primitives/pfet.sym} 740 170 0 0 {name=M5
model=pmos
W=64u
L=1.6u
m=1
}
C {primitives/pfet.sym} 640 330 0 0 {name=M1
model=pmos
W=128u
L=1.6u
m=1
}
C {primitives/pfet.sym} 880 330 0 1 {name=M2
model=pmos
W=128u
L=1.6u
m=1
}
C {primitives/nfet.sym} 680 450 0 1 {name=M3 
model=nmos
W=16u
L=1.6u
m=1
}
C {primitives/nfet.sym} 840 450 0 0 {name=M4
model=nmos
W=16u
L=1.6u
m=1
}
C {devices/opin.sym} 1280 330 0 0 {name=p7 lab=out}
C {primitives/pfet.sym} 1220 170 0 0 {name=M6
model=pmos
W=256u
L=1.6u
m=1
}
C {primitives/nfet.sym} 1220 390 0 0 {name=M7
model=nmos
W=128u
L=1.6u
m=1
}
C {primitives/Poly_cap.sym} 1140 290 1 0 {name=C1 model=Poly_cap W=20 L=22}
