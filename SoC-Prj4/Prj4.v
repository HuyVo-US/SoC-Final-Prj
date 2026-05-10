module Prj4(
	input			CLOCK__50,
	input	[0:0]	KEY
);

	system Nios_system(
		.clk_clk			(CLOCK_50),
		.reset_reset_n	(KEY[0])
	);
endmodule
