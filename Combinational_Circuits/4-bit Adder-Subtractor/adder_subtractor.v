/********************************************************************************************
Filename    :      adder_subtractor.v
Description :      Adder-Subtractor RTL 
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      Adder-Subtractor using Full Adders 
Date        :      17-November-2025
*********************************************************************************************/
module adder_subtractor (

input [3:0] A, B,
input  Mode,             // Mode = 0 for Addition, Mode = 1 for Subtraction
output [3:0] D_S,        // 4-bit Sum/Difference output
output B_C         );    // Carry-out/Borrow-out from last full adder
 
wire [3:0] B_mod;        // Modified B input based on Mode
wire w1, w2, w3;         // Carry/Borrow wires between full adders

// Modified B based on Mode (XOR each bit of B with Mode)
xor (B_mod[0], B[0], Mode);
xor (B_mod[1], B[1], Mode); 
xor (B_mod[2], B[2], Mode);
xor (B_mod[3], B[3], Mode);

// Instantiating 4 Full Adders/Subtractors
full_adder_dataflow FA1 (.A(A[0]),.B(B_mod[0]),.Cin(Mode),.Sum(D_S[0]),.Carry(w1));
full_adder_dataflow FA2 (.A(A[1]),.B(B_mod[1]),.Cin(w1),.Sum(D_S[1]),.Carry(w2));
full_adder_dataflow FA3 (.A(A[2]),.B(B_mod[2]),.Cin(w2),.Sum(D_S[2]),.Carry(w3));
full_adder_dataflow FA4 (.A(A[3]),.B(B_mod[3]),.Cin(w3),.Sum(D_S[3]),.Carry(B_C));

endmodule