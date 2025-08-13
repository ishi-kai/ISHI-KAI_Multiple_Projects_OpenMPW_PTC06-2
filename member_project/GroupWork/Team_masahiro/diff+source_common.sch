v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 960 180 1090 180 {lab=diffout}
N 1090 180 1100 180 {lab=diffout}
N 400 320 400 340 {lab=GND}
N 500 320 500 340 {lab=GND}
N 610 320 610 340 {lab=GND}
N 610 200 610 210 {lab=#net1}
N 610 200 660 200 {lab=#net1}
N 540 180 650 180 {lab=#net2}
N 400 160 400 210 {lab=#net3}
N 480 160 660 160 {lab=#net3}
N 500 180 500 210 {lab=#net2}
N 500 180 540 180 {lab=#net2}
N 400 160 480 160 {lab=#net3}
N 650 180 660 180 {lab=#net2}
N 1410 220 1410 270 {lab=GND}
N 1560 250 1560 270 {lab=GND}
N 1400 220 1410 220 {lab=GND}
N 1560 180 1560 190 {lab=#net4}
N 1450 180 1560 180 {lab=#net4}
N 1400 180 1450 180 {lab=#net4}
N 1400 200 1490 200 {lab=out}
N 1460 200 1460 210 {lab=out}
N 1410 270 1410 300 {lab=GND}
N 1460 270 1460 280 {lab=GND}
N 1410 280 1460 280 {lab=GND}
N 1460 150 1460 180 {lab=#net4}
N 960 160 980 160 {lab=#net4}
N 980 140 980 160 {lab=#net4}
N 980 140 1460 140 {lab=#net4}
N 1460 140 1460 150 {lab=#net4}
N 610 210 610 260 {lab=#net1}
N 500 210 500 260 {lab=#net2}
N 400 210 400 260 {lab=#net3}
N 960 200 960 260 {lab=GND}
N 1100 350 1100 370 {lab=GND}
N 1100 200 1100 290 {lab=#net5}
N 1010 180 1010 200 {lab=diffout}
C {diff.sym} 810 180 0 0 {name=x1}
C {pfet_common_source_load_current.sym} 1250 200 0 0 {name=x2}
C {devices/vsource.sym} 400 290 0 0 {name=Vinn value="DC 2.5" savecurrent=false}
C {devices/vsource.sym} 500 290 0 0 {name=vinp value="DC 2.5 AC 1" savecurrent=false}
C {devices/vsource.sym} 610 290 0 0 {name=vbias value=0.9 savecurrent=false}
C {devices/gnd.sym} 610 340 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 500 340 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 400 340 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 1560 220 0 0 {name=Vdd value=5 savecurrent=false}
C {devices/gnd.sym} 1410 300 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1560 270 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 1490 200 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/capa.sym} 1460 240 0 0 {name=C1
m=1
value=15p
footprint=1206
device="ceramic capacitor"}
C {devices/code.sym} -10 40 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {devices/code_shown.sym} 0 230 0 0 {name=s1 only_toplevel=false value="
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
C {devices/lab_pin.sym} 1010 200 0 1 {name=p2 sig_type=std_logic lab=diffout}
C {devices/vsource.sym} 1100 320 0 0 {name=vbias1 value=0.85 savecurrent=false}
C {devices/gnd.sym} 1100 370 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 960 260 0 0 {name=l7 lab=GND}
C {devices/code_shown.sym} 10 810 0 0 {name=measure only_toplevel=false value="""
.measure ac gain find vdb(out) at=1e3
.measure ac ugf when vdb(out)=0
.measure ac phase find vp(out) at = 11.8e6
"""}
