v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 -160 40 -120 {lab=vdd}
N 40 -160 340 -160 {lab=vdd}
N 40 -60 40 -40 {lab=GND}
N 40 -40 340 -40 {lab=GND}
N 420 -80 440 -80 {lab=vgnout}
N 420 -120 440 -120 {lab=vgpout}
C {202508_2stageOpAmp/VthRef.sym} 360 -100 0 0 {name=x1}
C {devices/vsource.sym} 40 -90 0 0 {name=V1 value="5.5 PWL(0 0 10u 0 110u 3 210u 4 510u 5.5)" savecurrent=false}
C {devices/gnd.sym} 40 -40 0 0 {name=l1 lab=GND}
C {devices/code.sym} -220 -140 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {devices/lab_wire.sym} 70 -160 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 430 -80 0 1 {name=p2 sig_type=std_logic lab=vgnout}
C {devices/lab_wire.sym} 430 -120 0 1 {name=p3 sig_type=std_logic lab=vgpout}
C {devices/code_shown.sym} -260 50 0 0 {name=Tran
only_toplevel=false 
value=".option savecurrents temp=70
.ic v(x1.netA)=0
.control
save all
op
show m
print @m.x1.m1[id]

tran 2u 600u
wrdata tran_i_VthRef.txt -@r.x1.r1[i] @m.x1.m1[id]
wrdata tran_v_VthRef.txt v(vdd) v(vgnout) v(x1.netA) v(vgpout)
.endc"
}
