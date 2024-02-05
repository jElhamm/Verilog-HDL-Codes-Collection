//  *************************************************
//  *                'Test Bench'                   *
//  *                decoder 3to8                   *
//  *************************************************


module Decoder3x8_tb;
  reg x, y, z;
  wire [7:0] D;
  Decoder3x8 dut(x, y, z, D);

  initial begin
    $display("***********************************************************");
    $display("Display the status of inputs and outputs:\n");
    $display("----------------------------------------------");
    $display("x\ty\tz\t|\tD7\tD6\tD5\tD4\tD3\tD2\tD1\tD0");
    $monitor("%b\t%b\t%b\t|\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", x, y, z, D[7], D[6], D[5], D[4], D[3], D[2], D[1], D[0],);

    x = 0; y = 0; z = 0;
    #10;
    x = 0; y = 0; z = 1;
    #10;
    x = 0; y = 1; z = 0;
    #10;
    x = 0; y = 1; z = 1;
    #10;
    x = 1; y = 0; z = 0;
    #10;
    x = 1; y = 0; z = 1;
    #10;
    x = 1; y = 1; z = 0;
    #10;
    x = 1; y = 1; z = 1;
    #10;
  end
endmodule