//  ***********************************************
//  *               'Test Bench'                  *
//  *             multiplexer 2to1                *
//  ***********************************************



module mux_2to1_tb;
  reg a, b, s;
  wire y;
  multiplexer_2to1 dut(a, b, s, y);
  
  initial begin
    $monitor("Input: a=%b, b=%b, s=%b, Output: y=%b", a, b, s, y);
    
    // Test cases for all possible input combinations
    // Uncomment/comment the test cases based on your needs
    
    // Test case: a=0, b=0, s=0
    #10;
    a = 0; b = 0; s = 0;
    
    // Test case: a=0, b=0, s=1
    #10;
    a = 0; b = 0; s = 1;
    
    // Test case: a=0, b=1, s=0
    #10;
    a = 0; b = 1; s = 0;
    
    // Test case: a=0, b=1, s=1
    #10;
    a = 0; b = 1; s = 1;
    
    // Test case: a=1, b=0, s=0
    #10;
    a = 1; b = 0; s = 0;
    
    // Test case: a=1, b=0, s=1
    #10;
    a = 1; b = 0; s = 1;
    
    // Test case: a=1, b=1, s=0
    #10;
    a = 1; b = 1; s = 0;
    
    // Test case: a=1, b=1, s=1
    #10;
    a = 1; b = 1; s = 1;
  end
endmodule