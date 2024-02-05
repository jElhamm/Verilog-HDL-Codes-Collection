//  ***********************************************
//  *               'Test Bench'                  *
//  *             xor table design                *
//  ***********************************************


module xor_gate_tb;
  reg a, b;
  wire y;
  xor_gate xor1(.a(a), .b(b), .y(y));

  initial
  begin
    $display("a  b  |  y");
    $monitor("%b   %b  |  %b", a, b, y);
    #1 a = 0; b = 0;
    #1 a = 0; b = 1;
    #1 a = 1; b = 0;
    #1 a = 1; b = 1;
    $finish;
  end

endmodule