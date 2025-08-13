v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 920 260 940 260 {lab=GND}
N 940 260 940 310 {lab=GND}
N 360 330 360 350 {lab=GND}
N 460 330 460 350 {lab=GND}
N 570 330 570 350 {lab=GND}
N 1060 340 1060 360 {lab=GND}
N 1060 220 1060 280 {lab=#net1}
N 920 220 1060 220 {lab=#net1}
N 570 260 570 270 {lab=#net2}
N 570 260 620 260 {lab=#net2}
N 500 240 610 240 {lab=in}
N 610 240 620 240 {lab=in}
N 360 220 360 270 {lab=#net3}
N 440 220 620 220 {lab=#net3}
N 920 240 940 240 {lab=out}
N 460 240 460 270 {lab=in}
N 460 240 500 240 {lab=in}
N 360 220 440 220 {lab=#net3}
C {devices/code.sym} 10 30 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {devices/code_shown.sym} 10 210 0 0 {name=s1 only_toplevel=false value="
.option savecurrent
.control
op
show m
save all
print @m.x1.m3[vds] + @m.x1.m2[vds]
print @m.x1.m3[id]
dc vbias 0.8 2.0 0.01
plot v(in) v(out)
dc vinp 0 5.0 0.01
plot v(out) v(in)
.endc
"}
C {diff.sym} 770 240 0 0 {name=x1}
C {devices/vsource.sym} 360 300 0 0 {name=Vinn value="DC 2.5" savecurrent=false}
C {devices/vsource.sym} 460 300 0 0 {name=vinp value="DC 2.5 AC 1" savecurrent=false}
C {devices/vsource.sym} 570 300 0 0 {name=vbias value=1.1 savecurrent=false}
C {devices/vsource.sym} 1060 310 0 0 {name=Vdd value=5 savecurrent=false}
C {devices/gnd.sym} 940 310 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1060 360 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 570 350 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 460 350 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 360 350 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 940 240 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 460 250 2 1 {name=p2 sig_type=std_logic lab=in
}
