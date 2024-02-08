# Arithmetic Logic Unit (Data Flow Modeling)

   The provided [Verilog](https://en.wikipedia.org/wiki/Verilog#:~:text=Verilog%2C%20standardized%20as%20IEEE%201364,register%2Dtransfer%20level%20of%20abstraction.) code represents an *Arithmetic Logic Unit (ALU)* module.

  ## Alu Description:
	
   * The ALU is responsible for performing arithmetic and logical operations on two 8-bit inputs (A and B) according to a 4-bit control signal (S). 
   Here's a high-level overview of the code:

   1. The `m4_1` module is a 4-input AND-OR gate that takes four inputs (a, b, c, d) and two select signals (s0, s1),
   and produces a single output (`out`). It implements a 4-to-1 multiplexer using AND and OR gates.


   2. The `lcell` module represents a logic cell that consists of an AND gate, OR gate, XOR gate, and a NOT gate. 
	     It takes two inputs (a, b) and two select signals (s0, s1), and produces a single output (`out`).


   3. The `logicUnit` module combines eight instances of `lcell` to create a unit that performs logical operations 
   on two 8-bit inputs (A, B) based on the select signals (s0, s1). The resulting output is an 8-bit vector (`D`).


   4. The `fulladd` module represents a full-adder circuit that takes three inputs (a, b, c_in) and produces two outputs (sum, c_out). 
   It calculates the sum of two binary inputs and considers the carry-in (`c_in`).


   5. The `m_41` module is similar to `m4_1`, but it only has three inputs (a, b, c, d) and two select signals (s0, s1). 
   It implements a 4-to-1 multiplexer using AND and OR gates.


   6. The `arithcell` module combines a full-adder (`fulladd`) and a 4-to-1 multiplexer (`m_41`) to create an arithmetic cell. 
   It takes five inputs (a, b, s1, s0, c_in) and produces two outputs (out, c_out).
   It performs arithmetic operations on two binary inputs (a, b) based on the select signals (s0, s1) and considers the carry-in (`c_in`).


   7. The `arithunit` module combines eight instances of `arithcell` to create an arithmetic unit. 
   It performs arithmetic operations on two 8-bit inputs (A, B) using the select signals (s0, s1) and considers the carry-in (`C_in`). 
   The resulting output is an 8-bit vector (`D`) along with a carry-out (`C_out`) and zero flag (`z`).


   8. The `alu` module combines a logical unit (`logicUnit`) and an arithmetic unit (`arithunit`) to create the full ALU. 
   It takes two 8-bit inputs (A, B), a carry-in (`C_in`), and a control signal (`S`).
   It produces an 8-bit output (`D`) along with a carry-out (`C_out`) and zero flag (`z`).


   9. Finally, the `Alu_tb` module is a testbench that verifies the functionality of the ALU. 
   It sets the inputs (A, B, C_in, S) and monitors the outputs (D, C_out, z) at specific simulation time intervals.

## Output

![ALU](https://github.com/jElhamm/Verilog-HDL-Codes-Collection/blob/main/ALU%20(Data%20Flow%20Modeling)/Output.png)


## References

   * [Data Flow Modeling](https://www.javatpoint.com/verilog-data-flow-modeling)
   * [Arithmetic logic unit](https://en.wikipedia.org/wiki/Arithmetic_logic_unit)
   * [Verilog Simulation Basics](https://www.javatpoint.com/verilog-simulation-basics#:~:text=Verilog%20is%20a%20hardware%20description,behaves%20in%20an%20intended%20way.)