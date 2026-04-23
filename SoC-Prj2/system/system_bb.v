
module system (
	clk_clk,
	hexs_0_conduit_end_hex0,
	hexs_0_conduit_end_hex1,
	hexs_0_conduit_end_hex2,
	hexs_0_conduit_end_hex3,
	hexs_0_conduit_end_hex4,
	hexs_0_conduit_end_hex5,
	reset_reset_n,
	switches_0_conduit_end_export);	

	input		clk_clk;
	output	[6:0]	hexs_0_conduit_end_hex0;
	output	[6:0]	hexs_0_conduit_end_hex1;
	output	[6:0]	hexs_0_conduit_end_hex2;
	output	[6:0]	hexs_0_conduit_end_hex3;
	output	[6:0]	hexs_0_conduit_end_hex4;
	output	[6:0]	hexs_0_conduit_end_hex5;
	input		reset_reset_n;
	input	[31:0]	switches_0_conduit_end_export;
endmodule
