v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -390 -680 90 -680 {
lab=vin}
N -390 -540 90 -540 {
lab=voff}
N -380 -390 90 -390 {
lab=von}
N -380 -230 90 -230 {
lab=von}
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
lab=von}
N -170 -640 -170 -100 {
lab=von}
N -170 -640 90 -640 {
lab=von}
N -170 -500 90 -500 {
lab=von}
N -330 -100 -330 -40 {
lab=von}
N -330 -40 -290 -40 {
lab=von}
N -210 -40 -140 -40 {
lab=#net7}
N -140 -190 90 -190 {
lab=#net7}
N -140 -350 -140 -40 {
lab=#net7}
N -140 -350 90 -350 {
lab=#net7}
N -380 40 -60 40 {
lab=von}
N -60 -600 -60 40 {
lab=von}
N -60 -600 90 -600 {
lab=von}
N -60 -310 90 -310 {
lab=von}
N -330 40 -330 80 {
lab=von}
N -330 80 -290 80 {
lab=von}
N -210 80 10 80 {
lab=#net8}
N 10 -460 10 80 {
lab=#net8}
N 10 -460 90 -460 {
lab=#net8}
N 10 -150 90 -150 {
lab=#net8}
N 690 -440 770 -440 {
lab=vout}
N -1060 -70 -1060 -30 {
lab=GND}
N -1060 -160 -1060 -130 {
lab=VDD}
N -870 -160 -870 -130 {
lab=von}
N -870 -70 -870 -30 {
lab=GND}
N -790 -160 -790 -130 {
lab=voff}
N -790 -70 -790 -30 {
lab=GND}
N -950 -160 -950 -130 {
lab=vin}
N -950 -70 -950 -30 {
lab=GND}
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
C {devices/code.sym} -1000 -920 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {devices/vsource.sym} -1060 -100 0 0 {name=Vdd value=5.0 savecurrent=false}
C {devices/vdd.sym} -1060 -160 0 0 {name=l3}
C {devices/gnd.sym} -1060 -30 0 0 {name=l4}
C {devices/vsource.sym} -870 -100 0 0 {name=von value=5.0 savecurrent=false}
C {devices/lab_pin.sym} -870 -160 1 0 {name=p8 sig_type=std_logic lab=von}
C {devices/gnd.sym} -870 -30 0 0 {name=l5}
C {devices/vsource.sym} -790 -100 0 0 {name=voff value=0.0 savecurrent=false}
C {devices/lab_pin.sym} -790 -160 1 0 {name=p9 sig_type=std_logic lab=voff}
C {devices/gnd.sym} -790 -30 0 0 {name=l1}
C {devices/lab_pin.sym} 770 -440 0 1 {name=p7 sig_type=std_logic lab=vout}
C {devices/code_shown.sym} -1030 -680 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all

* DC analysis (I/O curve)
dc vin 0 5.0 0.01
plot von voff vin
plot vout 
wrdata ~/4ch_mux_tb.txt v(vout)
write 4ch_mux_tb.raw
.endc"}
C {devices/lab_pin.sym} -380 -100 2 1 {name=p1 sig_type=std_logic lab=von}
C {devices/lab_pin.sym} -380 40 2 1 {name=p2 sig_type=std_logic lab=von}
C {devices/vsource.sym} -950 -100 0 0 {name=vin value=5.0 savecurrent=false}
C {devices/lab_pin.sym} -950 -160 1 0 {name=p3 sig_type=std_logic lab=vin}
C {devices/gnd.sym} -950 -30 0 0 {name=l2}
C {devices/lab_pin.sym} -390 -540 2 1 {name=p6 sig_type=std_logic lab=voff}
C {devices/lab_pin.sym} -380 -390 2 1 {name=p10 sig_type=std_logic lab=von}
C {devices/lab_pin.sym} -390 -680 2 1 {name=p5 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} -380 -230 2 1 {name=p4 sig_type=std_logic lab=von}
