# Bufif0 Gate

   This is a [Verilog](https://en.wikipedia.org/wiki/Verilog#:~:text=Verilog%2C%20standardized%20as%20IEEE%201364,register%2Dtransfer%20level%20of%20abstraction.) code that implements a 2-input *BUFIF0 Gate* module and a testbench to verify its functionality.

## Description:
	
   * Let's explain the code in detail:

   * The [bufif0_gate](Bufif0%20Gate/bufif0_gate.v) module:

                            ********************************************************************************
                            *                                                                              *
				            *   ---> It takes two input signals, `a` and `enable`.                         *
				            *   ---> It has one output signal, `y`.                                        *
				            *   ---> The output signal `y` is assigned the value of `a` if `enable`        *
                            *        is true (non-zero), otherwise it is assigned 0.                       *
                            *                                                                              *
                            ********************************************************************************

   * The [bufif0_gate_tb](Bufif0%20Gate/bufif0_gate_tb.v) module (testbench):

                        **********************************************************************************************
                        *                                                                                            *
				        *   ---> It declares two registers, `a` and `b`, as inputs to the testbench.                 *
				        *   ---> It declares a wire, `y`, as the output of the testbench.                            *
				        *   ---> It instantiates a `bufif0_gate` module instance called `bufif0_1` and connects      *
                        *        its input and output ports to the signals in the testbench.                         *
				        *   ---> It includes an `initial` block to simulate the behavior and display the results.    *
				        *   ---> The `$display` function is used to print a header for the output table.             *
				        *   ---> The `$monitor` function is used to continuously monitor and display the values      * 
                        *        of `a`, `b`, and `y` in a formatted table.                                          *
				        *   ---> The values of `a` and `b` are changed at different time intervals (`#1`)            *
                        *        to simulate different input combinations.                                           *
				        *   ---> The updated values of `a`, `b`, and `y` are automatically displayed by              *
                        *        the `$monitor` function.                                                            *
                        *                                                                                            *
                        **********************************************************************************************

   * The [testbench]() demonstrates the behavior of the 2-input BUFIF0 gate for all possible input combinations:

                                _____________________________________________________
                                |                                                   |
                                |       1. `a = 0`, `b = 0` (outputs `y = 0`)       |
                                |       2. `a = 0`, `b = 1` (outputs `y = 0`)       |
                                |       3. `a = 1`, `b = 0` (outputs `y = 1`)       |
                                |       4. `a = 1`, `b = 1` (outputs `y = 1`)       |
                                |___________________________________________________|


   * The output table displays the input values a and enable (labeled as "b" in the table), as well as the output value y, for each input combination.

## Output

![Bufif0 Gate](https://github.com/jElhamm/Verilog-HDL-Codes-Collection/blob/main/Gates/Bufif0%20Gate/Output.png)


## References

   * [Verilog Simulation Basics](https://www.javatpoint.com/verilog-simulation-basics#:~:text=Verilog%20is%20a%20hardware%20description,behaves%20in%20an%20intended%20way.)