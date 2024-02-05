//  *************************************************
//  *               decoder 2to4                    *
//  *************************************************


module Decoder2x4(input x, input y, input E, output D0, output D1, output D2, output D3);
   wire nx, ny, nE;
   assign nx = ~x;
   assign ny = ~y;
   assign nE = ~E;

   assign D0 = nx & ny & E;
   assign D1 = x & ny & E;
   assign D2 = nx & y & E;
   assign D3 = nE & x & y;
endmodule
