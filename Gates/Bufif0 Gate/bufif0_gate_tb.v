//  **************************************************
//  *                'Test Bench'                    *
//  *             bufif0 table design                *
//  **************************************************


module bufif0_gate_tb;

  reg a, b;
  wire y;
  bufif0_gate bufif0_1(.a(a), .enable(b), .y(y));

  initial
  begin
    $display(" Correct table:");
    $display("              --------------------");
    $display("              | a  enable   |  y |");
    $monitor("              | %b   %b       |  %b |", a, b, y);
    #1 a = 0; b = 0;
    #1 a = 0; b = 1;
    #1 a = 1; b = 0;
    #1 a = 1; b = 1;
  end
endmodule