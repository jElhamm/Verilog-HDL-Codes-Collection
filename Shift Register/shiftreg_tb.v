//  ***************************************************
//  *                 'Test Bench'                    *
//  *                Shift Register                   *
//  ***************************************************



module shiftreg_tb;
  reg [7:0] datain;
  reg [2:0] op;
  reg sin;
  reg clk;
  wire [7:0] out;
  wire sout;
  shiftreg dut(out, sout, datain, sin, op, clk);
  
  initial begin
    // Test case 1: Set to FF
    op = 3'b000;
    sin = 0;
    datain = 8'h00;
    clk = 0;
    #10;
    $display("Output for 'Set to FF': %h", out);
    
    // Test case 2: Shift Left
    op = 3'b001;
    sin = 1;
    datain = 8'h00;
    #10;
    $display("Output for 'Shift Left': %h", out);
    
    // Test case 3: Rotate Left
    op = 3'b010;
    #10;
    $display("Output for 'Rotate Left': %h", out);
    
    // Test case 4: Shift Right Logical
    op = 3'b011;
    #10;
    $display("Output for 'Shift Right Logical': %h", out);
    
    // Test case 5: Shift Right Arithmetic
    op = 3'b100;
    #10;
    $display("Output for 'Shift Right Arithmetic': %h", out);
    
    // Test case 6: Rotate Right
    op = 3'b101;
    #10;
    $display("Output for 'Rotate Right': %h", out);
    
    // Test case 7: Parallel Load
    op = 3'b110;
    datain = 8'hFF;
    #10;
    $display("Output for 'Parallel Load': %h", out);
    
    // Test case 8: Clear
    op = 3'b111;
    #10;
    $display("Output for 'Clear': %h", out);
  end
endmodule