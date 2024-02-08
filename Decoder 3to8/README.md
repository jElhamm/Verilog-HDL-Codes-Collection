# Decoder 3to8
   
   This is a [Verilog](https://en.wikipedia.org/wiki/Verilog#:~:text=Verilog%2C%20standardized%20as%20IEEE%201364,register%2Dtransfer%20level%20of%20abstraction.) code that implements a *3to8 Decoder* module and a testbench to verify its functionality.

## Description:

   * Let's explain the code in detail:

   * The [*Decoder2x4*]() Module:
   The *Decoder2x4* module represents a 2x4 decoder. 
   It has three inputs (x, y, E) and four outputs (D0, D1, D2, D3). 
   Each output represents one of the four possible combinations of the binary inputs. 

                         __________________________________________________________________________________
	                    |                                                                                 |
                        |   - Inputs:                                                                     |
		                |         ---> `x`: Binary input signal.                                          |
		                |         ---> `y`: Binary input signal.                                          |
		                |         ---> `E`: Enable input signal.                                          | 
                        |                                                                                 |
	                    |   - Outputs:                                                                    |
		                |         ---> `D0`: Output signal for binary input `00`.                         |
		                |         ---> `D1`: Output signal for binary input `01`.                         |
		                |         ---> `D2`: Output signal for binary input `10`.                         |
		                |         ---> `D3`: Output signal for binary input `11`.                         |
                        |                                                                                 |
	                    |   - Internal Signals:                                                           |
		                |         ---> `nx`: Complement of `x`.                                           |
		                |         ---> `ny`: Complement of `y`.                                           |
		                |         ---> `nE`: Complement of `E`.                                           |
                        |                                                                                 |
	                    |   - Assignments:                                                                |
		                |         ---> `nx`, `ny`, `nE`: Assignments of the complement                    |
                        |              values for the inputs.                                             |
		                |         ---> `D0`, `D1`, `D2`, `D3`: Assignments of the output signals          |
                        |         based on the input combinations using logical AND gate operations.      |
                        |_________________________________________________________________________________|


   * The Module [*Decoder3x8*]():
   The *Decoder3x8* module represents a 3x8 decoder. It has three inputs (x, y, z) and eight outputs (D[7] to D[0]). 
   Each output represents one of the eight possible combinations of the binary inputs.

                         __________________________________________________________________________________
	                    |                                                                                 |
	                    |   - Inputs:                                                                     |
		                |         ---> `x`: Binary input signal.                                          |
		                |         ---> `y`: Binary input signal.                                          |
		                |         ---> `z`: Binary input signal.                                          |
                        |                                                                                 |
	                    |   - Outputs:                                                                    |
		                |         ---> `D[7:0]`: Eight-bit output signal representing the eight           |
                        |                possible combinations of the binary inputs.                      |
                        |                                                                                 |
	                    |   - Internal Signals:                                                           |
		                |         ---> `D0`, `D1`, `D2`, `D3`: Four-bit output signals from two           |
                        |                2x4 decoder modules (`Decoder2x4`) used as sub-modules.          |
                        |                                                                                 |
	                    |   - Assignments:                                                                |
		                |         ---> Instantiation of two `Decoder2x4` modules (`u1` and `u2`) and      |
                        |                connections to the inputs and outputs.                           |
		                |         ---> `D`: Assignment of the eight-bit output signal by                  |
                        |                concatenating the four-bit output signals.                       |
		                |      (`D3[0]`, `D2[0]`, `D1[0]`, `D0[0]`, `D3[1]`, `D2[1]`, `D1[1]`, `D0[1]`)   |
                        |      in the specified order.                                                    |
                        |_________________________________________________________________________________|


   * The Module [*Decoder3x8_tb*]():
   The *Decoder3x8_tb* module serves as a testbench for the *Decoder3x8* module to verify its functionality. 
   It instantiates the *Decoder3x8* module (dut instance) and connects the input and output ports.

                         __________________________________________________________________________________
	                    |                                                                                 |
	                    |   - Inputs:                                                                     |
			            |         ---> `x`, `y`, `z`: Testbench inputs representing the binary input      |
                        |               values for `x`, `y`, and `z`, respectively.                       |
                        |                                                                                 |
	                    |   - Outputs:                                                                    |
		                |         ---> `D`: Testbench output representing the expected eight-bit output   | 
                        |               signal (`D[7:0]`) from the `Decoder3x8` module.                   |
                        |                                                                                 |
	                    |   - Initial Block:                                                              |
		                |         ---> The `initial` block is responsible for test scenario execution     |
                        |              and displaying the values of inputs and outputs using the          |
                        |              `$display` and `$monitor` macros.                                  |
                        |_________________________________________________________________________________|
                        |                                                                                 |
                        |    The following are the test scenarios executed:                               |
		                |         ---> 1. Set `x`, `y`, `z` to `0`.                                       |
		                |         ---> 2. Wait for 10 time units.                                         |
		                |         ---> 3. Set `x`, `y`, `z` to `0`, `0`, `1` respectively.                |
		                |         ---> 4. Wait for 10 time units.                                         |
		                |         ---> 5. Set `x`, `y`, `z` to `0`, `1`, `0` respectively.                |
		                |         ---> 6. Wait for 10 time units.                                         |
		                |         ---> 7. Set `x`, `y`, `z` to `0`, `1`, `1` respectively.                |
		                |         ---> 8. Wait for 10 time units.                                         |
		                |         ---> 9. Set `x`, `y`, `z` to `1`, `0`, `0` respectively.                |
		                |         ---> 10. Wait for 10 time units.                                        |
		                |         ---> 11. Set `x`, `y`, `z` to `1`, `0`, `1` respectively.               |
		                |         ---> 12. Wait for 10 time units.                                        |
		                |         ---> 13. Set `x`, `y`, `z` to `1`, `1`, `0` respectively.               |
		                |         ---> 14. Wait for 10 time units.                                        |
		                |         ---> 15. Set `x`, `y`, `z` to `1`, `1`, `1` respectively.               |
		                |         ---> 16. Wait for 10 time units.                                        |
                        |_________________________________________________________________________________|

## Output

![Decoder 3to8](https://github.com/jElhamm/Verilog-HDL-Codes-Collection/blob/main/Decoder%203to8/Output.png)


## References

   * [Decoder](https://www.allaboutcircuits.com/textbook/digital/chpt-9/decoder/#:~:text=A%20decoder%20is%20a%20circuit,they%20are%20simpler%20to%20design.)
   * [Verilog Simulation Basics](https://www.javatpoint.com/verilog-simulation-basics#:~:text=Verilog%20is%20a%20hardware%20description,behaves%20in%20an%20intended%20way.)