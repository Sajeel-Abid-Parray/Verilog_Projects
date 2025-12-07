/********************************************************************************************
Filename    :      half_adder_behi_ifelse.v
Description :      Half Adder RTL 
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      Half Adder using if-else construct
Date        :      04-October-2025
*********************************************************************************************/
module half_adder_behi_ifelse (A,B,sum,carry); 
    
input A,B;
output reg sum,carry;

always @(*)        // always block triggered on any change in inputs A or B
begin

if (A==B)           //if A is logically equal to B, the sum is always 0 and carry is the input A
  begin        
    sum=1'b0;
	  carry=A;
  end

else               // else for other cases sum is 1 and carry 0
  begin                 
    sum=1'b1;   
    carry=1'b0;
  end 

end

endmodule