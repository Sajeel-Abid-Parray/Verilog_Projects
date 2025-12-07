/********************************************************************************************
Filename    :      full_adder_usg_2HA.v
Description :      Half Adder RTL by instantiating the half Adder module twice to make a full Adder
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      Full Adder using 2 Half Adders
Date        :      13-November-2025
*********************************************************************************************/

module full_adder_usg_2HA (A,B,Cin,Sum,Carry);  

input A,B,Cin;
output Sum,Carry; 
wire w1,w2,w3;   // internal wires
                                                          // .<port>(<signal>) ---> named connections
half_adder_behi_case HA1 (.A(A),.B(B),.sum(w1),.carry(w2));         // First Half Adder
half_adder_behi_case HA2 (.A(w1),.B(Cin),.sum(Sum),.carry(w3));     // Second Half Adder

or OR1 (Carry,w3,w2);          // or gate to generate final carry (order based connection)

endmodule 


