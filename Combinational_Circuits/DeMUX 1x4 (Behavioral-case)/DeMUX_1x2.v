/********************************************************************************************
Filename    :      DeMUX_1x2.v
Description :      1:2 Demultiplexer RTL using case statement
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      1:4 Demultiplexer
Date        :      02-December-2025
*********************************************************************************************/

module DeMUX_1x2 (

input In, S0,
output reg Y0, Y1 );

always @ (In or S0)
begin
    case (S0)
        1'b0: begin                // When S0=0, route In to Y0
                Y0 = In;
                Y1 = 1'b0;
              end
        1'b1: begin                // When S0=1, route In to Y1
                Y0 = 1'b0;
                Y1 = In;
              end
        default: begin             // Default case to avoid latches
                Y0 = 1'b0;
                Y1 = 1'b0;
                 end
    endcase
end

endmodule    