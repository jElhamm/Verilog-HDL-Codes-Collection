//  ***********************************************
//  *               Counter 8 Bit                 *
//  ***********************************************



module counter(out, datain, inc, clear, load, counten, clk);
	output [7:0]out;
	input [7:0]datain;
	input inc, clear, load, counten, clk;
	reg [7:0]out;
	
	always @(posedge clk)
	begin
		if (clear == 1'b1)
			out <= 8'b00000000;
		else if (load == 1)
			out <= datain[7:0];
		else if (counten == 1'b1)
		begin 
			if (inc == 1'b1)
				out <= out +1;
			else 
				out <= out-1;
		end
	end
endmodule