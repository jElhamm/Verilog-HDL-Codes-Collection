# Comparator 8bit

   This is a [Verilog](https://en.wikipedia.org/wiki/Verilog#:~:text=Verilog%2C%20standardized%20as%20IEEE%201364,register%2Dtransfer%20level%20of%20abstraction.) code that implements an *8-Bit Comparator* module and a testbench to simulate its behavior. 

## Description:

   * Let's break down the code and explain it in detail:

   * The [comparator8bit]() module:

                    ********************************************************************************************
                    *                                                                                          *
                    *   ---> It takes two 8-bit inputs, `A` and `B`, representing binary numbers.              *
                    *   ---> It has six outputs: `less`, `equal`, `More`, `AeqB`, `AltB`, and `AgtB`.          *
                    *   ---> The module assigns the outputs based on the comparison between `A` and `B`.       *
                    *   ---> `less` is true (`1'b1`) if `A` is less than `B`.                                  *
                    *   ---> `equal` is true if `A` is equal to `B`.                                           *
                    *   ---> `More` is true if `A` is greater than `B`.                                        *
                    *   ---> `AeqB` is assigned with the value of `equal`.                                     *
                    *   ---> `AltB` is assigned with the value of `less`.                                      *
                    *   ---> `AgtB` is assigned with the value of `More`.                                      *
                    *                                                                                          *
                    ********************************************************************************************

   * The [comparator_8bit_tb]() module (testbench):

                    ****************************************************************************************************************
                    *                                                                                                              *
                    *   ---> It includes a parameter `WIDTH` set to 8.                                                             *
                    *   ---> It defines registers `A` and `B` as 8-bit wide, representing the inputs to the comparator module.     *
                    *   ---> It declares wires `less`, `equal`, `More`, `AeqB`, `AltB`, and `AgtB`, representing the outputs of    *
                    *        the comparator module.                                                                                *
                    *   ---> It defines registers `previous_A` and `previous_B` to store the previous values of `A` and `B`.       *
                    *   ---> It instantiates the `comparator8bit` module (`dut`) and connects its ports to the signals             *
                    *        of the testbench.                                                                                     *
                    *   ---> It includes an `always` block to display the values of all signals whenever there is a change in      * 
                    *        their values. The simulated time is also displayed.                                                   *
                    *   ---> It includes an `initial` block to initialize the values of `A` and `B` and the previous values.       *
                    *        Each set of values is applied for 10 time units (`#10`).                                              *               
                    *                                                                                                              *
                    ****************************************************************************************************************

   * The `initial` block in the testbench sets the values of `A` and `B` and the previous values for five test cases:

                                        *************************************************
                                        *                                               *
                                        *     1. `A` and `B` both set to `0`.           *
                                        *     2. `A` and `B` both set to `1`.           *
                                        *     3. `A` set to `1` and `B` set to `2`.     *
                                        *     4. `A` set to `2` and `B` set to `1`.     *
                                        *     5. `A` set to `16` and `B` set to `8`.    *
                                        *                                               *
                                        *************************************************

   * The values of all signals are displayed whenever there is a change in their values during simulation.

## Output

![Output_1](https://github.com/jElhamm/Verilog-HDL-Codes-Collection/blob/main/Comparator%208bit/Output_1.png)


![Output_2](https://github.com/jElhamm/Verilog-HDL-Codes-Collection/blob/main/Comparator%208bit/Output_2.png)


## References

   * [Data Flow Modeling](https://en.wikipedia.org/wiki/Comparator#:~:text=In%20electronics%2C%20a%20comparator%20is,and%20one%20binary%20digital%20output%20.)
   * [Verilog Simulation Basics](https://www.javatpoint.com/verilog-simulation-basics#:~:text=Verilog%20is%20a%20hardware%20description,behaves%20in%20an%20intended%20way.)