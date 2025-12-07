/********************************************************************************************
Filename    :      half_adder_gate.v
Description :      Half Adder RTL
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      Half Adder (Gate Level)
Date        :      04-October-2025
*********************************************************************************************/
//module declaration: half_adder_gate

module half_adder_gate (A,B,sum,carry);      

input A,B;            
output sum,carry;                         

xor X1 (sum,A,B);       //X1 XOR gate instance, o/p sum | inputs A,B
and A1 (carry,A,B);     //A1 AND gate instance, o/p carry | inputs A,B

endmodule