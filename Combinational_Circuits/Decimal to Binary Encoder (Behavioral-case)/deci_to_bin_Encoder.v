/********************************************************************************************
Filename    :      deci_to_bin_Encoder.v
Description :      Decimal to Binary Encoder RTL 
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      Decimal to Binary Encoder (10:4 Encoder)
Date        :      28-November-2025
*********************************************************************************************/

module deci_to_bin_Encoder(

input [9:0] D, 
output reg [3:0] Y  );

always @(*) 
begin
    casez (D)
        10'b0000000001 : Y = 4'b0000; // Decimal 0
        10'b0000000010 : Y = 4'b0001; // Decimal 1
        10'b0000000100 : Y = 4'b0010; // Decimal 2
        10'b0000001000 : Y = 4'b0011; // Decimal 3
        10'b0000010000 : Y = 4'b0100; // Decimal 4
        10'b0000100000 : Y = 4'b0101; // Decimal 5
        10'b0001000000 : Y = 4'b0110; // Decimal 6
        10'b0010000000 : Y = 4'b0111; // Decimal 7
        10'b0100000000 : Y = 4'b1000; // Decimal 8
        10'b1000000000 : Y = 4'b1001; // Decimal 9
        default : Y = 4'bzzzz;        // Default case avoids latches, better for synthesis (better Code coverage)
                                      // output is high impedence(z) at default state             
    endcase
end

endmodule
