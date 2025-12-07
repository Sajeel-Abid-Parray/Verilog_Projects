/********************************************************************************************
Filename    :      full_adder_behi_ifelse.v
Description :      Full Adder RTL -Behavioral Modeling 
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      Full Adder using if-else construct
Date        :      13-November-2025
*********************************************************************************************/

module full_adder_behi_ifelse (

input  A, B, Cin,
output reg  Sum, Carry   );

always @(A or B or Cin)      // Sensitivity List
  
    begin    
        // SUM logic
        if (A ^ B ^ Cin)             //if 'A^B^Cin' (Sum equation) is 1 or logically true, then
            Sum = 1'b1;
        else
            Sum = 1'b0;

        // CARRY logic
        if ((A & B) | (B & Cin) | (A & Cin))    //if '(A.B) + (B.Cin) + (A.Cin)' (Carry equation) is 1 or logically true, then
            Carry = 1'b1;
        else
            Carry = 1'b0;
    end

endmodule