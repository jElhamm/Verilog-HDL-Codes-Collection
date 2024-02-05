//  *************************************************
//  *                 decoder 2to4                  *
//  *************************************************


module nand_gate(
  input wire a, b, c,
  output reg out
);
  always @* begin
    out = ~(a & b & c);
  end
endmodule