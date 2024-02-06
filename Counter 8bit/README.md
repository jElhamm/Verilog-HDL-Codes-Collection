# Counter 8 Bit

   The given code consists of two modules: [*counter*](Counter%208bit/counter.v) and [*counter_tb*](Counter%208bit/counter_tb.v).

## Description:

   1. Module "counter":
    
   * This module represents a counter circuit. It has the following ports:


                *************************************************************************************************************
                *                                                                                                           *
                *   ---> Output: `out` (an 8-bit vector)                                                                    *
                *   ---> Inputs: `datain` (an 8-bit vector), `inc`, `clear`, `load`, `counten`, and `clk`.                  *
                *                                                                                                           *
                *   ---> Inside the module, there is a register `out` declared as an 8-bit vector to store the              *
                *        counter value. The sequential logic of the counter is defined in the                               *
                *        `always @(posedge clk)` block, which triggers on the positive edge of the `clk` signal.            *
                *                                                                                                           *
                *************************************************************************************************************
                *                                                                                                           *
                *   - The logic is as follows:                                                                              *
   				*                 ---> If `clear` signal is high (`clear == 1'b1`), the counter value is reset to 0.        *
   				*                 ---> Else, if `load` signal is high (`load == 1`),                                        *
                *                      the counter value is loaded with the value of `datain`.                              *
   				*                 ---> Else, if `counten` signal is high (`counten == 1'b1`):                               *
        		*            	  ---> If `inc` signal is high (`inc == 1'b1`), the counter value is incremented by 1.      *
        		*		          ---> Otherwise, the counter value is decremented by 1.                                    *
                *                                                                                                           *
                *************************************************************************************************************


   2. Module "counter_tb":
   
   * This module represents a testbench for the "counter" module. 
   * It instantiates the "counter" module and defines the testbench behavior.


                *************************************************************************************************************
                *                                                                                                           *
   		        *          ---> It declares the following variables and signals:                                            *
      			*	            - Wire: `out` (an 8-bit vector)                                                             *
      			*	            - Registers: `datain` (an 8-bit vector), `inc`, `clear`, `load`, `counten`, `clk`           *
                *                                                                                                           *
   		        *          ---> It instantiates the "counter" module with the declared signals and variables.               *
                *               The behavior of the testbench is defined using the `always` block to create a clock         *
                *               signal `clk` that toggles every 5 time units (`#5 clk = ~clk`).                             *                                 
                *                                                                                                           *
                *************************************************************************************************************
                *                                                                                                           *
   		        *                 Inside the `initial` block, the following steps are performed:                            *
                *                                                                                                           *
      			*	              ---> Assign initial values to signals and variables.                                      *
      			*	              ---> Set the initial values for `clk`, `load`, `clear`, `counten`, and `inc`.             *
      			*	              ---> Set the initial value for `datain` as 8'b01101100.                                   *
      			*	              ---> Wait for 50 time units (`#50`).                                                      *
      			*	              ---> Update the values of `load`, `clear`, `counten`, and `inc`.                          *
      			*	              ---> Wait for 10 time units.                                                              *
      			*	              ---> Update the values of `load`, `clear`, `counten`, and `inc`.                          *
      			*	              ---> Wait for 20 time units.                                                              *
      			*	              ---> Update the values of `load`, `clear`, `counten`, and `inc`.                          *
      			*	              ---> Wait for another 20 time units.                                                      *
      			*	              ---> Stop the simulation using `$stop`.                                                   *
                *                                                                                                           *
                *************************************************************************************************************


   * Overall, this code represents a counter circuit, where the counter value can be loaded, cleared, incremented, 
   or decremented based on the control signals. 
   The testbench provides an example of how to simulate and test the counter module with different signal values over time.

## References

   * [Verilog](https://en.wikipedia.org/wiki/Verilog#:~:text=Verilog%2C%20standardized%20as%20IEEE%201364,register%2Dtransfer%20level%20of%20abstraction.)
   * [Counter Design using verilog HDL](https://www.geeksforgeeks.org/counter-design-using-verilog-hdl/)
   * [8-bit Counter Implementation On FPGA using Verilog](https://circuitfever.com/counter-in-fpga-verilog#google_vignette)
   * [Verilog Simulation Basics](https://www.javatpoint.com/verilog-simulation-basics#:~:text=Verilog%20is%20a%20hardware%20description,behaves%20in%20an%20intended%20way.)