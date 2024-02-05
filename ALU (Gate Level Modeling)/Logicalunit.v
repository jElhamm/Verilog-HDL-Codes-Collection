//  *************************************************
//  *                   logic Unit                 *
//  *************************************************



module m4_1(out, a,b,c,d, s1, s0);
	output out;
	input a,b,c,d, s0, s1;
	wire s0n,s1n,y0,y1,y2,y3;
	not (s0n, s0),(s1n, s1);
	and (y0, a, s1n, s0n),(y1, b, s1n, s0),(y2, c, s1, s0n), (y3, d, s1, s0);
	or(out, y0,y1,y2,y3);
endmodule

module lcell(out,a,b,s1,s0);
	input a,b,s0,s1;
	output out;
	wire t0,t1,t2,t3;
	m4_1 m1(out, t0,t1,t2,t3,s1,s0);
	and (t0,a,b);
	or (t1,a,b);
	xor (t2,a,b);
	not (t3,a);
endmodule

module logicUnit(D,A,B,s1,s0);
	output [7:0]D;
	input [7:0]A,B;
	input s1,s0;
	lcell l0(D[0],A[0],B[0],s1,s0);
	lcell l1(D[1],A[1],B[1],s1,s0);
	lcell l2(D[2],A[2],B[2],s1,s0);
	lcell l3(D[3],A[3],B[3],s1,s0);
	lcell l4(D[4],A[4],B[4],s1,s0);
	lcell l5(D[5],A[5],B[5],s1,s0);
	lcell l6(D[6],A[6],B[6],s1,s0);
	lcell l7(D[7],A[7],B[7],s1,s0);
endmodule