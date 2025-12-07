/********************************************************************************************
Filename    :      half_adder_dataflow.v
Description :      Half Adder RTL 
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      Half Adder (Data flow)
Date        :      06-November-2025
*********************************************************************************************/

module half_adder_dataflow (A,B,Sum,Carry);        // module declaration: half_adder_dataflow   

input A,B;                        // input ports 
output Sum,Carry;                 // output ports 

assign Sum= A ^ B;                   // continuous assignment statement for sum
assign Carry= A & B;                 // continuous assignment statement for carry

endmodule                                 