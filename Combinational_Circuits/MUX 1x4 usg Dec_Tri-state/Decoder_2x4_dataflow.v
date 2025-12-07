/********************************************************************************************
Filename    :      Decoder_2x4_dataflow.v
Description :      2:4 Decoder RTL
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      2:4 Decoder
Date        :      30-November-2025
*********************************************************************************************/
module Decoder_2x4_dataflow (

input S0, S1,
output [3:0] m  );

assign m[0] = ~S1 & ~S0; // Output 0 is high when S1S0 = 00
assign m[1] = ~S1 & S0;  // Output 1 is high when S1S0 = 01
assign m[2] = S1 & ~S0;  // Output 2 is high when S1S0 = 10
assign m[3] = S1 & S0;   // Output 3 is high when S1S0 = 11

endmodule


