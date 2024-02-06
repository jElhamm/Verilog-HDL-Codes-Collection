//  ***************************************************
//  *             Eight Bit Multiplier                *
//  ***************************************************



module EightBitMultiplier (
  input wire [7:0] A,
  input wire [7:0] B,
  input wire S,
  output reg [15:0] P
);
  reg [7:0] RA;
  reg [7:0] RB;
  reg S_internal;

  always @(posedge S or posedge S_internal) begin
    S_internal <= S;
    if (S == 1'b1) begin
      RA <= A;
      RB <= B;
      P <= 16'b0;
    end
    else begin
      if (RB == 8'b0) begin
        S_internal <= 1'b0;
      end
      else begin
        P <= P + RA;
        RB <= RB - 1;
      end
    end
  end
endmodule