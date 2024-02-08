# Arithmetic Logic Unit (Gate Level Modeling)

   This is a [Verilog](https://en.wikipedia.org/wiki/Verilog#:~:text=Verilog%2C%20standardized%20as%20IEEE%201364,register%2Dtransfer%20level%20of%20abstraction.) code that implements a *ALU (Gate Level Modeling)* module and a testbench to verify its functionality.

  ## ALU Description:
	
   * [ALU Module](ALU%20(Data%20Flow%20Modeling)/Alu.v):

   The *alu* module is the main module that implements the Arithmetic Logic Unit. 
   It takes two 8-bit inputs, A and B, a carry-in signal (C_in), a 4-bit control signal (S), and produces an 8-bit output (D), 
   along with a carry-out signal (C_out) and a zero flag (z).
   The alu module instantiates three submodules: logicUnit, arithunit, and m418.

   1. [logicUnit](ALU%20(Gate%20Level%20Modeling)/Logicalunit.v):

                    *******************************************************************************************************
                    *                                                                                                     *
   			        *       - This submodule takes inputs A and B, along with the control signals S[1] and S[0],          *
   			        *         and performs logical operations on each corresponding pair of bits.                         *
   			        *       - It consists of eight instances of the `lcell` module, which represent logic cells.          *
   			        *         Each instance performs logic operations on a single pair of bits.                           *
   			        *       - The outputs of the logic cells are connected to form the 8-bit output vector, t1.           *
                    *                                                                                                     *
                    *******************************************************************************************************

   2. [arithunit](ALU%20(Gate%20Level%20Modeling)/Arithunit.v):

                    *********************************************************************************************************
                    *                                                                                                       *
   			        *       - This submodule takes inputs A and B, along with the control signals S[1] and S[0],            *
                    *         and performs arithmetic operations on each corresponding pair of bits.                        *
   			        *       - It consists of eight instances of the `arithcell` module, which represent arithmetic cells.   *
                    *         Each instance performs arithmetic operations on a single pair of bits.                        *
   			        *       - The outputs of the arithmetic cells are connected to form the 8-bit output vector, t0.        *
   			        *       - Additionally, the carry-out (C_out) and zero flag (z) signals are computed based on the       *
                    *         outputs of the `arithcell` instances.                                                         *
                    *                                                                                                       *
                    *********************************************************************************************************

   3. m418:

                    *******************************************************************************************************
                    *                                                                                                     *
   			        *       - This module takes four 8-bit inputs (a, b, c, d) and a 2-bit select signal (s).             *
			        *         It produces an 8-bit output (out), which is a multiplexed combination of the                *
                    *         inputs based on the select signal.                                                          *
   			        *       - The `m418` module is used to concatenate and multiplex the t0 and t1 vectors based          *
                    *         on the remaining 2 bits of the control signal S[3:2].                                       *
   			        *       - The resulting 8-bit output is assigned to D.                                                *
                    *                                                                                                     *
                    *******************************************************************************************************

   * Logic Cell Module (lcell):

   The *lcell* module represents a logic cell. It takes two inputs (a, b) and two select signals (s1, s0). 
   The module internally consists of an AND gate, OR gate, XOR gate, and a NOT gate.
   - The AND, OR, and XOR gates compute various logic functions on the inputs based on the select signals.
   - The NOT gate is used to compute the complement of input a.
   - The outputs of the gates are connected to form the output of the logic cell (out).

   * Arithmetic Cell Module (arithcell):

   The *arithcell* module represents an arithmetic cell. It takes three inputs (a, b, c_in) and three select signals (s1, s0, c_in).
   - The module internally consists of a full-adder (fulladd) and a 4-to-1 multiplexer (m_41).
   - The full-adder computes the sum (out) and carry-out (c_out) of the three inputs.
   - The 4-to-1 multiplexer (m_41) is used to select either b or the complement of b (bn) based on the select signals.
   - The result is the output of the arithmetic cell (out) along with the carry-out signal (c_out).

   * [Testbench (tbAlu)](ALU%20(Data%20Flow%20Modeling)/tbAlu.v):

   The *tbAlu* module serves as a testbench for the ALU module. 
   It initializes the inputs (A, B, C_in, S), monitors the outputs (D, C_out, z), and provides specific input values at different time intervals.
   - The initial block sets up the monitoring using the ($monitor) system task to display the values of A, B, C_in, S, D, C_out, and z during simulation.
   - The testbench demonstrates different scenarios by changing the values of S at different time intervals and checking the corresponding outputs.
   - The simulation ends with the ($stop) system task.

## Output

![ALU](https://github.com/jElhamm/Verilog-HDL-Codes-Collection/blob/main/ALU%20(Gate%20Level%20Modeling)/Output.png)


## References

   * [Gate Level Modeling](https://www.javatpoint.com/verilog-gate-level-modeling#:~:text=Gate%20level%20modeling%20is%20used,%2Dstate%2C%20and%20pull%20gates.)
   * [Arithmetic logic unit](https://en.wikipedia.org/wiki/Arithmetic_logic_unit)
   * [Verilog Simulation Basics](https://www.javatpoint.com/verilog-simulation-basics#:~:text=Verilog%20is%20a%20hardware%20description,behaves%20in%20an%20intended%20way.)