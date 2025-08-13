v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 420 280 500 280 {lab=#net1}
N 640 280 640 320 {lab=GND}
N 540 310 540 320 {lab=GND}
N 540 320 640 320 {lab=GND}
N 540 210 540 250 {lab=#net2}
N 540 340 540 350 {lab=GND}
N 640 210 640 220 {lab=#net2}
N 420 210 550 210 {lab=#net2}
N 420 210 420 220 {lab=#net2}
N 540 280 560 280 {lab=#net2}
N 560 240 560 280 {lab=#net2}
N 540 240 560 240 {lab=#net2}
N 540 320 540 340 {lab=GND}
N 550 210 640 210 {lab=#net2}
C {devices/code.sym} 180 170 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {primitives/pfet.sym} 520 280 0 0 {name=M1 
model=pmos
W=10u
L=1u
m=1
}
C {devices/vsource.sym} 420 250 0 0 {name=vgs value=1.3 savecurrent=false}
C {devices/vsource.sym} 640 250 0 0 {name=Vds value=2.5 savecurrent=false}
C {devices/gnd.sym} 540 350 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 170 330 0 0 {name=s1
only_toplevel=false
value="
.option savecurrent
.control
op
show m
save all
save @m1[gds]
save @m1[gm]
save @m1[vth]
dc vgs 0 5.0 0.01
plot -i(vds)
plot @m1[vth]
plot @m1[gm]
plot @m1[gds]
plot -@m1[gm]/i(vds)
.endc
"}
