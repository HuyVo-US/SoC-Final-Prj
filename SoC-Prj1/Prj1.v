module Prj1 (
	input					CLOCK_50,
	input		[0:0]		KEY,
	input		[9:0]		SW,
	output	[6:0]		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5
);

	system NIOS_system (
		.clk_clk										(CLOCK_50),
		.hex0_external_connection_export		(HEX0),
		.hex1_external_connection_export		(HEX1),
		.hex2_external_connection_export		(HEX2),
		.hex3_external_connection_export		(HEX3),
		.hex4_external_connection_export		(HEX4),
		.hex5_external_connection_export		(HEX5),
		.reset_reset_n								(KEY[0]),
		.switch_external_connection_export	({22'd0,SW})
	);
endmodule
