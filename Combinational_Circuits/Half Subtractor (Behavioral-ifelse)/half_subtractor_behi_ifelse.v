/********************************************************************************************
Filename    :      half_subtractor_behi_ifelse.v
Description :      Half Subtractor RTL ( Behavioral Modeling )
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      Half Subtractor (Behavioral-ifelse) 
Date        :      15-November-2025
*********************************************************************************************/

module half_subtractor_behi_ifelse (
input  A, B,
output reg  Diff, Borr   );

always @(*)      
  begin
    
    // DIFFERENCE logic
    if (A ^ B)               //if 'A^B' (Difference equation) is 1 or logically true, then
        Diff = 1'b1;
    else
        Diff = 1'b0;

   // BORROW logic
    if (~A & B)    //if '~A.B' (Borrow equation) is 1 or logically true, then
        Borr = 1'b1;
    else
        Borr = 1'b0;
end

endmodule