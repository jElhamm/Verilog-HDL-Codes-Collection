//  ***********************************************
//  *                 RAM 1024x8                  *
//  ***********************************************



module ram(out, datain, address, wr, rd);
	output [7:0]out;
	input [7:0]datain;
	input [9:0]address;
	input wr,rd;
	reg [7:0]out;
	reg [7:0]mem[0:1023];
	
	always @(wr or rd or datain or address)
	begin
		if (wr==1'b1)
			mem[address] <= datain;
		else if (rd == 1'b1)
			out <= mem[address];
	end
endmodule