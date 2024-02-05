//  *************************************************
//  *                 decoder 2to4                  *
//  *************************************************


module decoder_2to4 (
  input x, y, E,
  output D0, D1, D2, D3
);
  assign D0 = (x & ~y & ~E);
  assign D1 = (x & ~y & E);
  assign D2 = (x & y & ~E);
  assign D3 = (x & y & E);
endmodule