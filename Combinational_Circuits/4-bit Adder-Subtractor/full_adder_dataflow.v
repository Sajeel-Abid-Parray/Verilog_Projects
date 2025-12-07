/********************************************************************************************
Filename    :      full_adder_dataflow.v
Description :      Full Adder RTL (Dataflow Modeling)
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      Adder-Subtractor using Full Adders  
Date        :      17-November-2025
*********************************************************************************************/

module full_adder_dataflow ( 

input A,B,Cin,
output Sum,Carry   );

assign Sum= A ^ B ^ Cin;                           // Sum calculation using XOR gates
assign Carry= (A & B) | (B & Cin) | (A & Cin);     // Carry calculation as per boolean equation

endmodule  


