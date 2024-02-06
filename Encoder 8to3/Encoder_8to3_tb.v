//  ***********************************************
//  *                'Test Bench'                 *
//  *                Encoder 8to3                 *
//  ***********************************************



module Encoder_8to3_tb;
  reg [7:0] dataIn;
  wire [2:0] codeOut;

  Encoder_8to3 encoder(
    .dataIn(dataIn),
    .codeOut(codeOut)
  );

  initial begin
    dataIn = 8'b00000001;
    #10;
    $display("---------------------------------------");
    $display("|  dataIn: %b  |  codeOut: %b  |", dataIn, codeOut);
    
    dataIn = 8'b00000010;
    #10;
    $display("|  dataIn: %b  |  codeOut: %b  |", dataIn, codeOut);
    
    dataIn = 8'b00000100;
    #10;
    $display("|  dataIn: %b  |  codeOut: %b  |", dataIn, codeOut);
    
    dataIn = 8'b00001000;
    #10;
    $display("|  dataIn: %b  |  codeOut: %b  |", dataIn, codeOut);
    
    dataIn = 8'b00010000;
    #10;
    $display("|  dataIn: %b  |  codeOut: %b  |", dataIn, codeOut);
    
    dataIn = 8'b00000000;
    #10;
    $display("|  dataIn: %b  |  codeOut: %b  |", dataIn, codeOut);
    $display("---------------------------------------");

    $finish;
  end
endmodule