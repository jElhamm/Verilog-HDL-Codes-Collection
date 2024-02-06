//  ***************************************************
//  *                 'Test Bench'                    *
//  *             Eight Bit Multiplier                *
//  ***************************************************



module EightBitMultiplier_TB;
  reg [7:0] A;
  reg [7:0] B;
  wire S_internal;
  wire [15:0] P;
  EightBitMultiplier DUT (
    .A(A),
    .B(B),
    .S(S_internal),
    .P(P)
  );
  reg S;

  initial begin
    A = 8'b00000101;
    B = 8'b00000101;
    #10;
    S = 1'b0;
    #50;
    S = 1'b1;
    #10;
    $display("Multiplying 5 by 5:");
    $display("A = %b, B = %b, P = %b", A, B, P);
    $display("-----------------------------------------------");
    A = 8'b01100100;
    B = 8'b00000010;
    #10;
    S = 1'b0;
    #50;
    S = 1'b1;
    #10;
    $display("Multiplying 100 by 2:");
    $display("A = %b, B = %b, P = %b", A, B, P);
end
endmodule