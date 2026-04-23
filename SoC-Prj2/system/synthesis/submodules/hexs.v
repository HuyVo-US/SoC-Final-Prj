module hexs (
	input				iClk,
	input 			iReset_n,
	input 			iChipSelect_n,
	input				iWrite_n,
	input [1:0]		iAddress,
	input [31:0]	iData,
	output reg [6:0] oHex0,
	output reg [6:0] oHex1,
	output reg [6:0] oHex2,
	output reg [6:0] oHex3,
	output reg [6:0] oHex4,
	output reg [6:0] oHex5
);

	reg [15:0] sec;
	reg [15:0] min;
	reg [15:0] hour;
	
	always@(posedge iClk, negedge iReset_n) begin
		if (~iReset_n) begin
			sec  <= 16'd0;
			min  <= 16'd0;
			hour <= 16'd0;
      end else if (~iChipSelect_n && ~iWrite_n) begin
			case (iAddress)
				2'd0: sec  <= iData[15:0];
            2'd1: min  <= iData[15:0];
            2'd2: hour <= iData[15:0];
			endcase
      end
	end
	
	decoder dec0 ( .iData(sec[3:0]),  .oData(oHex0) );
   decoder dec1 ( .iData(sec[7:4]),  .oData(oHex1) );
   decoder dec2 ( .iData(min[3:0]),  .oData(oHex2) );
   decoder dec3 ( .iData(min[7:4]),  .oData(oHex3) );
   decoder dec4 ( .iData(hour[3:0]), .oData(oHex4) );
   decoder dec5 ( .iData(hour[7:4]), .oData(oHex5) );
endmodule