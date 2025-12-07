/********************************************************************************************
Filename    :      DeMUX_1x4.v
Description :      1:4 Demultiplexer RTL using case statement
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      1:4 Demultiplexer
Date        :      02-December-2025
*********************************************************************************************/
module DeMUX_1x4 (

input In, S0, S1,
output reg Y0, Y1, Y2, Y3   );

always @ (In or S0 or S1)
begin
    case ({S1, S0})
        2'b00: begin                // When S1S0=00, route In to Y0
                Y0 = In;
                Y1 = 1'b0;
                Y2 = 1'b0;
                Y3 = 1'b0;
               end
        2'b01: begin                // When S1S0=01, route In to Y1
                Y0 = 1'b0;
                Y1 = In;
                Y2 = 1'b0;
                Y3 = 1'b0;
               end
        2'b10: begin                // When S1S0=10, route In to Y2
                Y0 = 1'b0;
                Y1 = 1'b0;
                Y2 = In;
                Y3 = 1'b0;
               end
        2'b11: begin                // When S1S0=11, route In to Y3
                Y0 = 1'b0;
                Y1 = 1'b0;
                Y2 = 1'b0;
                Y3 = In;
               end
        default: begin             // Default case to avoid latches
                Y0 = 1'b0;
                Y1 = 1'b0;
                Y2 = 1'b0;
                Y3 = 1'b0;
                 end
    endcase
end

endmodule