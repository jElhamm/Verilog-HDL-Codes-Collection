//  *************************************************
//  *               'Test Bench'                    *
//  *                   Alu                         *
//  *************************************************



module tbAlu;
	reg [7:0]A,B;
	reg [3:0]S;
	reg C_in;
	wire [7:0]D;
	wire C_out, z;
	alu a(D, C_out, z, A, B, C_in, S);
	initial 
	begin
		$monitor("A=%d, B=%d, C_in=%b, S=%b, D=%d, C_out=%b, z=%b",A,B,C_in,S,D,C_out,z);
		#0	A=81;B=80;S=4'b0000; C_in=1;
		#5	S=4'b0100;
		#5  S=4'b1000;
		#5  S=4'b1100;
		#5  $stop;
	end 
endmodule