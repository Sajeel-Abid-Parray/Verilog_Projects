/********************************************************************************************
Filename    :      MUX_8x1_usg_4x1_2x1.v
Description :      8:1 MUX using 4:1 MUXes and 2:1 MUX
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      8:1 Multiplexer
Date        :      02-December-2025
*********************************************************************************************/
module MUX_8x1_usg_4x1_2x1 (

input I0, I1, I2, I3, I4, I5, I6, I7,
input S0, S1, S2,
output Y  );

wire Y0, Y1;

MUX_4x1_dataflow M1 ( .I0(I0), .I1(I1), .I2(I2), .I3(I3), .S0(S0), .S1(S1), .Y(Y0) ); // MUX for I0 to I3
MUX_4x1_dataflow M2 ( .I0(I4), .I1(I5), .I2(I6), .I3(I7), .S0(S0), .S1(S1), .Y(Y1) ); // MUX for I4 to I7

MUX_2x1_dataflow M3 ( .I0(Y0), .I1(Y1), .S0(S2), .Y(Y) ); // Final MUX

endmodule