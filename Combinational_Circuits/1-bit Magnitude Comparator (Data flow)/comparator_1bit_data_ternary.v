/********************************************************************************************
Filename    :      comparator_1bit_data_ternary.v
Description :      1-bit Magnitude Comparator RTL
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      1-bit Magnitude Comparator (Data flow)   
Date        :      01-December-2025
*********************************************************************************************/

module comparator_1bit_data_ternary (

input A,B,
output  GT,EQ,LT  );

assign GT = (A == 1'b1 && B == 1'b0) ? 1'b1 : 1'b0;      // if A is high and B is low, GT is high
assign LT = (A == 1'b0 && B == 1'b1) ? 1'b1 : 1'b0;       // if A is low and B is high, LT is high
assign EQ = (A == B) ? 1'b1 : 1'b0;                  // if A equals B, EQ is high

endmodule