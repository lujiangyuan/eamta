v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {Trise = 13.31ps
Tfall = 8.77ps} 210 -110 0 0 0.4 0.4 {}
N -320 -30 -320 0 { lab=vss}
N -260 -30 -260 0 { lab=vdd}
N -200 -30 -200 0 { lab=in}
N -200 60 -200 90 { lab=vss}
N -260 60 -260 90 { lab=vss}
N -320 60 -320 90 { lab=GND}
N 150 70 150 110 { lab=vss}
N 90 0 110 0 { lab=in}
N 150 -90 150 -70 { lab=vdd}
N 380 80 380 110 { lab=vss}
N 380 0 380 20 { lab=out}
N 330 0 380 0 { lab=out}
N 380 0 430 0 { lab=out}
C {inv/inv.sym} 190 0 0 0 {name=x1}
C {vsource.sym} -320 30 0 0 {name=V1 value=0}
C {vsource.sym} -260 30 0 0 {name=V2 value=1.8		}
C {vsource.sym} -200 30 0 0 {name=V3 value="PULSE(0 \{VIN\} 1ps \{THL\} \{THL\} \{DUTY\} \{TVIN\}) DC(\{VIN\})"}
C {capa.sym} 380 50 0 0 {name=C1
m=1
value=.1f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -320 90 0 1 {name=l2 lab=GND}
C {lab_pin.sym} -320 -30 0 0 {name=l3 sig_type=std_logic lab=vss}
C {lab_pin.sym} -260 -30 0 0 {name=l4 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -200 -30 0 0 {name=l5 sig_type=std_logic lab=in}
C {lab_pin.sym} -200 90 0 0 {name=l6 sig_type=std_logic lab=vss}
C {lab_pin.sym} -260 90 0 0 {name=l7 sig_type=std_logic lab=vss}
C {lab_pin.sym} 150 110 0 0 {name=l1 sig_type=std_logic lab=vss}
C {lab_pin.sym} 150 -90 0 0 {name=l8 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 380 110 0 0 {name=l9 sig_type=std_logic lab=vss}
C {lab_pin.sym} 90 0 0 0 {name=l10 sig_type=std_logic lab=in}
C {netlist_not_shown.sym} -150 -130 0 0 {name=sim0 only_toplevel=false value="

* parametros
.param VIN=1.8 WN=.450 WP=.90 THL=1p TVIN=100n DUTY=50n
.options TEMP=27.0

* include corners
.lib /home/eamta/skywater/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/corners/sky130.lib TT

* saves
.save all
+ @M.x1.xm1.msky130_fd_pr__nfet_01v8[id]
+ @M.x1.xm1.msky130_fd_pr__nfet_01v8[vds]
+ @M.x1.xm1.msky130_fd_pr__nfet_01v8[vgs]
+ @M.x1.xm1.msky130_fd_pr__nfet_01v8[vth]
+ @M.x1.xm2.msky130_fd_pr__pfet_01v8[id]
+ @M.x1.xm2.msky130_fd_pr__pfet_01v8[vds]
+ @M.x1.xm2.msky130_fd_pr__pfet_01v8[vgs]
+ @M.x1.xm2.msky130_fd_pr__pfet_01v8[vth]

* SIM
.control
	******************************************************
	let At=.005ns
	tran 0.005ns 250ns	

	setplot tran1
	plot v(out) v(in) .18 1.62 xlimit 50ns 50.05ns
	plot v(out) v(in) .18 1.62 xlimit 100ns 100.05ns
	*plot tran1.@M.x1.xm1.msky130_fd_pr__nfet_01v8[vds] 
	*plot tran1.@M.x1.xm1.msky130_fd_pr__nfet_01v8[id] tran1.@M.x1.xm2.msky130_fd_pr__pfet_01v8[id]

	set filetype=ascii
	write simInvTran.raw
	reset 
	******************************************************
	*dc V3 0 1.8 0.05
	*setplot dc1
	*plot v(out) v(in)
	*plot @M.x1.xm1.msky130_fd_pr__nfet_01v8[id] 
	*plot @M.x1.xm1.msky130_fd_pr__nfet_01v8[vd]
	
	*set filetype=ascii
	*write simInvDc.raw
	*reset
	******************************************************
	op

	set filetype=ascii
	write simInvOp.raw

***********************************************************	
	*analisis cuasi parametrico
	*let actParam=1ps
	*let topParam=100ps
	*let detlaParam=10ps
	
	*foreach x 1ps 10ps 20ps 30ps 40ps 50ps	
	*	alterparam THL=$x
	*	tran .01ns .1us
	*	let actParam=actParam+deltaParam
	*	print $x		
	*end
	
	*plot tran1.out tran2.out tran3.out tran4.out tran5.out tran6.out tran7.out tran8.out tran9.out 

	print all
.endc

.end
"
}
C {lab_pin.sym} 430 0 2 0 {name=l11 sig_type=std_logic lab=out}
