//  *************************************************
//  *                 decoder 2to4                  *
//  *************************************************


module not_gates(
  input wire in,
  output reg out
);
  always @* begin
    out = ~in;
  end
endmodule