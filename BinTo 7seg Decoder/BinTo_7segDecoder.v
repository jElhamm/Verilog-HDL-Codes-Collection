//  ***************************************************
//  *                BinTo_7segDecoder                *
//  ***************************************************



module BinTo_7segDecoder (
  input [3:0] D,
  output reg [6:0] seg
);
  always @*
    case (D)
      4'b0000: seg = 7'b1000000;      // Digit 0
      4'b0001: seg = 7'b1111001;      // Digit 1
      4'b0010: seg = 7'b0100100;      // Digit 2
      4'b0011: seg = 7'b0110000;      // Digit 3
      4'b0100: seg = 7'b0011001;      // Digit 4
      4'b0101: seg = 7'b0010010;      // Digit 5
      4'b0110: seg = 7'b0000010;      // Digit 6
      4'b0111: seg = 7'b1111000;      // Digit 7
      default: seg = 7'b0000000;      // Blank display
    endcase
endmodule