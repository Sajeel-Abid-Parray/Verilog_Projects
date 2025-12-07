/********************************************************************************************
Filename    :      full_subtractor_usg_2HS.v
Description :      Full Subtractor RTL (Using 2 Half Subtractors and 1 OR gate)
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      Full Subtractor using 2 Half Subtractors
Date        :      17-November-2025
*********************************************************************************************/

module full_subtractor_usg_2HS ( 

input A,B,Bin,
output Diff,Borr );
wire w1,w2,w3;               // Internal wires to connect half subtractors

half_subtractor_dataflow HS1 ( .A(A), .B(B), .Diff(w1), .Borr(w2) );            // First Half Subtractor
half_subtractor_dataflow HS2 ( .A(w1), .B(Bin), .Diff(Diff), .Borr(w3) );       // Second Half Subtractor

or OR1 (Borr, w2, w3);            // OR gate to generate final Borrow output

endmodule                          
