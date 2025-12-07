/********************************************************************************************
Filename    :      Decoder_2x4.v
Description :      2:4 Decoder RTL
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      2:4 Decoder
Date        :      30-November-2025
*********************************************************************************************/
module Decoder_2x4 (

input [1:0] D,
input En,
output reg [3:0] Y  );

always @(*)
begin
      if (En != 1'b1) 
         Y = 4'b0000;          // When Enable is low, all outputs are low
      else
        begin
           case (D)
              2'b00 : Y = 4'b0001; // Output 0 is high
              2'b01 : Y = 4'b0010; // Output 1 is high
              2'b10 : Y = 4'b0100; // Output 2 is high
              2'b11 : Y = 4'b1000; // Output 3 is high
            default : Y = 4'b0000; // Default case to avoid latches
            endcase
        end
end

endmodule
