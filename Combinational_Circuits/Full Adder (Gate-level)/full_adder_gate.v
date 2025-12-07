/********************************************************************************************
Filename    :      full_adder_gate.v
Description :      Full Adder RTL (Gate-Level Modeling)
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      Full Adder 
Date        :      13-November-2025
*********************************************************************************************/

module full_adder_gate ( 
    
input A,B,Cin,
output Sum,Carry );
wire w1,w2,w3;        // internal wires

//Sum= A XOR B XOR Cin
xor XOR1 (w1,A,B);        // first XOR gate
xor XOR2 (Sum,w1,Cin);    // second XOR gate

//Carry= (A.B) + (B.Cin) + (A.Cin)
and AND1 (w2,A,B);         // first AND gate
and AND2 (w3,w1,Cin);      // second AND gate

or OR1 (Carry,w2,w3);      // OR gate to generate final carry

endmodule