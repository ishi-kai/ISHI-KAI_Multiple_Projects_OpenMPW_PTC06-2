v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 690 250 800 250 {lab=#net1}
N 800 250 810 250 {lab=#net1}
N 840 250 840 360 {lab=#net1}
N 810 250 840 250 {lab=#net1}
N 760 290 760 360 {lab=#net2}
N 690 290 760 290 {lab=#net2}
N 720 330 720 450 {lab=GND}
N 690 330 720 330 {lab=GND}
N 720 430 760 430 {lab=GND}
N 760 420 760 430 {lab=GND}
N 760 430 840 430 {lab=GND}
N 840 420 840 430 {lab=GND}
N 690 270 740 270 {lab=ob2}
N 690 310 710 310 {lab=ob1}
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
print @m.x1.m5[vgs]+@m.x1.m6[vgs]
print @m.x1.m2[vgs]
save all
dc ib 0 100u 1u
plot v(ob2)
.endc
"}
C {bias.sym} 540 290 0 0 {name=x1}
C {devices/vsource.sym} 840 390 0 0 {name=V1 value=5 savecurrent=false}
C {devices/isource.sym} 760 390 2 1 {name=Ib value=43.07u}
C {devices/gnd.sym} 720 450 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 740 270 0 1 {name=p1 sig_type=std_logic lab=ob2}
C {devices/lab_pin.sym} 710 310 0 1 {name=p2 sig_type=std_logic lab=ob1
}
