v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 420 360 420 380 {lab=GND}
N 520 360 520 380 {lab=GND}
N 520 260 520 300 {lab=#net1}
N 520 260 610 260 {lab=#net1}
N 420 240 420 300 {lab=#net2}
N 420 240 600 240 {lab=#net2}
N 600 240 610 240 {lab=#net2}
N 990 260 1080 260 {lab=#net3}
N 1080 260 1080 340 {lab=#net3}
N 1080 400 1080 420 {lab=GND}
N 1180 400 1180 420 {lab=GND}
N 1180 240 1180 340 {lab=#net4}
N 990 240 1180 240 {lab=#net4}
N 920 280 940 280 {lab=out}
N 910 280 920 280 {lab=out}
N 940 300 940 420 {lab=GND}
N 910 300 930 300 {lab=GND}
N 930 300 940 300 {lab=GND}
N 910 240 990 240 {lab=#net4}
N 910 260 990 260 {lab=#net3}
N 940 280 1020 280 {lab=out}
N 980 280 980 300 {lab=out}
N 980 360 980 410 {lab=GND}
N 940 410 980 410 {lab=GND}
C {opamp.sym} 760 270 0 0 {name=x1}
C {devices/vsource.sym} 420 330 0 0 {name=Vinn value="DC 2.5" savecurrent=false}
C {devices/vsource.sym} 520 330 0 0 {name=vinp value="DC 2.5 AC 1" savecurrent=false}
C {devices/gnd.sym} 520 380 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 420 380 0 0 {name=l6 lab=GND}
C {devices/isource.sym} 1080 370 2 1 {name=I0 value=43.07u}
C {devices/gnd.sym} 1080 420 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 1180 370 0 0 {name=Vdd value=5 savecurrent=false}
C {devices/gnd.sym} 1180 420 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 1020 280 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/gnd.sym} 940 420 0 0 {name=l3 lab=GND}
C {devices/code.sym} 10 50 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {devices/code_shown.sym} 20 240 0 0 {name=s1 only_toplevel=false value="
.option savecurrent
.control
set units=degree
op
#show m
print bias1
print bias2
save all
ac dec 20 1e3 1e10
plot vdb(out)
plot vp(out)
.endc
"}
C {devices/code_shown.sym} 10 510 0 0 {name=measure only_toplevel=false value="""
.measure ac gain find vdb(out) at=1e3
.measure ac ugf when vdb(out)=0
.measure ac phase find vp(out) at = 30.e6
"""}
C {devices/capa.sym} 980 330 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
