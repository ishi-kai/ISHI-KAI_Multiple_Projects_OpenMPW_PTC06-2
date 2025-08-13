v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 250 110 490 110 {lab=#net1}
N 350 110 350 160 {lab=#net1}
N 350 190 380 190 {lab=#net1}
N 380 140 380 190 {lab=#net1}
N 350 140 380 140 {lab=#net1}
N 350 220 350 240 {lab=GND}
N 350 230 490 230 {lab=GND}
N 250 190 310 190 {lab=#net2}
N 490 200 490 230 {lab=GND}
N 490 110 490 140 {lab=#net1}
N 250 180 250 190 {lab=#net2}
N 250 110 250 120 {lab=#net1}
C {devices/code.sym} 0 -20 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {primitives/pfet.sym} 330 190 0 0 {name=M1 
model=pmos
W=10u
L=1u
m=1
}
C {devices/vsource.sym} 250 150 0 0 {name=vgs value=1.4 savecurrent=false}
C {devices/vsource.sym} 490 170 0 0 {name=vds value=2.5 savecurrent=false}
C {devices/gnd.sym} 350 240 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 10 140 0 0 {name=s1 only_toplevel=false value="
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
plot -@m1[gm]/i(vds)
plot 1/@m1[gds]
plot @m1[gm]/@m1[gds]
.endc
"
}
