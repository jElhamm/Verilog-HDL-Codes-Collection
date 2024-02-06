//  ***********************************************
//  *                Encoder 8to3                 *
//  ***********************************************



module Encoder_8to3(input [7:0] dataIn, output reg [2:0] codeOut);

always @(*) begin
    case (dataIn)
        8'b00000001: codeOut = 3'b000;
        8'b00000010: codeOut = 3'b001;
        8'b00000100: codeOut = 3'b010;
        8'b00001000: codeOut = 3'b011;
        8'b00010000: codeOut = 3'b100;
        8'b00100000: codeOut = 3'b101;
        8'b01000000: codeOut = 3'b110;
        8'b10000000: codeOut = 3'b111;
        default: codeOut = 3'bxxx;
    endcase
end

endmodule