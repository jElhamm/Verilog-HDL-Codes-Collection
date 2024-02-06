//  ***************************************************
//  *                 'Test Bench'                    *
//  *               BinTo_7segDecoder                 *
//  ***************************************************



module BinTo_7segDecoder_tb;
  reg [3:0] D;
  wire [6:0] seg;

  // Instantiate the decoder module
  BinTo_7segDecoder dut (
    .D(D),
    .seg(seg)
  );

  initial begin
    // Simulate input values
    D = 4'b0000;
    #10 D = 4'b0001;
    #10 D = 4'b0010;
    #10 D = 4'b0011;
    #10 D = 4'b0100;
    #10 D = 4'b0101;
    #10 D = 4'b0110;
    #10 D = 4'b0111;
    #10 D = 4'b1111;        // Test default case

    $display("Conversion Table:");
    $display("------------------");
    $display("|  D  |  seg  |");
    $display("------------------");
    for (D = 0; D < 7; D = D + 1) begin
      $display("| %4b | %7b |", D, seg);
      #10;
    end
    $display("------------------");
  end
endmodule