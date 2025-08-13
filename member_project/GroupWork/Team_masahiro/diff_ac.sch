v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 890 180 910 180 {lab=GND}
N 910 180 910 230 {lab=GND}
N 330 250 330 270 {lab=GND}
N 430 250 430 270 {lab=GND}
N 540 250 540 270 {lab=GND}
N 1030 260 1030 280 {lab=GND}
N 1030 140 1030 200 {lab=#net1}
N 890 140 1030 140 {lab=#net1}
N 540 180 540 190 {lab=#net2}
N 540 180 590 180 {lab=#net2}
N 470 160 580 160 {lab=#net3}
N 580 160 590 160 {lab=#net3}
N 330 140 330 190 {lab=#net4}
N 410 140 590 140 {lab=#net4}
N 890 160 910 160 {lab=out}
N 430 160 430 190 {lab=#net3}
N 430 160 470 160 {lab=#net3}
N 330 140 410 140 {lab=#net4}
C {devices/code.sym} 0 40 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {diff.sym} 740 160 0 0 {name=x1}
C {devices/vsource.sym} 330 220 0 0 {name=Vinn value="DC 2.5" savecurrent=false}
C {devices/vsource.sym} 430 220 0 0 {name=vinp value="DC 2.5 AC 1" savecurrent=false}
C {devices/vsource.sym} 540 220 0 0 {name=vbias value=1.1 savecurrent=false}
C {devices/vsource.sym} 1030 230 0 0 {name=Vdd value=5 savecurrent=false}
C {devices/gnd.sym} 910 230 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1030 280 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 540 270 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 430 270 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 330 270 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 910 160 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/code_shown.sym} 10 230 0 0 {name=s1 only_toplevel=false value="
.option savecurrent
.control
op
show m
save all
ac dec 20 1e3 1e10
plot vdb(out)
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
.endc
"}
C {devices/code_shown.sym} 10 770 0 0 {name=measure only_toplevel=false value="""
.measure ac gain find vdb(out) at=1e3
.measure ac ugf when vdb(out)=0
.measure ac phase find vp(out) at = 11.8e6
"""}
