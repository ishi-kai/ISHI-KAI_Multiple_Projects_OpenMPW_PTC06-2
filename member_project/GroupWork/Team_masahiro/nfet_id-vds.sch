v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 230 60 230 70 {lab=GND}
N 230 70 350 70 {lab=GND}
N 320 70 320 90 {lab=GND}
N 450 60 450 70 {lab=GND}
N 350 70 450 70 {lab=GND}
N 450 -20 450 0 {lab=#net1}
N 350 -10 350 70 {lab=GND}
N 230 -40 230 0 {lab=#net2}
N 230 -40 310 -40 {lab=#net2}
N 350 -90 350 -70 {lab=#net1}
N 350 -90 450 -90 {lab=#net1}
N 450 -90 450 -20 {lab=#net1}
N 350 -40 360 -40 {lab=GND}
N 360 -40 360 0 {lab=GND}
N 350 0 360 0 {lab=GND}
C {devices/code.sym} -50 -250 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {devices/code_shown.sym} -90 -60 0 0 {name=s1 
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
dc vds 0.01 5.0 0.01
plot -i(vds)
plot @m1[vth]
plot @m1[gm]
plot @m1[gds]
plot @m1[gm]/@m1[gds]
plot 1/@m1[gds]
plot -@m1[gm]/i(vds)
.endc
"}
C {devices/vsource.sym} 230 30 0 0 {name=vgs value=0.9 savecurrent=false}
C {devices/gnd.sym} 320 90 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 450 30 0 0 {name=vds value=2.5 savecurrent=false}
C {primitives/nfet.sym} 330 -40 0 0 {name=M1 
model=nmos
W=10u
L=1u
m=1
}
