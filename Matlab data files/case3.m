function mpc = case3
%CASE9    Power flow data for 3 bus, 2 generator case.
%   Please see CASEFORMAT for details on the case file format.
%
%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 100;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	3	0	0	0	0	1	1	0	345	1	1.05	0.95;
	2	2	352.5   0	0	0	1	1	-80	345	1	1.05	0;
	3	1	0	0	0	0	1	1	-80	345	1	1.05	0.95;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	400	0	600	-600	1	100	1	1000	0	0	0	0	0	0	0	0	0	0	0	0;
	3	0	200	600	-600	1	100	1	0	0	0	0	0	0	0	0	0	0	0	0	0;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	2	0.04	0.2	0	9999	9999	9999	0	0	1	-360	360;
%    2	3	0.04	0.2	0	9999	9999	9999	0	0	1	-360	360;
	2	3	0.0009	0.001	0	9999	9999	9999	0	0	1	-360	360;
];

%% generator cost data
%	1	startup	shutdown	n	x1	y1	...	xn	yn
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	0	0	3	0	1	0;
	2	0	0	3	0	1	0;
];
