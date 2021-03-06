v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 20 -110 60 -110 { lab=vdd}
N 20 -90 60 -90 { lab=aIn}
N 20 -70 60 -70 { lab=bIn}
N 20 -50 60 -50 { lab=vss}
N 270 -50 270 -30 { lab=vss}
N -490 -140 -490 -110 { lab=vss}
N -420 -140 -420 -110 { lab=vdd}
N -350 -140 -350 -110 { lab=aIn}
N -350 20 -350 50 { lab=bIn}
N -350 110 -350 130 { lab=vss}
N -350 -50 -350 -30 { lab=vss}
N -420 -50 -420 -30 { lab=vss}
N -490 -50 -490 -30 { lab=GND}
N -490 -30 -490 -20 { lab=GND}
N 210 -110 320 -110 { lab=out}
C {vsource.sym} -490 -80 0 0 {name=V1 value=0}
C {vsource.sym} -420 -80 0 0 {name=V2 value=1.8
}
C {vsource.sym} -350 -80 0 0 {name=V3 value="PULSE(0 \{VIN\} \{aDUTY\} 1p 1p \{aDUTY\} \{aT\}) DC(\{VIN\})"}
C {capa.sym} 270 -80 0 0 {name=C1
m=1
value=.1f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -490 -20 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -490 -140 0 0 {name=l2 sig_type=std_logic lab=vss}
C {lab_pin.sym} -420 -140 0 0 {name=l3 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -350 -140 0 0 {name=l4 sig_type=std_logic lab=aIn}
C {lab_pin.sym} -350 20 0 0 {name=l5 sig_type=std_logic lab=bIn}
C {lab_pin.sym} -420 -30 0 0 {name=l6 sig_type=std_logic lab=vss}
C {lab_pin.sym} -350 -30 0 0 {name=l7 sig_type=std_logic lab=vss}
C {lab_pin.sym} -350 130 0 0 {name=l8 sig_type=std_logic lab=vss}
C {lab_pin.sym} 270 -30 0 0 {name=l9 sig_type=std_logic lab=vss}
C {lab_pin.sym} 20 -50 0 0 {name=l10 sig_type=std_logic lab=vss}
C {lab_pin.sym} 20 -110 0 0 {name=l11 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 20 -90 0 0 {name=l12 sig_type=std_logic lab=aIn}
C {lab_pin.sym} 20 -70 0 0 {name=l13 sig_type=std_logic lab=bIn}
C {lab_pin.sym} 320 -110 2 0 {name=l14 sig_type=std_logic lab=out}
C {vsource.sym} -350 80 0 0 {name=V4 value="PULSE(0 \{VIN\} \{bDUTY\} 1p 1p \{bDUTY\} \{bT\}) DC(\{VIN\})"}
C {netlist_not_shown.sym} 70 10 0 0 {name=s1 only_toplevel=false value="

* parametros
.param VIN=1.8 aT=100n aDUTY=50n bT=100n bDUTY=50n WN=.450 WP=.90
.options TEMP=27.0

* include corners
.lib /home/eamta/skywater/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/corners/sky130.lib TT

* saves
.save all
**PFETs
+ @M.x1.xm1.msky130_fd_pr__pfet_01v8[id]
+ @M.x1.xm1.msky130_fd_pr__pfet_01v8[vds]
+ @M.x1.xm1.msky130_fd_pr__pfet_01v8[vgs]
+ @M.x1.xm1.msky130_fd_pr__pfet_01v8[vth]
+ @M.x1.xm2.msky130_fd_pr__pfet_01v8[id]
+ @M.x1.xm2.msky130_fd_pr__pfet_01v8[vds]
+ @M.x1.xm2.msky130_fd_pr__pfet_01v8[vgs]
+ @M.x1.xm2.msky130_fd_pr__pfet_01v8[vth]
+ @M.x1.xm5.msky130_fd_pr__pfet_01v8[id]
+ @M.x1.xm5.msky130_fd_pr__pfet_01v8[vds]
+ @M.x1.xm5.msky130_fd_pr__pfet_01v8[vgs]
+ @M.x1.xm5.msky130_fd_pr__pfet_01v8[vth]
**NFETs
+ @M.x1.xm3.msky130_fd_pr__nfet_01v8[id]
+ @M.x1.xm3.msky130_fd_pr__nfet_01v8[vds]
+ @M.x1.xm3.msky130_fd_pr__nfet_01v8[vgs]
+ @M.x1.xm3.msky130_fd_pr__nfet_01v8[vth]
+ @M.x1.xm4.msky130_fd_pr__nfet_01v8[id]
+ @M.x1.xm4.msky130_fd_pr__nfet_01v8[vds]
+ @M.x1.xm4.msky130_fd_pr__nfet_01v8[vgs]
+ @M.x1.xm4.msky130_fd_pr__nfet_01v8[vth]
+ @M.x1.xm6.msky130_fd_pr__nfet_01v8[id]
+ @M.x1.xm6.msky130_fd_pr__nfet_01v8[vds]
+ @M.x1.xm6.msky130_fd_pr__nfet_01v8[vgs]
+ @M.x1.xm6.msky130_fd_pr__nfet_01v8[vth]

* SIM
.control
	******************************************************
	*let At=.005ns
	
	tran 0.005ns 500ns	

	setplot tran1
	**comportamiento
	*plot v(aIn) v(bIn)+2 v(out)+4
	**rise/fall
	plot v(out) v(aIn) .18 1.62 xlimit 99.95ns 100.15ns
	plot v(out) v(aIn) .18 1.62 xlimit 149.999ns 150.020ns
	**sos inimputable
	*plot tran1.@M.x1.xm1.msky130_fd_pr__nfet_01v8[vds] 
	*plot tran1.@M.x1.xm1.msky130_fd_pr__nfet_01v8[id] tran1.@M.x1.xm2.msky130_fd_pr__pfet_01v8[id]

	*set filetype=ascii
	*write simInvTran.raw
	*reset 
	******************************************************
	*alterparam bDUTY=100n
	*dc V3 0 1.8 0.01
	*alterparam aDUTY=100n
	*dc V4 0 1.8 0.01
	*dc V3 0 1.8 0.01 V4 0 1.8 0.01 	
	
	*setplot dc1
	*plot dc1.out vs dc1.aIn dc2.out vs dc2.bIn dc3.out vs dc3.aIn   
	*plot @M.x1.xm1.msky130_fd_pr__nfet_01v8[id] 
	*plot @M.x1.xm1.msky130_fd_pr__nfet_01v8[vd]
	
	*set filetype=ascii
	*write simInvDc.raw
	*reset
	******************************************************
	op

	set filetype=ascii
	write simInvOp.raw
	reset

***********************************************************	
	*analisis cuasi parametrico
	*tran 0.001ns 200ns

	*alterparam WP=1.35
	*tran 0.001ns 200ns

	*alterparam WP=1.5
	*tran 0.001ns 200ns
	
	*plot tran1.out tran2.out tran3.out v(aIn) .18 1.62 xlimit 99.95ns 100.15ns
	*plot tran1.out tran2.out tran3.out v(aIn) .18 1.62 xlimit 149.999ns 150.020ns 

	print all
.endc

.end
"
}
C {or/or.sym} 210 -80 0 0 {name=x1}
