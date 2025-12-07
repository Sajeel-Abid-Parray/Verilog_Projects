/********************************************************************************************
Filename    :      MUX_4x1_dataflow.v
Description :      4:1 Multiplexer RTL using Dataflow Modeling
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      4:1 MUX
Date        :      02-December-2025
*********************************************************************************************/
module MUX_4x1_dataflow (

input I0, I1, I2, I3, 
input S0, S1,
output Y     );

assign Y = (S1 == 0 && S0 == 0) ? I0 :            //if S1=0,S0=0 then Y=I0
           (S1 == 0 && S0 == 1) ? I1 :            //if S1=0,S0=1 then Y=I1
           (S1 == 1 && S0 == 0) ? I2 : I3;        //if S1=1,S0=0 then Y=I2 -------else Y=I3

endmodule