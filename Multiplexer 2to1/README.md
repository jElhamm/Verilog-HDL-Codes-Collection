# Multiplexer 2to1

   The given code consists of two modules: [*mux_2to1*](Multiplexer%202to1/mux_2to1.v) and [*mux_2to1_tb*](Multiplexer%202to1/mux_2to1_tb.v).

## Description:
	
	
   * The code defines a multiplexer module called `multiplexer_2to1`. 
   It takes three input signals: "in0", "in1", and "s", and has one output signal called "out". 
   Inside the module, two instances of the `bufif0_gate` module are instantiated.

   * The `bufif0_gate` module is a behavioral gate that behaves like a buffer with output enable. 
   It takes an input signal "a", an enable signal "enable", and produces an output signal "y". 
   The output "y" is driven by "a" when "enable" is high (1), and it is driven to logic "0" when "enable" is low (0).

   * In the `multiplexer_2to1` module, the first instance of `bufif0_gate`, named "b1", connects "in0" to the input "a" of "b1", 
   and "s" to the enable "enable" of "b1". The output "y1" of "b1" is connected to the output "out" of `multiplexer_2to1`. 
   Similarly, the second instance of "bufif0_gate", named "b2", connects "in1" to the input "a" of "b2", and "s" to the enable "enable" of "b2v. 
   The output "y2" of "b2" is also connected to the output "out" of `multiplexer_2to1`.

   * The last line of the `multiplexer_2to1` module assigns the value of "y2" or "y1" to the output "out" based on the value of the select signal "s". 
   If "s" is high (1), then "y2" is assigned to "out"; otherwise, "y1" is assigned to "out".

   * The `mux_2to1_tb` module is a testbench that instantiates the `multiplexer_2to1` module and performs various input combinations. 
   It monitors the input signals "a", "b", and "s", along with the output signal "y", and displays them using `$monitor`. 
   Test cases with different input combinations are provided, and there is a delay of "10" time units between each test case.

## Output

![Multiplexer 2to1](https://github.com/jElhamm/Verilog-HDL-Codes-Collection/blob/main/Multiplexer%202to1/Output.png)


## References

   * [Verilog](https://en.wikipedia.org/wiki/Verilog#:~:text=Verilog%2C%20standardized%20as%20IEEE%201364,register%2Dtransfer%20level%20of%20abstraction.)
   * [Verilog Simulation Basics](https://www.javatpoint.com/verilog-simulation-basics#:~:text=Verilog%20is%20a%20hardware%20description,behaves%20in%20an%20intended%20way.)
   * [Multiplexer Design using Verilog HDL](https://www.geeksforgeeks.org/multiplexer-design-using-verilog-hdl/)
   * [Multiplexer (MUX) - All modeling styles](https://technobyte.org/verilog-multiplexer-2x1/)