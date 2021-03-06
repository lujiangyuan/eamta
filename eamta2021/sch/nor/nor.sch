v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 740 -450 740 -440 { lab=nO}
N 740 -450 870 -450 { lab=nO}
N 870 -450 870 -440 { lab=nO}
N 800 -480 800 -450 { lab=nO}
N 800 -560 800 -540 { lab=#net1}
N 800 -670 800 -620 { lab=vdd}
N 740 -380 740 -350 { lab=vss}
N 740 -350 870 -350 { lab=vss}
N 870 -380 870 -350 { lab=vss}
N 870 -410 910 -410 { lab=vss}
N 910 -410 910 -350 { lab=vss}
N 870 -350 910 -350 { lab=vss}
N 740 -410 770 -410 { lab=vss}
N 770 -410 770 -350 { lab=vss}
N 800 -470 990 -470 { lab=nO}
N 810 -410 830 -410 { lab=a}
N 810 -410 810 -320 { lab=a}
N 650 -320 810 -320 { lab=a}
N 650 -590 650 -320 { lab=a}
N 650 -590 760 -590 { lab=a}
N 680 -510 760 -510 { lab=b}
N 680 -510 680 -410 { lab=b}
N 680 -410 700 -410 { lab=b}
N 550 -460 680 -460 { lab=b}
N 550 -530 650 -530 { lab=a}
N 600 -350 740 -350 { lab=vss}
N 800 -590 840 -590 { lab=vdd}
N 840 -670 840 -590 { lab=vdd}
N 800 -670 840 -670 { lab=vdd}
N 800 -510 840 -510 { lab=vdd}
N 840 -590 840 -510 { lab=vdd}
N 600 -670 800 -670 { lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 780 -590 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 780 -510 0 0 {name=M2
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
C {sky130_fd_pr/nfet_01v8.sym} 720 -410 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 850 -410 0 0 {name=M4
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
C {ipin.sym} 600 -670 0 0 {name=p1 lab=vdd
}
C {ipin.sym} 550 -530 0 0 {name=p2 lab=a
}
C {ipin.sym} 550 -460 0 0 {name=p3 lab=b}
C {ipin.sym} 600 -350 0 0 {name=p4 lab=vss
}
C {opin.sym} 990 -470 0 0 {name=p5 lab=nO}
