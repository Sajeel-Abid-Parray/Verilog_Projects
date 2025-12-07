/********************************************************************************************
Filename    :      BCD_to_7segment.v
Description :      BCD to 7-Segment Display Decoder RTL
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      BCD to 7-Segment Display Decoder
Date        :      01-December-2025
*********************************************************************************************/
module BCD_to_7segment (

input  A,B,C,D,
output reg a,b,c,d,e,f,g    );

always @(*)
begin
    case ({A,B,C,D})
        4'b0000: {a,b,c,d,e,f,g} = 7'b1111110; //0
        4'b0001: {a,b,c,d,e,f,g} = 7'b0110000; //1
        4'b0010: {a,b,c,d,e,f,g} = 7'b1101101; //2
        4'b0011: {a,b,c,d,e,f,g} = 7'b1111001; //3
        4'b0100: {a,b,c,d,e,f,g} = 7'b0110011; //4
        4'b0101: {a,b,c,d,e,f,g} = 7'b1011011; //5
        4'b0110: {a,b,c,d,e,f,g} = 7'b1011111; //6
        4'b0111: {a,b,c,d,e,f,g} = 7'b1110000; //7
        4'b1000: {a,b,c,d,e,f,g} = 7'b1111111; //8
        4'b1001: {a,b,c,d,e,f,g} = 7'b1111011; //9
        default: {a,b,c,d,e,f,g} = 7'b0000000; //Off for invalid BCD inputs
    endcase
end

endmodule

         