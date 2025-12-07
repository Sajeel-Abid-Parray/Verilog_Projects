/********************************************************************************************
Filename    :      half_adder_behi_case.v
Description :      Half Adder RTL using case statement
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      Full Adder using 2 Half Adders
Date        :      13-November-2025
*********************************************************************************************/

module half_adder_behi_case (A,B,sum,carry); 

input A,B;
output reg sum, carry;                   

always @(*)        // 'always' procedural block with automatic sensitivity 
begin 
     case({A,B})        // A,B bits concatinated 
	      2'b00 : {sum,carry} = 2'b00;     //when A=0,B=0 ==> sum=0,carry=0
		  2'b01 : {sum,carry} = 2'b10;     //when A=0,B=1 ==> sum=1,carry=0
		  2'b10 : {sum,carry} = 2'b10;     //when A=1,B=0 ==> sum=1,carry=0
		  2'b11 : {sum,carry} = 2'b01;     //when A=1,B=1 ==> sum=0,carry=1
	endcase
end

endmodule  