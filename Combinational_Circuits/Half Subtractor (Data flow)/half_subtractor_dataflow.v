/********************************************************************************************
Filename    :      half_subtractor_dataflow.v
Description :      Half Subtractor RTL (Dataflow Modeling)
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      Half Subtractor (Data flow) 
Date        :      15-November-2025
*********************************************************************************************/

module half_subtractor_dataflow ( 

input A,B,
output Diff,Borr   );

assign Diff = A ^ B;       // Difference calculation 
assign Borr = ~A & B;      // Borrow calculation

endmodule