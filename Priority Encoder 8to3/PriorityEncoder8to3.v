//  *****************************************************
//  *              Priority Encoder 8to3                *
//  *****************************************************



module PriorityEncoder8to3(input [7:0] dataIn, output [2:0] codeOut);
  reg [7:0] inputReg;
  reg [2:0] codeReg;

  always @(dataIn) begin
    inputReg <= dataIn;
    case (inputReg)
      8'b00000001: codeReg <= 3'b000;
      8'b0000001X: codeReg <= 3'b001;
      8'b000001XX: codeReg <= 3'b010;
      8'b00001XXX: codeReg <= 3'b011;
      8'b0001XXXX: codeReg <= 3'b100;
      8'b001XXXXX: codeReg <= 3'b101;
      8'b01XXXXXX: codeReg <= 3'b110;
      8'b1XXXXXXX: codeReg <= 3'b111;
      default: codeReg <= 3'bxxx;
    endcase
  end
  assign codeOut = codeReg;
endmodule