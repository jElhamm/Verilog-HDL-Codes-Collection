//  ***************************************************
//  *               Shift Register                    *
//  ***************************************************



module shiftreg(out,sout,datain,sin,op,clk);
  input [7:0] datain;
  input [2:0] op;
  input sin, clk;
  output [7:0] out;
  output sout;
  reg [7:0] out;
  reg sout;
  
  always @(posedge clk) begin
    case (op)
      3'b000: out <= 8'hFF;
      3'b001: out <= {sin, out[7:1]};
      3'b010: out <= {1'b0, out[7:1]};
      3'b011: out <= {out[6:0], 1'b0};
      3'b100: out <= {out[6:0], ~out[7]};
      3'b101: out <= {~out[0], out[7:1]};
      3'b110: out <= datain;
      3'b111: out <= {out[1:0], out[7:2]};
    endcase
    sout <= out[0];
  end
endmodule