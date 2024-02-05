//  *************************************************
//  *                  logic Unit                   *
//  *************************************************



module m4_1(out, a, b, c, d, s1, s0);
	output out;
	input a, b, c, d, s0, s1;
	wire s0n, s1n, y0, y1, y2, y3;
	assign s0n = ~s0;
	assign s1n = ~s1;
	assign y0 = a & s1n & s0n;
	assign y1 = b & s1n & s0;
	assign y2 = c & s1 & s0n;
	assign y3 = d & s1 & s0;
	assign out = y0  y1  y2  y3;
endmodule

module lcell(out, a, b, s1, s0);
	input a, b, s0, s1;
	output out;
	wire t0, t1, t2, t3;
	and and0 (t0, a, b);
	or or0 (t1, a, b);
	xor xor0 (t2, a, b);
	not not0 (t3, a);
	m4_1 m1(out, t0, t1, t2, t3, s1, s0);
endmodule

module logicUnit(D, A, B, s1, s0);
	output [70] D;
	input [70] A, B;
	input s1, s0;
	wire [70] t0, t1, t2, t3, t4, t5, t6, t7;
	lcell l0(t0, A[0], B[0], s1, s0);
	lcell l1(t1, A[1], B[1], s1, s0);
	lcell l2(t2, A[2], B[2], s1, s0);
	lcell l3(t3, A[3], B[3], s1, s0);
	lcell l4(t4, A[4], B[4], s1, s0);
	lcell l5(t5, A[5], B[5], s1, s0);
	lcell l6(t6, A[6], B[6], s1, s0);
	lcell l7(t7, A[7], B[7], s1, s0);
	assign D = {t7, t6, t5, t4, t3, t2, t1, t0};
endmodule