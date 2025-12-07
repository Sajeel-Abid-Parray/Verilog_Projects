/********************************************************************************************
Filename    :      Encoder_4x2_case.v
Description :      4:2 Encoder RTL (Behavioral Modeling)
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      4:2 Encoder (using case statement)
Date        :      27-November-2025
*********************************************************************************************/
module Encoder_4x2_case ( 

input [3:0] D,
output reg [0:1] Y   );

always @(*)
begin   
    casez(D)  
        4'b0001: {Y[0],Y[1]} = 2'b00; // D[0] is active
        4'b0010: {Y[0],Y[1]} = 2'b01; // D[1] is active
        4'b0100: {Y[0],Y[1]} = 2'b10; // D[2] is active
        4'b1000: {Y[0],Y[1]} = 2'b11; // D[3] is active
        default: {Y[0],Y[1]} = 2'bzz; /* Default case avoids latches, better for synthesis (better Code coverage)
                                         output is high impedence(z) at default state             */
    endcase
end	 

endmodule