//  ***********************************************
//  *                'Test Bench'                 *
//  *                 RAM 1024x8                  *
//  ***********************************************



module tbram;
	reg [7:0]datain;
	reg [9:0]address;
	reg wr,rd;
	wire [7:0]out;
	ram r(out, datain, address, wr, rd);
	
	initial
	begin
		$monitor("wr=%b, rd=%b, datain=%x, address=%d, out=%x",wr,rd,datain,address,out);
		datain<=8'h70;
		address<=1;
		wr<=1'b1;
		rd<=1'b0;
		#5
		datain<=8'h2C;
		address<=3;
		wr<=1'b1;
		rd<=1'b0;
		#5
		datain<=8'h2C;
		address<=4;
		wr<=1'b0;
		rd<=1'b0;
		#5
		datain<=8'h27;
		address<=3;
		wr<=1'b0;
		rd<=1'b1;
		#5
		$stop;
	end
endmodule