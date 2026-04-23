module hexs
(
	input iClk,
	input iReset_n,
	input iChipSelect_n,
	input iWrite_n,
	input [2:0] iAddress,
	input [31:0] iData,
	output reg [6:0] oHex0,
	output reg [6:0] oHex1,
	output reg [6:0] oHex2,
	output reg [6:0] oHex3,
	output reg [6:0] oHex4,
	output reg [6:0] oHex5
);

	reg [3:0] hex_data [5:0];
	always@(posedge iClk, negedge iReset_n) begin
		if (~iReset_n) begin
			hex_data[0]  <= 7'b1111111;
         hex_data[1]  <= 7'b1111111;
			hex_data[2]  <= 7'b1111111;
			hex_data[3]  <= 7'b1111111;
			hex_data[4]  <= 7'b1111111;
			hex_data[5]  <= 7'b1111111;
      end else if (~iChipSelect_n & ~iWrite_n) begin
			case (iAddress)
				3'd0: hex_data[0]  <= iData[3:0];
				3'd1: hex_data[1]  <= iData[3:0];
				3'd2: hex_data[2]  <= iData[3:0];
				3'd3: hex_data[3]  <= iData[3:0];
				3'd4: hex_data[4]  <= iData[3:0];
				3'd5: hex_data[5]  <= iData[3:0];
			endcase
      end
	end
	decoder dec0 ( .idata(hex_data[0]),  .odata(oHex0) );
   decoder dec1 ( .idata(hex_data[1]),  .odata(oHex1) );
   decoder dec2 ( .idata(hex_data[2]),  .odata(oHex2) );
   decoder dec3 ( .idata(hex_data[3]),  .odata(oHex3) );
   decoder dec4 ( .idata(hex_data[4]),  .odata(oHex4) );
   decoder dec5 ( .idata(hex_data[5]),  .odata(oHex5) );
endmodule