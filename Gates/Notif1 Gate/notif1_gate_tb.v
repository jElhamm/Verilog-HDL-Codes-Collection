//  **************************************************
//  *                'Test Bench'                    *
//  *              notif1 table design               *
//  **************************************************


module notif1_gate_tb;

  reg a, b;
  wire y;
  notif1_gate notif1_1(.a(a), .y(y));

  initial
  begin
    $display(" Correct table:");
    $display("              -----------------");
    $display("              | a  enable   |  y");
    $monitor("              | %b   %b       |  %b", a, b, y);
    #1 a = 0; b = 0;
    #1 a = 0; b = 1;
    #1 a = 1; b = 0;
    #1 a = 1; b = 1;
  end
endmodule