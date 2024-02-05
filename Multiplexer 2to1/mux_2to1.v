//  ***********************************************
//  *              multiplexer 2to1               *
//  ***********************************************



module multiplexer_2to1 (
  input wire in0, in1, s,
  output wire out
);
  bufif0_gate b1 (.a(in0), .y(y1), .enable(s));
  bufif0_gate b2 (.a(in1), .y(y2), .enable(s));
  assign out = (s) ? y2 : y1;
    
endmodule