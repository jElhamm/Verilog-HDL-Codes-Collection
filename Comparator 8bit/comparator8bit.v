//  ***********************************************
//  *      Question 5  : comparator 8bit          *
//  *      producer    : Elham Jafari             *
//  *      student number: 140053677012           *
//  ***********************************************


module comparator8bit (
  input [7:0] A,
  input [7:0] B,
  output less,
  output equal,
  output More,
  output AeqB,
  output AltB,
  output AgtB
);

  assign less = (A < B);
  assign equal = (A == B);
  assign More = (A > B);
  assign AeqB = equal;
  assign AltB = less;
  assign AgtB = More;

endmodule