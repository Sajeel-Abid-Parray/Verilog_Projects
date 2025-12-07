/********************************************************************************************
Filename    :      Encoder_8x3.v
Description :      8:3 Encoder RTL 
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      8:3 Encoder (using case statement)
Date        :      28-November-2025
*********************************************************************************************/
module Encoder_8x3 ( 

input [7:0] D,  
output reg [0:2] Y   );

always @(*)
begin
    casez(D)  
        8'b00000001: {Y[0],Y[1],Y[2]} = 3'b000; // D[0] is active
        8'b00000010: {Y[0],Y[1],Y[2]} = 3'b001; // D[1] is active
        8'b00000100: {Y[0],Y[1],Y[2]} = 3'b010; // D[2] is active
        8'b00001000: {Y[0],Y[1],Y[2]} = 3'b011; // D[3] is active
        8'b00010000: {Y[0],Y[1],Y[2]} = 3'b100; // D[4] is active
        8'b00100000: {Y[0],Y[1],Y[2]} = 3'b101; // D[5] is active
        8'b01000000: {Y[0],Y[1],Y[2]} = 3'b110; // D[6] is active
        8'b10000000: {Y[0],Y[1],Y[2]} = 3'b111; // D[7] is active
        default: {Y[0],Y[1],Y[2]} = 3'bzzz; /* Default case avoids latches, better for synthesis (better Code coverage)
                                         output is high impedence(z) at default state             */
    endcase
end

endmodule