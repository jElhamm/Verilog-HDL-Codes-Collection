//  ***********************************************
//  *              xor table design               *
//  ***********************************************


module xor_gate(input a, input b, output y);
  assign y = a ^ b;    // The output y is the result of bitwise exclusive OR (XOR) operation between inputs a and b.
endmodule