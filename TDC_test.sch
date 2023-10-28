v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {PULSE(VL VH TD TR TF PW PER PHASE) } 500 -280 0 0 0.4 0.4 {}
N 560 -960 620 -960 {
lab=V_2}
N 850 -960 920 -960 {
lab=V_4}
N 570 -430 570 -420 {
lab=Vin}
N 570 -430 580 -430 {
lab=Vin}
N 570 -360 570 -350 {
lab=vss}
N 560 -350 570 -350 {
lab=vss}
N 440 -960 480 -960 {
lab=Vin}
N 1000 -960 1050 -960 {
lab=Vout}
N 700 -960 770 -960 {
lab=V_3}
N 90 -430 90 -420 {
lab=Vin2}
N 90 -430 100 -430 {
lab=Vin2}
N 90 -360 90 -350 {
lab=vss}
N 80 -350 90 -350 {
lab=vss}
N 700 -1220 700 -1180 {
lab=Vin2,Vnn2,Vnn3,Vnn4,Vnn5,Vnn6,Vnn7,Vnn8,Vnn9,Vnn10,Vnn11,Vnn12,Vnn13,Vnn14,Vnn15,Vnn16,Vnn17,Vnn18,Vnn19,Vnn20,Vnn21,Vnn22,Vnn23,Vnn24,Vnn25,Vnn26,Vnn27,Vnn28,Vnn29,Vnn30,Vnn31,Vnn32}
N 700 -1180 700 -1140 {
lab=Vin2,Vnn2,Vnn3,Vnn4,Vnn5,Vnn6,Vnn7,Vnn8,Vnn9,Vnn10,Vnn11,Vnn12,Vnn13,Vnn14,Vnn15,Vnn16,Vnn17,Vnn18,Vnn19,Vnn20,Vnn21,Vnn22,Vnn23,Vnn24,Vnn25,Vnn26,Vnn27,Vnn28,Vnn29,Vnn30,Vnn31,Vnn32}
N 700 -1140 700 -1100 {
lab=Vin2,Vnn2,Vnn3,Vnn4,Vnn5,Vnn6,Vnn7,Vnn8,Vnn9,Vnn10,Vnn11,Vnn12,Vnn13,Vnn14,Vnn15,Vnn16,Vnn17,Vnn18,Vnn19,Vnn20,Vnn21,Vnn22,Vnn23,Vnn24,Vnn25,Vnn26,Vnn27,Vnn28,Vnn29,Vnn30,Vnn31,Vnn32}
N 640 -1160 700 -1160 {
lab=Vin2,Vnn2,Vnn3,Vnn4,Vnn5,Vnn6,Vnn7,Vnn8,Vnn9,Vnn10,Vnn11,Vnn12,Vnn13,Vnn14,Vnn15,Vnn16,Vnn17,Vnn18,Vnn19,Vnn20,Vnn21,Vnn22,Vnn23,Vnn24,Vnn25,Vnn26,Vnn27,Vnn28,Vnn29,Vnn30,Vnn31,Vnn32}
N 820 -1160 880 -1160 {
lab=Vnn2,Vnn3,Vnn4,Vnn5,Vnn6,Vnn7,Vnn8,Vnn9,Vnn10,Vnn11,Vnn12,Vnn13,Vnn14,Vnn15,Vnn16,Vnn17,Vnn18,Vnn19,Vnn20,Vnn21,Vnn22,Vnn23,Vnn24,Vnn25,Vnn26,Vnn27,Vnn28,Vnn29,Vnn30,Vnn31,Vnn32,Vout2}
C {sky130_stdcells/inv_2.sym} 520 -960 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {devices/code_shown.sym} 1220 -520 0 0 {name=s1 only_toplevel=false value="vvcc vcc 0 dc 1.8
vvss vss 0 0
*.option temp = 0
.save v(Vin) v(Vout) v(Vin2) v(Vout2)
.measure tran tprop TRIG v(Vin) TD=0n VAL=0.9 RISE=1 TARG v(Vout) TD=0n VAL=0.9 RISE=1
.measure tran tprop2 TRIG v(Vin2) TD=0n VAL=0.9 RISE=1 TARG v(Vout2) TD=0n VAL=0.9 RISE=1

.control
   tran 50p 12n
   run
   write TT_3stage_RO_v1p1.raw
*   wrdata /foss/designs/TT_temptodig_ROstudy/TT_3stage_RO_v1p1.txt v(Vnn1)
   plot v(Vin) v(Vout)
   plot v(Vin2) v(Vout2)

.endc
"}
C {devices/lab_pin.sym} 440 -960 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 590 -960 1 0 {name=p2 sig_type=std_logic lab=V_2}
C {sky130_stdcells/inv_2.sym} 660 -960 0 0 {name=x2 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_2.sym} 960 -960 0 0 {name=x3 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {devices/code.sym} 1320 -810 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {devices/lab_pin.sym} 890 -960 1 0 {name=p3 sig_type=std_logic lab=V_4}
C {devices/lab_wire.sym} 580 -430 0 1 {name=l2 sig_type=std_logic lab=Vin}
C {devices/vsource.sym} 570 -390 0 0 {name=V7 value="PULSE(0 1.8 5n 1p 1p 5.0n 10.0n)"}
C {devices/lab_pin.sym} 1050 -960 2 0 {name=p4 sig_type=std_logic lab=Vout}
C {devices/lab_wire.sym} 560 -350 2 1 {name=l1 sig_type=std_logic lab=vss}
C {sky130_stdcells/inv_2.sym} 810 -960 0 0 {name=x4 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 740 -960 1 0 {name=p5 sig_type=std_logic lab=V_3}
C {devices/lab_wire.sym} 100 -430 0 1 {name=l3 sig_type=std_logic lab=Vin2}
C {devices/vsource.sym} 90 -390 0 0 {name=V1 value="PULSE(0 1.8 5n 1p 1p 5.0n 10.0n)"}
C {devices/lab_wire.sym} 80 -350 2 1 {name=l4 sig_type=std_logic lab=vss}
C {sky130_stdcells/nand4_4.sym} 760 -1160 0 0 {name=xn1[0:31] VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 640 -1160 0 0 {name=p26 sig_type=std_logic lab=Vin2,Vnn2,Vnn3,Vnn4,Vnn5,Vnn6,Vnn7,Vnn8,Vnn9,Vnn10,Vnn11,Vnn12,Vnn13,Vnn14,Vnn15,Vnn16,Vnn17,Vnn18,Vnn19,Vnn20,Vnn21,Vnn22,Vnn23,Vnn24,Vnn25,Vnn26,Vnn27,Vnn28,Vnn29,Vnn30,Vnn31,Vnn32}
C {devices/lab_pin.sym} 880 -1160 0 1 {name=p27 sig_type=std_logic lab=Vnn2,Vnn3,Vnn4,Vnn5,Vnn6,Vnn7,Vnn8,Vnn9,Vnn10,Vnn11,Vnn12,Vnn13,Vnn14,Vnn15,Vnn16,Vnn17,Vnn18,Vnn19,Vnn20,Vnn21,Vnn22,Vnn23,Vnn24,Vnn25,Vnn26,Vnn27,Vnn28,Vnn29,Vnn30,Vnn31,Vnn32,Vout2}
