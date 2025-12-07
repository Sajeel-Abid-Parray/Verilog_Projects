/********************************************************************************************
Filename    :      comparator_1bit_ifelse.v
Description :      1-bit Magnitude Comparator RTL
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      1-bit Magnitude Comparator (using if-else construct)
Date        :      01-December-2025
*********************************************************************************************/
module comparator_1bit_ifelse (

input A,B,
output reg GT,EQ,LT  );

always @(*)
begin   
    
    if (A > B)         
    begin
        GT = 1;
        EQ = 0;
        LT = 0;  
    end
    else if (A < B) 
    begin
        GT = 0;
        EQ = 0;
        LT = 1;  
    end
    else 
    begin
        GT = 0;
        EQ = 1;
        LT = 0;   
    end
end
endmodule



