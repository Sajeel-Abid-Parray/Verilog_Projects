/********************************************************************************************
Filename    :      comparator_1bit_data.v
Description :      1-bit Magnitude Comparator RTL
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      1-bit Magnitude Comparator (Data flow)
Date        :      01-December-2025
*********************************************************************************************/

module comparator_1bit_data (

input A, B,
output  GT, EQ, LT   );

assign GT = A & ~B;     
assign LT = ~A & B; 
assign EQ = ~(A ^ B);

endmodule