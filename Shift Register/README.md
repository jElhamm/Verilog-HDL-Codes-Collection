# Shift Register

   This [Verilog](https://en.wikipedia.org/wiki/Verilog#:~:text=Verilog%2C%20standardized%20as%20IEEE%201364,register%2Dtransfer%20level%20of%20abstraction.) code defines a *Shift Register* module called [*shiftreg*](Shift%20Register/shiftreg.v) and a testbench module called [*shiftreg_tb*](Shift%20Register/shiftreg_tb.v).

## Capabilities

                            ________________________________________________________________________
                            |                                                                       |
                            |       OP2         OP1         OP0         Function                    |
                            |-----------------------------------------------------------------------|
                            |        0           0           0          Set to FF                   |
                            |        0           0           1          Shift Left                  |
                            |        0           1           0          Rotate Left                 |
                            |        0           1           1          Shift Right Logical         |
                            |        1           0           0          Shift Right Arithmetic      |
                            |        1           0           1          Rotate Right                |
                            |        1           1           0          Parallel Load               |
                            |        1           1           1          Clear                       |
                            |_______________________________________________________________________|


## Description: 

   * The "shiftreg" module takes several inputs: 
     - "datain" (an 8-bit input), "op" (a 3-bit input), "sin" (a single-bit input), "clk" (a single-bit input). 
	 - It also has outputs: "out" (an 8-bit output) and "sout" (a single-bit output). 

   * Inside the "shiftreg" module, there is an `always @(posedge clk)` block, which means the following code inside
   the block will execute whenever there is a positive edge transition of the "clk" signal. 

   * There is a case statement that checks the value of "op". 
   Depending on the value of "op", different operations are performed on the "out" register.

                ***********************************************************************************************************
                *                                                                                                         *
                *                                 Here are the different operations:                                      *
                *                                                                                                         *
	            *   - 3'b000: Set "out" to 8'hFF (all bits set to 1)                                                      *
		        *   - 3'b001: Shift "out" to the left and insert the value of "sin" at the least significant bit (LSB)    *
		        *   - 3'b010: Rotate "out" to the left (shift left and wrap around)                                       *
	            *   - 3'b011: Shift "out" to the right and fill with 0 at the most significant bit (MSB)                  *
	            *   - 3'b100: Shift "out" to the right and fill with the complement of MSB at the MSB                     *
		        *   - 3'b101: Rotate "out" to the right (shift right and wrap around)                                     *
		        *   - 3'b110: Load "out" with the value of "datain"                                                       *
		        *   - 3'b111: Rotate "out" right by 2 bits (shift right and wrap around)                                  *
                *                                                                                                         *
                ***********************************************************************************************************

   * The value of "sout" is assigned to the LSB of "out".

   * The [*shiftreg_tb*](Shift%20Register/shiftreg_tb.v) module is the testbench for the [*shiftreg*](Shift%20Register/shiftreg.v) module. 
   It instantiates the "shiftreg" module and provides the necessary inputs ("datain", "op", "sin", "clk") for testing. 
   It also connects the outputs ("out", "sout") to wires.

   * The initial block inside the "shiftreg_tb" module sets the inputs to different values for different test cases and simulates 
   the behavior of the "shiftreg" module for each test case. The simulation time is incremented using `#10` after each test case. 
   The output values of "out" are displayed using the `$display` system function.


## Output

![Shift Register](Shift%20Register/Output.png)


## References

   * [Shift Register](https://en.wikipedia.org/wiki/Shift_register#:~:text=A%20shift%20register%20is%20a,one%20location%20to%20the%20next.)
   * [Shift Registers in Digital Electronics](https://www.javatpoint.com/shift-registers-in-digital-electronics)
   * [Verilog Simulation Basics](https://www.javatpoint.com/verilog-simulation-basics#:~:text=Verilog%20is%20a%20hardware%20description,behaves%20in%20an%20intended%20way.)