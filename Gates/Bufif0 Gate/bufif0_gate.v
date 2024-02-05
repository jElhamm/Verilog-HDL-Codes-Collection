//  **************************************************
//  *              bufif0 table design               *
//  **************************************************


module bufif0_gate(input a, input enable, output y);
  assign y = enable ? a : 0;
endmodule