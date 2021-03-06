v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 260 -310 260 -280 { lab=nY}
N 260 -280 420 -280 { lab=nY}
N 420 -310 420 -280 { lab=nY}
N 420 -280 510 -280 { lab=nY}
N 350 -160 350 -130 { lab=#net1}
N 350 -70 350 -30 { lab=vss}
N 350 -280 350 -220 { lab=nY}
N 260 -440 260 -370 { lab=vdd}
N 260 -440 420 -440 { lab=vdd}
N 420 -440 420 -370 { lab=vdd}
N 160 -440 260 -440 { lab=vdd}
N 170 -190 310 -190 { lab=a}
N 170 -100 310 -100 { lab=b}
N 200 -340 220 -340 { lab=b}
N 200 -340 200 -100 { lab=b}
N 300 -340 380 -340 { lab=a}
N 300 -340 300 -190 { lab=a}
N 230 -20 350 -20 { lab=vss}
N 350 -30 350 -20 { lab=vss}
N 420 -340 460 -340 { lab=vdd}
N 460 -400 460 -340 { lab=vdd}
N 420 -400 460 -400 { lab=vdd}
N 260 -340 290 -340 { lab=vdd}
N 290 -400 290 -340 { lab=vdd}
N 260 -400 290 -400 { lab=vdd}
N 350 -100 380 -100 { lab=vss}
N 380 -100 380 -20 { lab=vss}
N 350 -20 380 -20 { lab=vss}
N 350 -190 400 -190 { lab=vss}
N 400 -190 400 -20 { lab=vss}
N 380 -20 400 -20 { lab=vss}
C {ipin.sym} 160 -440 0 0 {name=p1 lab=vdd}
C {ipin.sym} 230 -20 0 0 {name=p2 lab=vss}
C {ipin.sym} 170 -190 0 0 {name=p3 lab=a}
C {ipin.sym} 170 -100 0 0 {name=p4 lab=b}
C {opin.sym} 510 -280 0 0 {name=p6 lab=nY}
C {sky130_fd_pr/pfet_01v8.sym} 240 -340 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 400 -340 0 0 {name=M2
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
C {sky130_fd_pr/nfet_01v8.sym} 330 -190 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 330 -100 0 0 {name=M4
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
