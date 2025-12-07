/********************************************************************************************
Filename    :      tri_state_buffer.v
Description :      Tri State buffer RTL 
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      Tri state buffer 
Date        :      30-November-2025
*********************************************************************************************/

module tri_state_buffer (Din,Ctrl,Y);

input Din, Ctrl;
output Y;

assign Y= Ctrl? Din : 1'bz;      //If Ctrl=1, output Din else high impedance state z

endmodule
