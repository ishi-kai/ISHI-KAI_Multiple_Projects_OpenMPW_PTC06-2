v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -390 -680 90 -680 {
lab=I3}
N -390 -540 90 -540 {
lab=I2}
N -380 -390 90 -390 {
lab=I1}
N -380 -230 90 -230 {
lab=I0}
N 210 -640 270 -640 {
lab=#net1}
N 270 -640 270 -590 {
lab=#net1}
N 270 -590 310 -590 {
lab=#net1}
N 210 -500 270 -500 {
lab=#net2}
N 270 -550 270 -500 {
lab=#net2}
N 270 -550 310 -550 {
lab=#net2}
N 430 -570 500 -570 {
lab=#net3}
N 500 -570 500 -460 {
lab=#net3}
N 500 -460 570 -460 {
lab=#net3}
N 450 -260 500 -260 {
lab=#net4}
N 500 -420 500 -260 {
lab=#net4}
N 500 -420 570 -420 {
lab=#net4}
N 210 -350 270 -350 {
lab=#net5}
N 270 -350 270 -280 {
lab=#net5}
N 270 -280 330 -280 {
lab=#net5}
N 210 -190 270 -190 {
lab=#net6}
N 270 -240 270 -190 {
lab=#net6}
N 270 -240 330 -240 {
lab=#net6}
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
lab=#net7}
N -140 -190 90 -190 {
lab=#net7}
N -140 -350 -140 -40 {
lab=#net7}
N -140 -350 90 -350 {
lab=#net7}
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
lab=#net8}
N 10 -460 10 80 {
lab=#net8}
N 10 -460 90 -460 {
lab=#net8}
N 10 -150 90 -150 {
lab=#net8}
N 690 -440 770 -440 {
lab=Y}
C {stdcells/an31.sym} 150 -640 0 0 {name=x1 VDD=VDD VSS=GND
models=".include $::LIB/stdcells_sim/an31.lib"}
C {stdcells/an31.sym} 150 -500 0 0 {name=x2 VDD=VDD VSS=GND
models=".include $::LIB/stdcells_sim/an31.lib"}
C {stdcells/an31.sym} 150 -350 0 0 {name=x3 VDD=VDD VSS=GND
models=".include $::LIB/stdcells_sim/an31.lib"}
C {stdcells/an31.sym} 150 -190 0 0 {name=x4 VDD=VDD VSS=GND
models=".include $::LIB/stdcells_sim/an31.lib"}
C {stdcells/or21.sym} 370 -570 0 0 {name=x5 VDD=VDD VSS=GND
models=".include $::LIB/stdcells_sim/or21.lib"}
C {stdcells/or21.sym} 390 -260 0 0 {name=x6 VDD=VDD VSS=GND
models=".include $::LIB/stdcells_sim/or21.lib"}
C {stdcells/or21.sym} 630 -440 0 0 {name=x7 VDD=VDD VSS=GND
models=".include $::LIB/stdcells_sim/or21.lib"}
C {stdcells/inv1.sym} -250 -40 0 0 {name=x8 VDD=VDD VSS=GND
models=".include $::LIB/stdcells_sim/inv1.lib"}
C {stdcells/inv1.sym} -250 80 0 0 {name=x9 VDD=VDD VSS=GND
models=".include $::LIB/stdcells_sim/inv1.lib"}
C {devices/ipin.sym} -390 -680 0 0 {name=p1 lab=I3}
C {devices/ipin.sym} -390 -540 0 0 {name=p2 lab=I2}
C {devices/ipin.sym} -380 -390 0 0 {name=p3 lab=I1}
C {devices/ipin.sym} -380 -230 0 0 {name=p4 lab=I0}
C {devices/ipin.sym} -380 -100 0 0 {name=p5 lab=S0}
C {devices/ipin.sym} -380 40 0 0 {name=p6 lab=S1}
C {devices/opin.sym} 770 -440 0 0 {name=p7 lab=Y}
