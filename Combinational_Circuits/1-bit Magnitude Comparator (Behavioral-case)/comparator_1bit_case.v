/********************************************************************************************
Filename    :      comparator_1bit_case.v
Description :      1-bit Magnitude Comparator RTL
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      1-bit Magnitude Comparator (using case statement)
Date        :      01-December-2025
*********************************************************************************************/
module comparator_1bit_case (

input A,B,
output reg GT,EQ,LT  );

always @(*)
begin 
    case ({A,B})
        2'b00: {GT,EQ,LT} = 3'b010; // A=B
        2'b01: {GT,EQ,LT} = 3'b001; // A<B
        2'b10: {GT,EQ,LT} = 3'b100; // A>B
        2'b11: {GT,EQ,LT} = 3'b010; // A=B
        default: {GT,EQ,LT} = 3'b000; // Default case (should not occur)
    endcase
end
endmodule   