v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -390 -680 90 -680 {
lab=Y}
N 210 -640 270 -640 {
lab=O3}
N 210 -500 270 -500 {
lab=O2}
N 210 -350 270 -350 {
lab=O1}
N 210 -190 270 -190 {
lab=I0}
N -380 -100 -170 -100 {
lab=S0}
N -170 -640 -170 -100 {
lab=S0}
N -170 -640 90 -640 {
lab=S0}
N -170 -500 90 -500 {
lab=S0}
N -330 -100 -330 -40 {
lab=S0}
N -330 -40 -290 -40 {
lab=S0}
N -210 -40 -140 -40 {
lab=#net1}
N -140 -190 90 -190 {
lab=#net1}
N -140 -350 -140 -40 {
lab=#net1}
N -140 -350 90 -350 {
lab=#net1}
N -380 40 -60 40 {
lab=S1}
N -60 -600 -60 40 {
lab=S1}
N -60 -600 90 -600 {
lab=S1}
N -60 -310 90 -310 {
lab=S1}
N -330 40 -330 80 {
lab=S1}
N -330 80 -290 80 {
lab=S1}
N -210 80 10 80 {
lab=#net2}
N 10 -460 10 80 {
lab=#net2}
N 10 -460 90 -460 {
lab=#net2}
N 10 -150 90 -150 {
lab=#net2}
N -310 -680 -310 -540 {
lab=Y}
N -310 -540 -310 -390 {
lab=Y}
N -310 -390 -310 -230 {
lab=Y}
N -310 -230 90 -230 {
lab=Y}
N -310 -390 90 -390 {
lab=Y}
N -310 -540 90 -540 {
lab=Y}
C {stdcells/an31.sym} 150 -640 0 0 {name=x1 VDD=VDD VSS=GND
models=".include $::LIB/stdcells_sim/an31.lib"}
C {stdcells/an31.sym} 150 -500 0 0 {name=x2 VDD=VDD VSS=GND
models=".include $::LIB/stdcells_sim/an31.lib"}
C {stdcells/an31.sym} 150 -350 0 0 {name=x3 VDD=VDD VSS=GND
models=".include $::LIB/stdcells_sim/an31.lib"}
C {stdcells/an31.sym} 150 -190 0 0 {name=x4 VDD=VDD VSS=GND
models=".include $::LIB/stdcells_sim/an31.lib"}
C {stdcells/inv1.sym} -250 -40 0 0 {name=x8 VDD=VDD VSS=GND
models=".include $::LIB/stdcells_sim/inv1.lib"}
C {stdcells/inv1.sym} -250 80 0 0 {name=x9 VDD=VDD VSS=GND
models=".include $::LIB/stdcells_sim/inv1.lib"}
C {devices/ipin.sym} -390 -680 0 0 {name=p4 lab=Y}
C {devices/ipin.sym} -380 -100 0 0 {name=p5 lab=S0}
C {devices/ipin.sym} -380 40 0 0 {name=p6 lab=S1}
C {devices/opin.sym} 270 -190 0 0 {name=p7 lab=O0}
C {devices/opin.sym} 270 -350 0 0 {name=p1 lab=O1}
C {devices/opin.sym} 270 -500 0 0 {name=p2 lab=O2}
C {devices/opin.sym} 270 -640 0 0 {name=p3 lab=O3}
