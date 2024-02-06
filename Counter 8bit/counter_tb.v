//  ***********************************************
//  *               'Test Bench'                  *
//  *               Counter 8 Bit                 *
//  ***********************************************



module tbCounter;	
	wire [7:0]out;
	reg [7:0]datain;
	reg inc, clear, load, counten, clk;
	counter c(out,datain,inc, clear, load, counten, clk);
	
	always
	#5 clk = ~clk;
	initial
		begin
			clk <= 1;
			load <= 0;
			clear <= 1;
			counten <=1;
			inc <= 1;
			datain <= 8'b01101100;		
		#50
			load <= 1;
			clear <= 0;
			counten <=1;
			inc <= 1;	
		#10
			load <= 0;
			clear <= 0;
			counten <=1;
			inc <= 1;		
		#20
			load <= 0;
			clear <= 0;
			counten <=1;
			inc <= 0;
		#20
			$stop;
	end
endmodule