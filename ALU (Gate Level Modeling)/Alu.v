//  *************************************************
//  *                    Alu                        *
//  *************************************************



module alu(D, C_out, z, A, B, C_in, S);
	input [7:0]A,B;
	input [3:0]S;
	input C_in;
	output [7:0]D;
	output C_out, z;
	wire [7:0]t0;
	wire [7:0]t1;
	logicUnit lu(t1, A, B, S[1], S[0]);
	arithunit au(t0, C_out, z, A, B, S[1], S[0], C_in);
	m418 m(t0, t1, {1'b0,A[7:1]}, {A[6:0],1'b0},S[3:2],D);
endmodule
	
module m41(out, a,b,c,d, s1, s0);
	output out;
	input a,b,c,d, s0, s1;
	wire s0n,s1n,y0,y1,y2,y3;
	not (s0n, s0),(s1n, s1);	
	and (y0, a, s1n, s0n),(y1, b, s1n, s0),(y2, c, s1, s0n), (y3, d, s1, s0);
	or(out, y0,y1,y2,y3);
endmodule

module m418(a, b, c, d, s,out);
	output [7:0]out;
	input [7:0]a, b, c, d;
	input [1:0]s;
	m41 m0(out[0], a[0], b[0], c[0], d[0], s[1], s[0]);
	m41 m1(out[1], a[1], b[1], c[1], d[1], s[1], s[0]);
	m41 m2(out[2], a[2], b[2], c[2], d[2], s[1], s[0]);
	m41 m3(out[3], a[3], b[3], c[3], d[3], s[1], s[0]);
	m41 m4(out[4], a[4], b[4], c[4], d[4], s[1], s[0]);
	m41 m5(out[5], a[5], b[5], c[5], d[5], s[1], s[0]);
	m41 m6(out[6], a[6], b[6], c[6], d[6], s[1], s[0]);
	m41 m7(out[7], a[7], b[7], c[7], d[7], s[1], s[0]);
endmodule