# Notif1 Gate

   This is a [Verilog](https://en.wikipedia.org/wiki/Verilog#:~:text=Verilog%2C%20standardized%20as%20IEEE%201364,register%2Dtransfer%20level%20of%20abstraction.) code that implements a 1-input *NOTIF1 Gate* module and a testbench to verify its functionality

## Description:
	
   * Let's explain the code in detail:

   * The [notif1_gate](Notif1%20Gate/notif1_gate.v) module:

                            ********************************************************************************
                            *                                                                              *
				            *           ---> It takes one input signal, `a`.                               *
				            *           ---> It has one output signal, `y`.                                *
				            *           ---> The output signal `y` is assigned the negation (`~`)          *
                            *                of the input signal `a`.                                      *
                            *                                                                              *
                            ********************************************************************************

   * The [notif1_gate_tb](Notif1%20Gate/notif1_gate_tb.v) module (testbench):

                        ***********************************************************************************************
                        *                                                                                             *
				        *   ---> It declares two registers, `a` and `b`, as inputs to the testbench.                  *
				        *   ---> It declares a wire, `y`, as the output of the testbench.                             *
				        *   ---> It instantiates a `notif1_gate` module instance called `notif1_1` and connects       *
                        *        its input and output ports to the signals in the testbench.                          *
				        *   ---> It includes an `initial` block to simulate the behavior and display the results.     *
				        *   ---> The `$display` function is used to print a header for the output table.              *
				        *   ---> The `$monitor` function is used to continuously monitor and display the values       *
                        *        of `a`, `b`, and `y` in a formatted table.                                           *
				        *   ---> The values of `a` and `b` are changed at different time intervals (`#1`)             *
                        *        to simulate different input combinations.                                            *
				        *   ---> The updated values of `a`, `b`, and `y` are automatically displayed by               *
                        *        the `$monitor` function.                                                             *
                        *                                                                                             *
                        ***********************************************************************************************

   * The testbench demonstrates the behavior of the 1-input NOTIF1 gate for all possible input combinations:

                                    _____________________________________________
                                    |                                           |
                                    |       1. `a = 0` (outputs `y = 1`)        |
                                    |       2. `a = 0` (outputs `y = 1`)        |
                                    |       3. `a = 1` (outputs `y = 0`)        |
                                    |       4. `a = 1` (outputs `y = 0`)        |
                                    |___________________________________________|

   * The output table displays the input value a (labeled as "enable" in the table) as well as the output value y for each input combination.

## Output

![Notif1 Gate](https://github.com/jElhamm/Verilog-HDL-Codes-Collection/blob/main/Gates/Notif1%20Gate/Output.png)


## References

   * [Verilog Simulation Basics](https://www.javatpoint.com/verilog-simulation-basics#:~:text=Verilog%20is%20a%20hardware%20description,behaves%20in%20an%20intended%20way.)