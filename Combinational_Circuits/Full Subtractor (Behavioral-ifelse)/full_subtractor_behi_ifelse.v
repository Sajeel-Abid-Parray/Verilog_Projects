/********************************************************************************************
Filename    :      full_subtractor_behi_ifelse.v
Description :      Full Subtractor RTL (Behavioral Modeling)
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      Full Subtractor 
Date        :      17-November-2025
*********************************************************************************************/
module full_subtractor_behi_ifelse (
input  A, B, Bin,
output reg  Diff, Borr   );

always @(*)      
begin
    
    // DIFFERENCE logic
    if (A ^ B ^ Bin)               //if 'A^B^Bin' (Difference equation) is 1 or logically true, then
        Diff = 1'b1;
    else
        Diff = 1'b0;

   // BORROW logic
    if ((~A & B) | (B & Bin) | (~A & Bin))    //if '~A.B + B.Bin + ~A.Bin' (Borrow equation) is 1 or logically true, then
        Borr = 1'b1;
    else
        Borr = 1'b0;
end

endmodule