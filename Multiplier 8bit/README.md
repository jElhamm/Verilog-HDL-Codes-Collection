# Multiplier Bit 8

   The given code consists of two modules: [*EightBitMultiplier*](Multiplier%208bit/EightBitMultiplier.v) and [*EightBitMultiplier_TB*](Multiplier%208bit/EightBitMultiplier_tb.v).

## Description:

   * `EightBitMultiplier` module represents an 8-bit multiplier with a synchronous enable signal (`S`) and an output register `P` of 16 bits. 
   Here's a breakdown of the module:

                    ***********************************************************************************
                    *                                                                                 *
		            *        - Inputs:                                                                *
  			        *                    `A` (8 bits): Multiplicand input.                            *
  			        *                    `B` (8 bits): Multiplier input.                              *
  			        *                    `S` (1 bit): Enable signal to trigger multiplication.        *
                    *                                                                                 *
		            *         - Outputs:                                                              *
  			        *                    `P` (16 bits): Product output of `A` multiplied by `B`.      *
                    *                                                                                 *
                    ***********************************************************************************

   * Inside the `always` block, which is triggered on the positive edge of either `S` or `S_internal`, the following operations are performed:

            *******************************************************************************************************
            *                                                                                                     *
		    *    When `S` is asserted (equal to 1), the `RA` and `RB` registers are loaded with values of `A`     * 
            *          and `B` respectively. `P` is reset to zero. When `S` is deasserted (equal to 0),           *
            *    if `RB` (multiplier) is zero, `S_internal` is set to 0 to halt the multiplication process.       *
			*        Otherwise, `P` is incremented with the value of `RA` (multiplicand) and the `RB`             *
            *                             (multiplier) is decremented by 1.                                       *
            *                                                                                                     *
            *******************************************************************************************************


   * `EightBitMultiplier_TB` module represents the testbench for the `EightBitMultiplier` module. Here's a breakdown of the module:

                    ***********************************************************************************
                    *                                                                                 *
		            *        - Inputs:                                                                *
  			        *               `A` (8 bits): Multiplicand value.                                 *
  			        *               `B` (8 bits): Multiplier value.                                   *
                    *                                                                                 *
		            *       - Outputs:                                                                *
  			        *              `S_internal`: Internal signal to control the enable `S` signal.    *
  			        *              `P` (16 bits): Product output.                                     *
                    *                                                                                 *
                    ***********************************************************************************


   * The `EightBitMultiplier` module is instantiated (`DUT` instance) and connected to the respective ports. 
	  Inside the `initial` block, some test scenarios are executed:

            ***************************************************************************************************************
            *                                                                                                             *
  			*   1. A is set to the binary representation of decimal 5, and B is set to the binary representation of       *
            *      decimal 5 as well.                                                                                     *
            *                                                                                                             *
  			*   2. After 10 time units (#10), `S` is deasserted (equal to 0) and after 50 more time units (#50),          *
            *      `S` is asserted (equal to 1). The multiplication is triggered.                                         *
            *                                                                                                             *
  			*   3. The current values of A, B, and P are displayed using `$display` macro.                                *
            *                                                                                                             *
  			*   4. A is set to the binary representation of decimal 100, and B is set to the binary representation        *
            *      of decimal 2.                                                                                          *
            *                                                                                                             *
  			*   5. After 10 time units (#10), `S` is deasserted (equal to 0) and after 50 more time units (#50),          *
            *      `S` is asserted (equal to 1). The multiplication is triggered.                                         *
            *                                                                                                             *
  			*   6. The current values of A, B, and P are displayed using `$display` macro.                                *
            *                                                                                                             *
            ***************************************************************************************************************


## Output

![Multiplier Bit 8](https://github.com/jElhamm/Verilog-HDL-Codes-Collection/blob/main/Multiplier%208bit/Output.png)

## References

   * [Verilog](https://en.wikipedia.org/wiki/Verilog#:~:text=Verilog%2C%20standardized%20as%20IEEE%201364,register%2Dtransfer%20level%20of%20abstraction.)
   * [Verilog Simulation Basics](https://www.javatpoint.com/verilog-simulation-basics#:~:text=Verilog%20is%20a%20hardware%20description,behaves%20in%20an%20intended%20way.)
   * [Multiplexer (MUX) - All modeling styles](https://technobyte.org/verilog-multiplexer-2x1/)