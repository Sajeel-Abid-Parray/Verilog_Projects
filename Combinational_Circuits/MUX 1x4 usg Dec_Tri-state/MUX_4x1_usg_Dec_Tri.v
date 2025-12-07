/********************************************************************************************
Filename    :      MUX_4x1_usg_Dec_Tri.v
Description :      4:2 MUX using 2:4 Decoder and Tri state buffers RTL 
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      4:1 Multiplexer
Date        :      30-November-2025
*********************************************************************************************/

module MUX_4x1_usg_Dec_Tri ( 

input S0, S1, 
input [3:0] I,
output Y ); 
    
wire [3:0]w;
wire [3:0]y;

// Instantiating 2:4 Decoder
Decoder_2x4_dataflow U1 (  .S0(S0),  .S1(S1),  .m(w) );
    
// Instantiating tri-state buffers for each input
tri_state_buffer T0 ( .Din(I[0]), .Ctrl(w[0]), .Y(y[0]) );
tri_state_buffer T1 ( .Din(I[1]), .Ctrl(w[1]), .Y(y[1]) );
tri_state_buffer T2 ( .Din(I[2]), .Ctrl(w[2]), .Y(y[2]) );
tri_state_buffer T3 ( .Din(I[3]), .Ctrl(w[3]), .Y(y[3]) );

// OR gate to combine outputs of tri-state buffers
assign Y = y[0] | y[1] | y[2] | y[3];

endmodule
