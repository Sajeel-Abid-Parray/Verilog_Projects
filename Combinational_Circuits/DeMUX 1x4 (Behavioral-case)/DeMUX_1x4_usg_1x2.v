/********************************************************************************************
Filename    :      DeMUX_1x4_usg_1x2.v
Description :      1:4 Demultiplexer using 1:2 Demultiplexers
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      1:4 Demultiplexer using 1:2 Demultiplexers
Date        :      02-December-2025
*********************************************************************************************/
module DeMUX_1x4_usg_1x2 (

input In, S0, S1,
output Y0, Y1, Y2, Y3   );

wire YL0, YL1;

DeMUX_1x2 D1 ( .In(In), .S0(S1), .Y0(YL0), .Y1(YL1) ); // DeMUX for first split

DeMUX_1x2 D2 ( .In(YL0), .S0(S0), .Y0(Y0), .Y1(Y1) ); // DeMUX for YL0
DeMUX_1x2 D3 ( .In(YL1), .S0(S0), .Y0(Y2), .Y1(Y3) ); // DeMUX for YL1

endmodule