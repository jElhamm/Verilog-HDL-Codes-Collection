# Decoder 2to4

   This is a [Verilog](https://en.wikipedia.org/wiki/Verilog#:~:text=Verilog%2C%20standardized%20as%20IEEE%201364,register%2Dtransfer%20level%20of%20abstraction.) code that implements a *2to4 Decoder* module and a testbench to verify its functionality.

## Description:
	
   * Let's explain the code in detail:

   * The [*not_gates*](Decoder%202to4/not_gates.v) module:


                            ***********************************************************************************
                            *                                                                                 *
			                *       - It takes one input signal, `in`.                                        *
			                *       - It has one output signal, `out`.                                        *
			                *       - The output signal `out` is assigned the inverted value of the input     *
                            *         signal `in` using the `~` operator.                                     *
                            *                                                                                 *
                            ***********************************************************************************


   * The [*nand_gate*](Decoder%202to4/nand_gate.v) module:


                    *******************************************************************************************************
                    *                                                                                                     *
			        *       - It takes three input signals, `a`, `b`, and `c`.                                            *
			        *       - It has one output signal, `out`.                                                            *
			        *       - The output signal `out` is assigned the inverted value of the logical                       *
                    *         AND operation (`&`) between the input signals `a`, `b`, and `c` using the `~` operator.     *
                    *                                                                                                     *
                    *******************************************************************************************************

   * The [*decoder_2to4*](Decoder%202to4/decoder_2to4.v) module:


                    *******************************************************************************************************
                    *                                                                                                     *
                    *   ---> It takes two input signals, `x` and `y`, and one enable signal `E`.                          *
                    *   ---> It has four output signals, `D0`, `D1`, `D2`, and `D3`.                                      *
                    *   ---> The assignment of the output signals determines the behavior of the 2-to-4 decoder.          *
                    *   ---> `D0` is assigned the logical AND operation between `x`, the inverted value of `y`, and `E`.  *  
                    *   ---> `D1` is assigned the logical AND operation between `x`, the inverted value of `y`, and `E`.  *
                    *   ---> `D2` is assigned the logical AND operation between `x`, `y`, and the inverted value of `E`.  *
                    *   ---> `D3` is assigned the logical AND operation between `x`, `y`, and `E`.                        *
                    *                                                                                                     *
                    *******************************************************************************************************


   * The [*decoder_2to4_tb*](Decoder%202to4/decoder_2to4_tb.v) module (testbench):


            **************************************************************************************************************************
            *                                                                                                                        *
			*   ---> It declares three registers, `x`, `y`, and `E`, as inputs to the testbench.                                     *
			*   ---> It declares four wires, `D0`, `D1`, `D2`, and `D3`, as the outputs of the testbench.                            *
			*   ---> It instantiates a `decoder_2to4` module instance called `dut` and connects its input and output ports           *
            *        to the signals in the  testbench.                                                                               *
			*   ---> The testbench includes an `initial` block to simulate the behavior and perform the test cases.                  *
  			*   ---> The values of `x`, `y`, and `E` are changed in different modes to simulate different input combinations.        *
  		    *   ---> After each change in inputs, a delay of 10 time units (`#10`) is added, allowing the signals to propagate.      *
  			*   ---> Then, the results are displayed using the `$display` function.                                                  *
  			*   ---> The displayed output values are compared to the expected values for each test case using the `!==` operator.    *
    		*        If any of the test cases fail, an error message is displayed.                                                   *
  			*   ---> Finally, after all the test cases have been executed, a message is displayed indicating if all the test         *
            *        cases passed or not.                                                                                            *
            *                                                                                                                        *
            **************************************************************************************************************************


   * The testbench verifies the functionality of the [*decoder_2to4*](Decoder%202to4/decoder_2to4.v) module by testing it with eight different input modes
   and checking the corresponding output values. 
   If all the test cases pass, a success message is displayed; otherwise, a failure message is displayed.

## Output

![Output_1](https://github.com/jElhamm/Verilog-HDL-Codes-Collection/blob/main/Decoder%202to4/Output_1.png)


![Output_2](https://github.com/jElhamm/Verilog-HDL-Codes-Collection/blob/main/Decoder%202to4/Output_2.png)


## References

   * [Decoder](https://www.allaboutcircuits.com/textbook/digital/chpt-9/decoder/#:~:text=A%20decoder%20is%20a%20circuit,they%20are%20simpler%20to%20design.)
   * [Verilog Simulation Basics](https://www.javatpoint.com/verilog-simulation-basics#:~:text=Verilog%20is%20a%20hardware%20description,behaves%20in%20an%20intended%20way.)