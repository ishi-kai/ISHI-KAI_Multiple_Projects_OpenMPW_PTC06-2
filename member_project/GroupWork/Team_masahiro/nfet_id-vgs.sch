v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 470 370 600 370 {lab=GND}
N 340 370 340 390 {lab=GND}
N 340 390 470 390 {lab=GND}
N 470 300 490 300 {lab=GND}
N 490 300 490 330 {lab=GND}
N 340 390 340 410 {lab=GND}
N 470 370 470 390 {lab=GND}
N 470 330 470 370 {lab=GND}
N 490 330 490 350 {lab=GND}
N 470 350 490 350 {lab=GND}
N 340 300 430 300 {lab=#net1}
N 340 300 340 310 {lab=#net1}
N 600 230 600 310 {lab=#net2}
N 470 230 600 230 {lab=#net2}
N 470 230 470 270 {lab=#net2}
C {devices/code.sym} 90 50 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {devices/vsource.sym} 340 340 0 0 {name=vgs value=0.8 savecurrent=false}
C {devices/vsource.sym} 600 340 0 0 {name=vds value=2.5 savecurrent=false}
C {devices/code_shown.sym} 60 240 0 0 {name=s1 
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
dc vgs 0.01 5.0 0.01
plot -i(vds)
plot @m1[vth]
plot @m1[gm]
plot @m1[gds]
plot -@m1[gm]/i(vds)
.endc
"}
C {primitives/nfet.sym} 450 300 0 0 {name=M1 
model=nmos
W=10u
L=1u
m=1
}
C {devices/gnd.sym} 340 410 0 0 {name=l1 lab=GND}
