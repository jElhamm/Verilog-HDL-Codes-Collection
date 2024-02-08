# Priority Encoder 8to3

   This code represents an 8-to-3 Priority Encoder module in [Verilog](https://en.wikipedia.org/wiki/Verilog#:~:text=Verilog%2C%20standardized%20as%20IEEE%201364,register%2Dtransfer%20level%20of%20abstraction.). The code is implemented at the Behavioral Level.

## Correct Table

   * This block is described and simulated at the behavioral level:

                              __________________________________________________
                              |                                                 |
                              |          dataIn              codeOut            |
                              |-------------------------------------------------|
                              |          8'b00000001           000              |
                              |          8'b00000001           000              |
                              |          8'b000001XX           010              |
                              |          8'b00001XXX           011              |
                              |          8'b0001XXXX           100              |
                              |          8'b001XXXXX           101              |
                              |          8'b01XXXXXX           110              |
                              |          8'b1XXXXXXX           111              |
                              |          else                 3'bxxx            |
                              |_________________________________________________|
                              
## Description:
	
   * This code represents a Priority Encoder module that converts an 8-bit input signal called 
   "dataIn" to a 3-bit output signal called "codeOut". 
   The priority encoder assigns a code to the input based on its highest-order active bit.

   * Inside the module, there are two registers: "inputReg" of size 8 bits and "codeReg" of size 3 bits.
   The input signal "dataIn" is assigned to "inputReg". 

   * The code assignment is performed in the always block with the sensitivity list containing "dataIn". 
   Whenever there is a change in "dataIn", the code assignment process is triggered. 
   A case statement is used to check the value of "inputReg" and assign the appropriate code to 
   "codeReg" based on the highest-order active bit.

   * The code assignments are done in a priority order.
   For example, if the highest-order active bit is at position 0 (LSB), then the codeReg is assigned 3'b000. 
   If the two lowest-order bits are don't care (X), the codeReg is assigned 3'b001, and so on.
   If none of the predefined patterns match, the default case is executed, and "codeReg" is assigned 3'bxxx,
   indicating an invalid or don't care value.

   * The codeOut signal is assigned the value of the codeReg using the assign statement to make it accessible outside the module.

   * The second module is a testbench (PriorityEncoder8to3_tb) used to verify the functionality of the 
   [*PriorityEncoder8to3*](Priority%20Encoder%208to3/PriorityEncoder8to3.v) module. It declares a reg type signal "dataIn" and a wire type signal "codeOut". 
   The *PriorityEncoder8to3* module instance is created, connecting the input and output signals.

   * In the initial block, different test cases are executed.
   The value of "dataIn" is changed, and after a delay of 10 time units (#10), the values of "dataIn" and "codeOut"
   are displayed using the '$display' system task. Finally, the program finishes execution ($finish).

   * Overall, this code implements a *Priority Encoder* module that assigns codes to the input based on the priority of active bits. 
   The testbench verifies the functionality by providing different input values and observing the corresponding output codes.

## Output

![Priority Encoder](https://github.com/jElhamm/Verilog-HDL-Codes-Collection/blob/main/Priority%20Encoder%208to3/Output.png)

## References

   * [Priority Encoder](https://en.wikipedia.org/wiki/Priority_encoder)
   * [Behavioural Modelling & Timing in Verilog](https://www.tutorialspoint.com/vlsi_design/behavioural_modelling_timing_control_in_verilog.htm)
   * [Priority Encoder and Digital Encoder Tutorial](https://www.electronics-tutorials.ws/combination/comb_4.html)