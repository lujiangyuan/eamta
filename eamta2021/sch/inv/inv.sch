v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 300 -280 300 -240 { lab=out}
N 260 -310 260 -210 { lab=in}
N 300 -180 300 -140 { lab=vss}
N 260 -140 300 -140 { lab=vss}
N 300 -210 330 -210 { lab=vss}
N 330 -210 330 -160 { lab=vss}
N 300 -160 330 -160 { lab=vss}
N 300 -380 300 -340 { lab=vdd}
N 260 -380 300 -380 { lab=vdd}
N 300 -310 330 -310 { lab=vdd}
N 330 -360 330 -310 { lab=vdd}
N 300 -360 330 -360 { lab=vdd}
N 300 -260 380 -260 { lab=out}
N 200 -260 260 -260 { lab=in}
C {sky130_fd_pr/nfet_01v8.sym} 280 -210 0 0 {name=M1
L=0.15
W=\{WN\}
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 280 -310 0 0 {name=M2
L=0.15
W=\{WP\}
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {ipin.sym} 260 -380 0 0 {name=p1 lab=vdd}
C {ipin.sym} 260 -140 0 0 {name=p2 lab=vss}
C {ipin.sym} 200 -260 0 0 {name=p3 lab=in}
C {opin.sym} 380 -260 0 0 {name=p4 lab=out}
