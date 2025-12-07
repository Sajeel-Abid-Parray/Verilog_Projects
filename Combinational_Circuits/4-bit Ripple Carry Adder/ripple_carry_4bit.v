/********************************************************************************************
Filename    :      ripple_carry_4bit.v
Description :      4-bit Ripple carry Full Adder RTL by instantiating 4 full adders
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      Ripple Carry Full Adder 
Date        :      27-November-2025
*********************************************************************************************/

module ripple_carry_4bit (
    
input [3:0] A,B,
input Cin,
output [3:0] Sum,
output Carry       );

wire c0,c1,c2;   

// Instantiating 4 Full Adders
full_adder_dataflow FA0(.A(A[0]),.B(B[0]),.Cin(Cin),.Sum(Sum[0]),.Carry(c0));
full_adder_dataflow FA1(.A(A[1]),.B(B[1]),.Cin(c0),.Sum(Sum[1]),.Carry(c1));
full_adder_dataflow FA2(.A(A[2]),.B(B[2]),.Cin(c1),.Sum(Sum[2]),.Carry(c2));
full_adder_dataflow FA3(.A(A[3]),.B(B[3]),.Cin(c2),.Sum(Sum[3]),.Carry(Carry));

endmodule 








