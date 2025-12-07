/********************************************************************************************
Filename    :      MUX_2x1_dataflow.v
Description :      2:1 Multiplexer RTL using Dataflow Modeling
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      2:1 MUX
Date        :      02-December-2025
*********************************************************************************************/

module MUX_2x1_dataflow (

input I0, I1, 
input S0,
output Y     );

assign Y = (S0) ? I1 : I0;    //if S0=1 then Y=I1 else Y=I0

endmodule
 
