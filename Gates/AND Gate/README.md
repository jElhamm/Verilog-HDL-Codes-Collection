# AND Gate

   This is a [Verilog](https://en.wikipedia.org/wiki/Verilog#:~:text=Verilog%2C%20standardized%20as%20IEEE%201364,register%2Dtransfer%20level%20of%20abstraction.) code that implements a 2-input *AND Gate* module and a testbench to verify its functionality

## Description:
	
   * Let's explain the code in detail:

   * The [and_gate](Gates/AND%20Gate/and_gate.v) module:

                            ********************************************************************************
                            *                                                                              *
				            *   ---> It takes two input signals, `a` and `b`.                              *
				            *   ---> It has one output signal, `y`.                                        *
				            *   ---> The output signal `y` is assigned the result of the logical AND       *
                            *        operation between `a` and `b` using the `&` operator.                 *
                            *                                                                              *
                            ********************************************************************************

   * The [and_gate_tb](AND%20Gate/and_gate_tb.v) module (testbench):

                        ********************************************************************************************
                        *                                                                                          *
				        *   ---> It declares two registers, `a` and `b`, as inputs to the testbench.               *
			            *   ---> It declares a wire, `y`, as the output of the testbench.                          *
			            *   ---> It instantiates an `and_gate` module instance called `and1` and connects its      *
                        *        input and output ports to the signals in the testbench.                           *
			            *   ---> It includes an `initial` block to simulate the behavior and display the results.  *
  					    *       - The `$display` function is used to print a header for the output table.          *
  					    *       - The `$monitor` function is used to continuously monitor and display the          *
                        *         values of `a`, `b`, and `y` in a formatted table.                                *
  					    *       - The values of `a` and `b` are changed at different time intervals (`#1`)         *
                        *         to simulate different input combinations.                                        *
  					    *       - The updated values of `a`, `b`, and `y` are automatically displayed              *
                        *         by the `$monitor` function.                                                      *
                        *                                                                                          *
                        ********************************************************************************************

   * The testbench demonstrates the behavior of the 2-input AND gate for all possible input combinations:

                                _____________________________________________________
                                |                                                   |
                                |       1. `a = 0`, `b = 0` (outputs `y = 0`)       |
                                |       2. `a = 0`, `b = 1` (outputs `y = 0`)       |
                                |       3. `a = 1`, `b = 0` (outputs `y = 0`)       |
                                |       4. `a = 1`, `b = 1` (outputs `y = 1`)       |
                                |___________________________________________________|


   * The output table displays the input values a and b, as well as the output value y, for each input combination.

## Output

![AND Gate](https://github.com/jElhamm/Verilog-HDL-Codes-Collection/blob/main/Gates/AND%20Gate/Output.png)


## References

   * [AND Gate](https://en.wikipedia.org/wiki/AND_gate#:~:text=The%20AND%20gate%20is%20a,gate%20are%20HIGH%20(1).)
   * [Verilog Simulation Basics](https://www.javatpoint.com/verilog-simulation-basics#:~:text=Verilog%20is%20a%20hardware%20description,behaves%20in%20an%20intended%20way.)