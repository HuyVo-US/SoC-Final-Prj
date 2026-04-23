module decoder (
	input			[3:0] iData,
	output reg	[6:0] oData
);

	always @(*) begin
		case (iData)
			4'h0: oData = 7'b1000000;
         4'h1: oData = 7'b1111001;
         4'h2: oData = 7'b0100100;
         4'h3: oData = 7'b0110000;
         4'h4: oData = 7'b0011001;
         4'h5: oData = 7'b0010010;
         4'h6: oData = 7'b0000010;
         4'h7: oData = 7'b1111000;
         4'h8: oData = 7'b0000000;
         4'h9: oData = 7'b0010000;
         default: oData = 7'b1111111;
		endcase
	end
endmodule
