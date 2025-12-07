/********************************************************************************************
Filename    :      MUX_4x1_usg_2x1.v
Description :      4:1 MUX using 2:1 MUXes
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      4:1 Multiplexer
Date        :      02-December-2025
*********************************************************************************************/
module MUX_4x1_usg_2x1 (

input I0, I1, I2, I3, 
input S0, S1,
output Y      );

wire Y0, Y1;


MUX_2x1_dataflow M1 ( .I0(I0), .I1(I1), .S0(S0), .Y(Y0) ); // MUX for I0 and I1
MUX_2x1_dataflow M2 ( .I0(I2), .I1(I3), .S0(S0), .Y(Y1) ); // MUX for I2 and I3

MUX_2x1_dataflow M3 ( .I0(Y0), .I1(Y1), .S0(S1), .Y(Y) );  // Final MUX

endmodule