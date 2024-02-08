# Bin To 7seg Decoder

   The given code consists of two modules: [*BinTo_7segDecoder*](BinTo%207seg%20Decoder/BinTo_7segDecoder.v) and [*BinTo_7segDecoder_tb*](BinTo%207seg%20Decoder/BinTo_7segDecoder_tb.v).

## Description:
	
   * The module [*Bin_to_7seg_decoder*](BinTo%207seg%20Decoder/BinTo_7segDecoder.v) is a binary-to-7-segment decoder. 
   It takes a 4-bit binary input (D) and converts it into a 7-bit output (seg). 
   The output represents the corresponding segments to display the input number on a 7-segment display. 
   There is an "always @*" block that executes whenever there is a change in the input values. 
   It uses a case statement to map each possible input value to the appropriate 7-segment representation. 
   For example, if the input is "0000", the output seg is set to "1000000" to display the digit 0. 
   If there is no match for the input value in the case statement, the default case is executed, and the 
   output seg is set to "0000000" to turn off all segments (blank display).

   * The module "Bin_to_7seg_decoder_tb" is a testbench module for the "Bin_to_7seg_decoder". 
   It instantiates the decoder module and provides the necessary input and output signals. 
   In the initial block, it simulates different input values by assigning them to the input 
   signal D with a delay of 10 time units between each assignment. After simulating the input values, 
   it displays a conversion table that shows the input values (D) and the corresponding output segments (seg) for each input value.

   * Overall, this code implements a binary-to-7-segment decoder and tests it using a [*testbench*](BinTo%207seg%20Decoder/BinTo_7segDecoder_tb.v) by simulating different input values 
   and verifying the expected output segments.

## Output

![Bin To 7seg Decoder](https://github.com/jElhamm/Verilog-HDL-Codes-Collection/blob/main/BinTo%207seg%20Decoder/Output.png)


## References

   * [Verilog](https://en.wikipedia.org/wiki/Verilog#:~:text=Verilog%2C%20standardized%20as%20IEEE%201364,register%2Dtransfer%20level%20of%20abstraction.)
   * [Seven-segment display](https://en.wikipedia.org/wiki/Seven-segment_display)
   * [BCD to 7 Segment Decoder](https://www.geeksforgeeks.org/bcd-to-7-segment-decoder/)
   * [Verilog Simulation Basics](https://www.javatpoint.com/verilog-simulation-basics#:~:text=Verilog%20is%20a%20hardware%20description,behaves%20in%20an%20intended%20way.)