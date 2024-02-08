# XOR Gate

   This is a [Verilog](https://en.wikipedia.org/wiki/Verilog#:~:text=Verilog%2C%20standardized%20as%20IEEE%201364,register%2Dtransfer%20level%20of%20abstraction.) code that implements a *XOR Gate* module and a testbench to verify its functionality.

  ## xor gate Description:
	
   * Let's explain the code in detail:

   * The [xor_gate](Xor%20Gate/xor_gate.v) module:

                            **************************************************************************************
                            *                                                                                    *
				            *   ---> It takes two input signals, `a` and `b`.                                    *
				            *   ---> It has one output signal, `y`.                                              *
				            *   ---> The output signal `y` is assigned the result of the bitwise exclusive       *
                            *   OR (XOR) operation (`^`) between the input signals `a` and `b`. This             *
                            *   means `y` will be high (1) only when either `a` or `b` is high, but not both.    *
                            **************************************************************************************

   * The [xor_gate_tb](Xor%20Gate/xor_gate_tb.v) module (testbench):

                        ************************************************************************************************
                        *                                                                                              *
				        *   ---> It declares two registers, `a` and `b`, as inputs to the testbench.                   *
				        *   ---> It declares a wire, `y`, as the output of the testbench.                              *
				        *   ---> It instantiates an `xor_gate` module instance called `xor1` and connects its input    *
                        *        and output ports to the signals in the testbench.                                     *
				        *   ---> It includes an `initial` block to simulate the behavior and display the results.      *
 				        *      - The `$display` function is used to print a header for the output table.               *
				        *      - The `$monitor` function is used to continuously monitor and display the values        *
                        *        of `a`, `b`, and `y` in a formatted table.                                            *
				        *      - The values of `a` and `b` are changed at different time intervals (`#1`)              *
                        *        to simulate different input combinations.                                             *
				        *      - The updated values of `a`, `b`, and `y` are automatically displayed by                *
                        *        the `$monitor` function.                                                              *
				        *      - The simulation is terminated using the `$finish` function after all the input         *
                        *        combinations have been tested.                                                        *
                        *                                                                                              *
                        ************************************************************************************************

   * The output table displays the values of a, b, and y for each input combination of the XOR gate:

                                _____________________________________________________
                                |                                                   |
                                |       1. `a = 0`, `b = 0` (outputs `y = 0`)       |
                                |       2. `a = 0`, `b = 1` (outputs `y = 1`)       |
                                |       3. `a = 1`, `b = 0` (outputs `y = 1`)       |
                                |       4. `a = 1`, `b = 1` (outputs `y = 0`)       |
                                |___________________________________________________|

   * In this table, a and b represent the input values, and y represents the output value of the XOR gate for each input combination.

## Output

![XOR Gate](https://github.com/jElhamm/Verilog-HDL-Codes-Collection/blob/main/Gates/Xor%20Gate/Output.png)


## References

   * [Verilog Simulation Basics](https://www.javatpoint.com/verilog-simulation-basics#:~:text=Verilog%20is%20a%20hardware%20description,behaves%20in%20an%20intended%20way.)
