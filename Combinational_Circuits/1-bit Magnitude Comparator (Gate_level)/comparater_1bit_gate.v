/********************************************************************************************
Filename    :      comparator_1bit_gate.v
Description :      1-bit Magnitude Comparator RTL
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      1-bit Magnitude Comparator (Gate level)
Date        :      01-December-2025
*********************************************************************************************/
module comparator_1bit_gate (

input A,B,
output GT,EQ,LT   );

and (GT, A,~B);    //Output GT, inputs A and NOT B, operation AND
and (LT, ~A,B);    //Output LT, inputs NOT A and B, operation AND
xnor (EQ, A,B);    //Output EQ, inputs A and B, operation XNOR

endmodule