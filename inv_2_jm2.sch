v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 250 -60 250 -10 { lab=VDD}
N 110 70 170 70 { lab=VIN}
N 250 180 250 210 { lab=VSS}
N 250 70 310 70 { lab=VOUT}
C {devices/ipin.sym} 110 70 0 0 {name=p1 lab=VIN}
C {devices/opin.sym} 310 70 0 0 {name=p5 lab=VOUT}
C {devices/iopin.sym} 250 -60 3 0 {name=p2 lab=VDD}
C {devices/iopin.sym} 250 210 1 0 {name=p4 lab=VSS}
C {devices/code_shown.sym} 390 -150 0 0 {name=s1 only_toplevel=false value="X0 VOUT VIN VSS VSS sky130_fd_pr__nfet_01v8 w=650000u l=150000u
X1 VDD VIN VOUT VDD sky130_fd_pr__pfet_01v8_hvt w=1e+06u l=150000u
X2 VSS VIN VOUT VSS sky130_fd_pr__nfet_01v8 w=650000u l=150000u
X3 VOUT VIN VDD VDD sky130_fd_pr__pfet_01v8_hvt w=1e+06u l=150000u
"}
