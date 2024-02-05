//  ***********************************************
//  *                'Test Bench'                 *
//  *              and table design               *
//  ***********************************************



module and_gate_tb;

  reg a, b;
  wire y;
  and_gate and1(.a(a), .b(b), .y(y));

  initial
  begin
    $display(" Correct table:");
    $display("              -----------------");
    $display("              |  a  b   |  y  |");
    $display("              -----------------");
    $monitor("              |  %b   %b  |  %b  |", a, b, y);
    #1 a = 0; b = 0;
    #1 a = 0; b = 1;
    #1 a = 1; b = 0;
    #1 a = 1; b = 1;
  end
endmodule