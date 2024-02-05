//  *************************************************
//  *                decoder 3to8                   *
//  *************************************************


module Decoder3x8(input x, input y, input z, output [7:0] D);
  wire [3:0] D0, D1, D2, D3;
  Decoder2x4 u1(x, y, z, D0[0], D1[0], D2[0], D3[0]);
  Decoder2x4 u2(x, y, ~z, D0[1], D1[1], D2[1], D3[1]);
  assign D = {D3[0], D2[0], D1[0], D0[0], D3[1], D2[1], D1[1], D0[1]};
endmodule