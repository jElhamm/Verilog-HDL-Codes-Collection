# RAM 1024x8

   The given code consists of two modules: [*RAM1024x8*](RAM%201024x8/RAM1024x8.v) and [*RAM1024x8_tb*](RAM%201024x8/RAM1024x8_tb.v).

## Description:

   1. Module "ram":

   * This module represents a random access memory (RAM) circuit. It has the following ports:


                *************************************************************************************************************
                *                                                                                                           *
                *     ---> Outputs: `out` (an 8-bit vector)                                                                 *
                *     ---> Inputs: `datain` (an 8-bit vector), `address` (a 10-bit vector), `wr`, and `rd`.                 *
                *                                                                                                           *
                *   Inside the module, there is a register `out` declared as an 8-bit vector to store the data read         *
                *   from the memory. Also, there is a memory array `mem` declared as `reg [7:0] mem[0:1023]`                *
                *   to store the data. The combinational logic of the RAM is defined in the                                 *
                *   `always @(wr or rd or datain or address)` block, which triggers whenever there is a change in           *
                *   any of the inputs.                                                                                      *
                *                                                                                                           *
                *************************************************************************************************************
                *                                                                                                           *
                *    - The logic is as follows:                                                                             *
                *                 ---> If the `wr` signal is high (`wr==1'b1`), write mode is enabled, and the data         *
                *                      from `datain` is written to the memory location specified by `address`.              *
                *                 ---> If the `rd` signal is high (`rd==1'b1`), read mode is enabled, and the data          *
                *                      from the memory location specified by `address` is assigned to `out`.                *
                *                                                                                                           *
                *************************************************************************************************************

   2. Module "tbram":
   	  
   * This module represents a testbench for the "ram" module. 
   * It instantiates the "ram" module and defines the testbench behavior.


                *************************************************************************************************************
                *                                                                                                           *
                *   ---> It declares the following registers and wires:                                                     *
                *                                                                                                           *
                *	            - Registers: `datain` (an 8-bit vector), `address` (a 10-bit vector), `wr`, and `rd`.       *
                *	            - Wire: `out` (an 8-bit vector)                                                             *
                *                                                                                                           *
                *   ---> It instantiates the "ram" module with the declared signals and variables.                          *
                *                                                                                                           *
                *************************************************************************************************************
                *                                                                                                           *
                *        The behavior of the testbench is defined inside the `initial` block.                               *
                *        The following steps are performed:                                                                 *
                *                                                                                                           *
      			*	              ---> Use `$monitor` to display the values of `wr`, `rd`, `datain`, `address`,             *
                *                      and `out` whenever there is a change in any of these signals.                        *
      			*	              ---> Assign initial values to `datain`, `address`, `wr`, and `rd`.                        *
      			*	              --->  Wait for 5 time units (`#5`).                                                       *
      			*	              ---> Update the values of `datain`, `address`, `wr`, and `rd`.                            *
      			*	              ---> Wait for another 5 time units.                                                       *
       			*	              --->  Update the values of `datain`, `address`, `wr`, and `rd`.                           *
      			*	              --->  Wait again for 5 time units.                                                        *
      			*	              --->  Update the values of `datain`, `address`, `wr`, and `rd`.                           *
      			*	              ---> Wait for another 5 time units.                                                       *
      			*	              ---> Stop the simulation using `$stop`.                                                   *
                *                                                                                                           *
                *************************************************************************************************************


   * Overall, this code represents a RAM circuit where data can be written and read from specific memory locations based on control signals. 
   The testbench demonstrates how to simulate and test the RAM module by changing the signal values at different time intervals.

## References

   * [Verilog](https://en.wikipedia.org/wiki/Verilog#:~:text=Verilog%2C%20standardized%20as%20IEEE%201364,register%2Dtransfer%20level%20of%20abstraction.)
   * [Verilog Simulation Basics](https://www.javatpoint.com/verilog-simulation-basics#:~:text=Verilog%20is%20a%20hardware%20description,behaves%20in%20an%20intended%20way.)