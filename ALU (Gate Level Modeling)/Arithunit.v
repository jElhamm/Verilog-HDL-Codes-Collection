//  *************************************************
//  *                   Arith Unit                  *
//  *************************************************


module fulladd(sum, c_out, a, b, c_in);
	output sum,c_out;
	input a,b, c_in;
	wire s1,c1,c2;
	xor (s1,a,b);
	and (c1,a,b);
	xor (sum,s1,c_in);
	and (c2,s1,c_in);
	xor (c_out,c2,c1);
endmodule

module m41(out, a,b,c,d, s1, s0);
	output out;
	input a,b,c,d, s0, s1;
	wire s0n,s1n,y0,y1,y2,y3;
	not (s0n, s0),(s1n, s1);	
	and (y0, a, s1n, s0n),(y1, b, s1n, s0),(y2, c, s1, s0n), (y3, d, s1, s0);
	or(out, y0,y1,y2,y3);
endmodule
	
module arithcell(out, c_out, a, b, s1,s0,c_in);
	input a,b,s1,s0,c_in;
	output out,c_out;
	wire y,bn;
	not (bn,b);
	fulladd fa(out,c_out,a,y,c_in);
	m41 m(y,b,bn,1'b0,1'b1,s1,s0);
endmodule

module arithunit(D,C_out,z,A,B,s1,s0,C_in);
	input [7:0]A,B;
	input s1,s0,C_in;
	output [7:0]D;
	output z,C_out;
	wire c0,c1,c2,c3,c4,c5,c6,c7;
	arithcell ac0(D[0], c0, A[0], B[0], s1, s0, C_in); 
	arithcell ac1(D[1], c1, A[1], B[1], s1, s0, c0); 
	arithcell ac2(D[2], c2, A[2], B[2], s1, s0, c1); 
	arithcell ac3(D[3], c3, A[3], B[3], s1, s0, c2); 
	arithcell ac4(D[4], c4, A[4], B[4], s1, s0, c3); 
	arithcell ac5(D[5], c5, A[5], B[5], s1, s0, c4); 
	arithcell ac6(D[6], c6, A[6], B[6], s1, s0, c5); 
	arithcell ac7(D[7], C_out, A[7], B[7], s1, s0, c6); 
	nor (z,D[0],D[1],D[2],D[3],D[4],D[5],D[6],D[7]);

endmodule