//  ***********************************************
//  *      'Test Bench'                           *
//  *      Question 5  : comparator 8bit          *
//  *      producer    : Elham Jafari             *
//  *      student number: 140053677012           *
//  ***********************************************


module comparator_8bit_tb;
  parameter WIDTH = 8;
  reg [WIDTH-1:0] A;
  reg [WIDTH-1:0] B;
  wire less;
  wire equal;
  wire More;
  wire AeqB;
  wire AltB;
  wire AgtB;
  reg [WIDTH-1:0] previous_A;
  reg [WIDTH-1:0] previous_B;

  comparator8bit dut(
    .A(A),
    .B(B),
    .less(less),
    .equal(equal),
    .More(More),
    .AeqB(AeqB),
    .AltB(AltB),
    .AgtB(AgtB)
  );

  always @(A, B, less, equal, More, AeqB, AltB, AgtB, previous_A, previous_B) begin
    $display("---------------------------");
    $display("# A = %b", A);
    $display("# B = %b", B);
    $display("# less = %b", less);
    $display("# equal = %b", equal);
    $display("# More = %b", More);
    $display("# AeqB = %b", AeqB);
    $display("# AltB = %b", AltB);
    $display("# AgtB = %b", AgtB);
  end

  initial begin
    // Initial values
    A = 8'b00000000; B = 8'b00000000; previous_A = A; previous_B = B; #10;
    A = 8'b11111111; B = 8'b11111111; previous_A = A; previous_B = B; #10;
    A = 8'b00000001; B = 8'b00000010; previous_A = A; previous_B = B; #10;
    A = 8'b00000010; B = 8'b00000001; previous_A = A; previous_B = B; #10;
    A = 8'b00010000; B = 8'b00001000; previous_A = A; previous_B = B; #10;
  end
endmodule