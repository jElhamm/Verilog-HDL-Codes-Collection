# Encoder 8to3

   This code represents an 8-to-3 Encoder module in [Verilog](https://en.wikipedia.org/wiki/Verilog#:~:text=Verilog%2C%20standardized%20as%20IEEE%201364,register%2Dtransfer%20level%20of%20abstraction.). The code is implemented at the Behavioral Level.

## Correct Table

   * This block is described and simulated at the behavioral level:

                              __________________________________________________
                              |                                                 |
                              |          dataIn              codeOut            |
                              |-------------------------------------------------|
                              |          8'b00000001           000              |
                              |          8'b00000010           001              |
                              |          8'b00000100           010              |
                              |          8'b00001000           011              |
                              |          8'b00010000           100              |
                              |          8'b00100000           101              |
                              |          8'b01000000           110              |
                              |          8'b10000000           111              |
                              |          else                 3'bxxx            |
                              |_________________________________________________|
                              
## Description:
	
   * It takes an 8-bit input signal called "dataIn" and generates a 3-bit output signal called "codeOut" based on the input value.

   * Inside the always block, a case statement is used to compare the value of "dataIn" with different patterns. 
   Depending on the input value, the corresponding 3-bit code is assigned to "codeOut". 
   For example, if "dataIn" is 8'b00000001, then "codeOut" will be assigned 3'b000.

   * If the input value doesn't match any of the predefined patterns, the default case is executed, 
   and "codeOut" is assigned 3'bxxx, indicating an invalid or don't care value.

   * The second module is a testbench (Encoder_8to3_TB) used to verify the functionality of the Encoder_8to3 module. 
   It declares a reg type signal "dataIn" and a wire type signal "codeOut". 
   The Encoder_8to3 module instance is created, connecting the input and output signals.

   * In the initial block, different test cases are executed. The value of "dataIn" is changed, 
   and after a delay of 10 time units (#10), the values of "dataIn" and "codeOut" are displayed using the $display system task. 
   Finally, the program finishes execution ($finish).

   * Overall, this code implements an 8-to-3 encoder module and its testbench to check the functionality of the module
   by providing different input values and observing the corresponding output codes.

## Output

![Encoder 8to3](Encoder%208to3/Output.png)


## References

   * [Encoder in Digital Logic](https://www.geeksforgeeks.org/encoder-in-digital-logic/)
   * [Behavioural Modelling & Timing in Verilog](https://www.tutorialspoint.com/vlsi_design/behavioural_modelling_timing_control_in_verilog.htm)