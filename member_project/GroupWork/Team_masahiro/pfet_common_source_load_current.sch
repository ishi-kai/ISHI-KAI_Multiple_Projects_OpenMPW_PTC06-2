v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 260 260 280 260 {lab=vbias}
N 320 290 320 340 {lab=vss}
N 320 300 330 300 {lab=vss}
N 260 110 280 110 {lab=vin}
N 320 30 320 80 {lab=vdd}
N 320 110 340 110 {lab=vdd}
N 340 60 340 110 {lab=vdd}
N 320 60 340 60 {lab=vdd}
N 320 140 320 230 {lab=vout}
N 320 190 370 190 {lab=vout}
N 350 260 350 300 {lab=vss}
N 330 300 350 300 {lab=vss}
N 320 260 350 260 {lab=vss}
C {devices/code.sym} 10 50 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {primitives/nfet.sym} 300 260 0 0 {name=M1 
model=nmos
W=80u
L=1.0u
m=1
}
C {primitives/pfet.sym} 300 110 0 0 {name=M2 
model=pmos
W=140u
L=1.0u
m=1
}
C {devices/iopin.sym} 320 340 0 0 {name=vss lab=vss}
C {devices/iopin.sym} 320 30 0 0 {name=vdd lab=vdd}
C {devices/ipin.sym} 260 110 0 0 {name=vin1 lab=vin}
C {devices/opin.sym} 370 190 0 0 {name=vout lab=vout}
C {devices/ipin.sym} 260 260 0 0 {name=vbias lab=vbias}
