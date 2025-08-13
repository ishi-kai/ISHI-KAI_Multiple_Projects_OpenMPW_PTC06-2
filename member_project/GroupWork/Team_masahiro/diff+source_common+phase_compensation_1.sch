v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 990 210 1120 210 {lab=diffout}
N 1120 210 1130 210 {lab=diffout}
N 430 350 430 370 {lab=GND}
N 530 350 530 370 {lab=GND}
N 640 350 640 370 {lab=GND}
N 640 230 640 240 {lab=#net1}
N 640 230 690 230 {lab=#net1}
N 570 210 680 210 {lab=#net2}
N 430 190 430 240 {lab=#net3}
N 510 190 690 190 {lab=#net3}
N 530 210 530 240 {lab=#net2}
N 530 210 570 210 {lab=#net2}
N 430 190 510 190 {lab=#net3}
N 680 210 690 210 {lab=#net2}
N 1440 250 1440 300 {lab=GND}
N 1590 280 1590 300 {lab=GND}
N 1430 250 1440 250 {lab=GND}
N 1590 210 1590 220 {lab=#net4}
N 1480 210 1590 210 {lab=#net4}
N 1430 210 1480 210 {lab=#net4}
N 1430 230 1520 230 {lab=out}
N 1490 230 1490 240 {lab=out}
N 1440 300 1440 330 {lab=GND}
N 1490 300 1490 310 {lab=GND}
N 1440 310 1490 310 {lab=GND}
N 1490 180 1490 210 {lab=#net4}
N 990 190 1010 190 {lab=#net4}
N 1010 170 1010 190 {lab=#net4}
N 1010 170 1490 170 {lab=#net4}
N 1490 170 1490 180 {lab=#net4}
N 640 240 640 290 {lab=#net1}
N 530 240 530 290 {lab=#net2}
N 430 240 430 290 {lab=#net3}
N 990 230 990 290 {lab=GND}
N 1130 380 1130 400 {lab=GND}
N 1130 230 1130 320 {lab=#net5}
N 1040 210 1040 230 {lab=diffout}
N 1330 120 1500 120 {lab=out}
N 1500 120 1500 230 {lab=out}
N 1130 120 1270 120 {lab=diffout}
N 1110 120 1130 120 {lab=diffout}
N 1110 120 1110 210 {lab=diffout}
C {diff.sym} 840 210 0 0 {name=x1}
C {pfet_common_source_load_current.sym} 1280 230 0 0 {name=x2}
C {devices/vsource.sym} 430 320 0 0 {name=Vinn value="DC 2.5" savecurrent=false}
C {devices/vsource.sym} 530 320 0 0 {name=vinp value="DC 2.5 AC 1" savecurrent=false}
C {devices/vsource.sym} 640 320 0 0 {name=vbias value=0.9 savecurrent=false}
C {devices/gnd.sym} 640 370 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 530 370 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 430 370 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 1590 250 0 0 {name=Vdd value=5 savecurrent=false}
C {devices/gnd.sym} 1440 330 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1590 300 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 1520 230 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/capa.sym} 1490 270 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/code.sym} 20 70 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {devices/code_shown.sym} 30 260 0 0 {name=s1 only_toplevel=false value="
.option savecurrent
.control
set units=degree
op
show m
save all
ac dec 20 1e3 1e10
plot vdb(out) vdb(diffout)
plot vp(out) vp(diffout)
print @m.x1.m2[vgs]
print @m.x1.m2[vds]
print @m.x1.m2[vth]
print @m.x1.m2[vgs] - @m.x1.m2[vth]
print @m.x1.m2[gm]
print @m.x1.m2[gds]
print @m.x1.m5[vgs]
print @m.x1.m5[vds]
print @m.x1.m5[vth]
print @m.x1.m5[vgs] - @m.x1.m5[vth]
print @m.x1.m5[gm]
print @m.x1.m5[gds]
print @m.x1.m3[vgs]
print @m.x1.m3[vds]
print @m.x1.m3[vth]
print @m.x1.m3[vgs] - @m.x1.m3[vth]
print @m.x1.m3[gm]
print @m.x1.m3[gds]
print @m.x1.m3[vds] + @m.x1.m2[vds]
.endc
"}
C {devices/lab_pin.sym} 1040 230 0 1 {name=p2 sig_type=std_logic lab=diffout}
C {devices/vsource.sym} 1130 350 0 0 {name=vbias1 value=0.9 savecurrent=false}
C {devices/gnd.sym} 1130 400 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 990 290 0 0 {name=l7 lab=GND}
C {devices/code_shown.sym} 40 840 0 0 {name=measure only_toplevel=false value="""
.measure ac gain find vdb(out) at=1e3
.measure ac ugf when vdb(out)=0
.measure ac phase find vp(out) at = 11.8e6
"""}
C {devices/capa.sym} 1300 120 1 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
