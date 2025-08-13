v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -390 -680 90 -680 {
lab=vin}
N 210 -640 270 -640 {
lab=vout3}
N 210 -500 270 -500 {
lab=vout2}
N 210 -350 270 -350 {
lab=vout1}
N 210 -190 270 -190 {
lab=vout0}
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
lab=#net1}
N -140 -190 90 -190 {
lab=#net1}
N -140 -350 -140 -40 {
lab=#net1}
N -140 -350 90 -350 {
lab=#net1}
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
lab=#net2}
N 10 -460 10 80 {
lab=#net2}
N 10 -460 90 -460 {
lab=#net2}
N 10 -150 90 -150 {
lab=#net2}
N -310 -680 -310 -540 {
lab=vin}
N -310 -540 -310 -390 {
lab=vin}
N -310 -390 -310 -230 {
lab=vin}
N -310 -230 90 -230 {
lab=vin}
N -310 -390 90 -390 {
lab=vin}
N -310 -540 90 -540 {
lab=vin}
N -890 50 -890 90 {
lab=GND}
N -890 -40 -890 -10 {
lab=VDD}
N -700 -40 -700 -10 {
lab=von}
N -700 50 -700 90 {
lab=GND}
N -620 -40 -620 -10 {
lab=voff}
N -620 50 -620 90 {
lab=GND}
N -780 -40 -780 -10 {
lab=vin}
N -780 50 -780 90 {
lab=GND}
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
C {devices/code.sym} -830 -800 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {devices/vsource.sym} -890 20 0 0 {name=Vdd value=5.0 savecurrent=false}
C {devices/vdd.sym} -890 -40 0 0 {name=l3}
C {devices/gnd.sym} -890 90 0 0 {name=l4}
C {devices/vsource.sym} -700 20 0 0 {name=von value=5.0 savecurrent=false}
C {devices/lab_pin.sym} -700 -40 1 0 {name=p8 sig_type=std_logic lab=von}
C {devices/gnd.sym} -700 90 0 0 {name=l5}
C {devices/vsource.sym} -620 20 0 0 {name=voff value=0.0 savecurrent=false}
C {devices/lab_pin.sym} -620 -40 1 0 {name=p9 sig_type=std_logic lab=voff}
C {devices/gnd.sym} -620 90 0 0 {name=l1}
C {devices/code_shown.sym} -860 -560 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all

* DC analysis (I/O curve)
dc vin 0 5.0 0.01
plot von voff vin
plot vout0 vout1 vout2 vout3
wrdata ~/4ch_demux_tb.txt v(vout0)
write 4ch_demux_tb.raw
.endc"}
C {devices/vsource.sym} -780 20 0 0 {name=vin value=5.0 savecurrent=false}
C {devices/lab_pin.sym} -780 -40 1 0 {name=p3 sig_type=std_logic lab=vin}
C {devices/gnd.sym} -780 90 0 0 {name=l2}
C {devices/lab_pin.sym} -390 -680 2 1 {name=p5 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} -380 -100 2 1 {name=p1 sig_type=std_logic lab=von}
C {devices/lab_pin.sym} -380 40 2 1 {name=p2 sig_type=std_logic lab=von}
C {devices/lab_pin.sym} 270 -190 0 1 {name=p7 sig_type=std_logic lab=vout0}
C {devices/lab_pin.sym} 270 -350 0 1 {name=p4 sig_type=std_logic lab=vout1}
C {devices/lab_pin.sym} 270 -500 0 1 {name=p6 sig_type=std_logic lab=vout2}
C {devices/lab_pin.sym} 270 -640 0 1 {name=p10 sig_type=std_logic lab=vout3}
