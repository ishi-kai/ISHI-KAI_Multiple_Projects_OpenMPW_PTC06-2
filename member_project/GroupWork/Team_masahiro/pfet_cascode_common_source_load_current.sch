v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 400 310 420 310 {lab=vbias}
N 460 340 460 390 {lab=vss}
N 460 310 470 310 {lab=vss}
N 470 310 470 350 {lab=vss}
N 460 350 470 350 {lab=vss}
N 400 110 420 110 {lab=vin}
N 460 30 460 80 {lab=vdd}
N 460 110 480 110 {lab=vdd}
N 480 60 480 110 {lab=vdd}
N 460 60 480 60 {lab=vdd}
N 460 260 510 260 {lab=vout}
N 460 240 460 280 {lab=vout}
N 400 210 420 210 {lab=vbias2}
N 460 210 480 210 {lab=#net1}
N 480 170 480 210 {lab=#net1}
N 460 170 480 170 {lab=#net1}
N 460 140 460 180 {lab=#net1}
C {devices/code.sym} 10 50 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {primitives/nfet.sym} 440 310 0 0 {name=M1 
model=nmos
W=80u
L=1u
m=1
}
C {primitives/pfet.sym} 440 110 0 0 {name=M2 
model=pmos
W=160u
L=1u
m=1
}
C {devices/iopin.sym} 460 390 0 0 {name=vss lab=vss}
C {devices/iopin.sym} 460 30 0 0 {name=vdd lab=vdd}
C {devices/ipin.sym} 400 110 0 0 {name=vin1 lab=vin}
C {devices/opin.sym} 510 260 0 0 {name=vout lab=vout}
C {devices/ipin.sym} 400 310 0 0 {name=vbias lab=vbias}
C {primitives/pfet.sym} 440 210 0 0 {name=M3 
model=pmos
W=160u
L=1u
m=1
}
C {devices/ipin.sym} 400 210 0 0 {name=vbias1 lab=vbias2}
