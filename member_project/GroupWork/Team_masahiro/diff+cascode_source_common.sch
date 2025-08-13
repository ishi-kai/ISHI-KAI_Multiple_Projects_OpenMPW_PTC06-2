v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1020 180 1150 180 {lab=diffout}
N 1150 180 1160 180 {lab=diffout}
N 460 320 460 340 {lab=GND}
N 560 320 560 340 {lab=GND}
N 670 320 670 340 {lab=GND}
N 670 200 670 210 {lab=#net1}
N 670 200 720 200 {lab=#net1}
N 600 180 710 180 {lab=#net2}
N 460 160 460 210 {lab=#net3}
N 540 160 720 160 {lab=#net3}
N 560 180 560 210 {lab=#net2}
N 560 180 600 180 {lab=#net2}
N 460 160 540 160 {lab=#net3}
N 710 180 720 180 {lab=#net2}
N 1470 220 1470 270 {lab=GND}
N 1620 250 1620 270 {lab=GND}
N 1460 220 1470 220 {lab=GND}
N 1620 180 1620 190 {lab=#net4}
N 1510 180 1620 180 {lab=#net4}
N 1460 180 1510 180 {lab=#net4}
N 1470 270 1470 300 {lab=GND}
N 1020 160 1040 160 {lab=#net4}
N 1040 140 1040 160 {lab=#net4}
N 670 210 670 260 {lab=#net1}
N 560 210 560 260 {lab=#net2}
N 460 210 460 260 {lab=#net3}
N 1020 200 1020 260 {lab=GND}
N 1150 340 1150 360 {lab=GND}
N 1050 180 1050 200 {lab=diffout}
N 1150 200 1160 200 {lab=#net5}
N 1150 220 1160 220 {lab=#net6}
N 1460 200 1550 200 {lab=out}
N 1470 270 1530 270 {lab=GND}
N 1530 200 1530 210 {lab=out}
N 1150 220 1150 280 {lab=#net6}
N 1140 200 1150 200 {lab=#net5}
N 1490 120 1490 200 {lab=out}
N 1040 140 1550 140 {lab=#net4}
N 1550 140 1550 180 {lab=#net4}
N 1120 80 1120 180 {lab=diffout}
N 1330 80 1490 80 {lab=out}
N 1490 80 1490 120 {lab=out}
N 1080 340 1080 360 {lab=GND}
N 1140 200 1140 250 {lab=#net5}
N 1080 250 1140 250 {lab=#net5}
N 1080 250 1080 280 {lab=#net5}
N 1240 80 1270 80 {lab=#net7}
N 1120 80 1180 80 {lab=diffout}
C {diff.sym} 870 180 0 0 {name=x1}
C {devices/vsource.sym} 460 290 0 0 {name=Vinn value="DC 2.5" savecurrent=false}
C {devices/vsource.sym} 560 290 0 0 {name=vinp value="DC 2.5 AC 1" savecurrent=false}
C {devices/vsource.sym} 670 290 0 0 {name=vbias value=1.1 savecurrent=false}
C {devices/gnd.sym} 670 340 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 560 340 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 460 340 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 1620 220 0 0 {name=Vdd value=5 savecurrent=false}
C {devices/gnd.sym} 1470 300 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1620 270 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 1550 200 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/code.sym} 50 40 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {devices/code_shown.sym} 60 230 0 0 {name=s1 only_toplevel=false value="
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
C {devices/lab_pin.sym} 1050 200 0 1 {name=p2 sig_type=std_logic lab=diffout}
C {devices/vsource.sym} 1150 310 0 0 {name=vbias1 value=1.1 savecurrent=false}
C {devices/gnd.sym} 1150 360 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1020 260 0 0 {name=l7 lab=GND}
C {devices/code_shown.sym} 70 810 0 0 {name=measure only_toplevel=false value="""
.measure ac gain find vdb(out) at=1e3
.measure ac ugf when vdb(out)=0
.measure ac phase find vp(out) at = 30.e6
"""}
C {pfet_cascode_common_source_load_current.sym} 1310 200 0 0 {name=x2}
C {devices/vsource.sym} 1080 310 0 0 {name=vbias2 value=2.6 savecurrent=false}
C {devices/gnd.sym} 1080 360 0 0 {name=l8 lab=GND}
C {devices/capa.sym} 1530 240 0 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {primitives/Poly_cap.sym} 1300 80 1 0 {name=C1 model=poly_cap W=26 L=26}
C {primitives/R_pdiff.sym} 1210 80 1 0 {name=R2 model=R_pdiff W=1.0 L=145}
