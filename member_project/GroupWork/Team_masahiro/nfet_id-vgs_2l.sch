v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 380 310 380 340 {lab=GND}
N 380 270 380 310 {lab=GND}
N 280 310 280 330 {lab=GND}
N 280 330 380 330 {lab=GND}
N 520 300 520 320 {lab=GND}
N 380 320 520 320 {lab=GND}
N 520 170 520 240 {lab=#net1}
N 380 170 520 170 {lab=#net1}
N 380 170 380 210 {lab=#net1}
N 380 240 400 240 {lab=GND}
N 400 240 400 280 {lab=GND}
N 380 280 400 280 {lab=GND}
N 280 240 340 240 {lab=#net2}
N 280 240 280 250 {lab=#net2}
C {devices/code.sym} -10 30 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {primitives/nfet.sym} 360 240 0 0 {name=M1 
model=nmos
W=20u
L=10u
m=1
}
C {devices/gnd.sym} 380 340 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 280 280 0 0 {name=Vgs value=2.5 savecurrent=false}
C {devices/vsource.sym} 520 270 0 0 {name=Vds value=2.5 savecurrent=false}
C {devices/code_shown.sym} 0 240 0 0 {name=s1 only_toplevel=false value="
.option savecurrent
.control
op
show m
ave all
save @m1[gds]
save @m1[gm]
save @m1[vth]
dc vgs 0.01 5.0 0.01
plot -i(vds)
plot @m1[vth]
plot @m1[gm]
plot @m1[gds]
plot -@m1[gm]/i(vds)
.endc
"}
