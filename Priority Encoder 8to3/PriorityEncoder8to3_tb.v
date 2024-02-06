//  *****************************************************
//  *                   'Test Bench'                    *
//  *               Priority Encoder 8to3               *
//  *****************************************************



module PriorityEncoder8to3_tb;
  reg [7:0] dataIn;
  wire [2:0] codeOut;

  PriorityEncoder8to3 encoder(
    .dataIn(dataIn),
    .codeOut(codeOut)
  );

  initial begin
    dataIn = 8'b00000001;
    #10;
    $display("---------------------------------------");
    $display("|  dataIn: %b  |  codeOut: %b  |", dataIn, codeOut);

    dataIn = 8'b0000001X;
    #10;
    $display("|  dataIn: %b  |  codeOut: %b  |", dataIn, codeOut);

    dataIn = 8'b000001XX;
    #10;
    $display("|  dataIn: %b  |  codeOut: %b  |", dataIn, codeOut);

    dataIn = 8'b00001XXX;
    #10;
    $display("|  dataIn: %b  |  codeOut: %b  |", dataIn, codeOut);

    dataIn = 8'b0001XXXX;
    #10;
    $display("|  dataIn: %b  |  codeOut: %b  |", dataIn, codeOut);

    dataIn = 8'b00000000;
    #10;
    $display("|  dataIn: %b  |  codeOut: %b  |", dataIn, codeOut);
    $display("---------------------------------------");
  end
endmodule