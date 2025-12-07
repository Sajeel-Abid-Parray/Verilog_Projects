/********************************************************************************************
Filename    :      full_subtractor_gate.v
Description :      Full Subtractor RTL (using Gate-Level Modeling)
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      Full Subtractor  
Date        :      17-November-2025
*********************************************************************************************/

module full_subtractor_gate ( 

input A,B,Bin,
output Diff,Borr );
wire w0,w1,w2,w3,w4;           // Internal wires to connect gates

// Difference calculation
xor XOR1 (w0, A, B);            // First XOR gate
xor XOR2 (Diff, w0, Bin);        // Second XOR gate, w1 holds A xor B      

// Borrow calculation
and AND1 (w1, ~A, B);          // First AND gate ==> <gate> <instance name> ( <output>, <input1>, <input2> );
and AND2 (w2, B, Bin);         // Second AND gate ==> <gate> <instance name> ( <output>, <input1>, <input2> );
and AND3 (w3, ~A, Bin);        // Third AND gate ==> <gate>  <instance name> ( <output>, <input1>, <input2> );

or OR1 (w4, w1, w2);      // OR gates to generate final Borrow output
or OR2 (Borr, w4, w3);

endmodule