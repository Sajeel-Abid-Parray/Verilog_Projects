/********************************************************************************************
Filename    :      Priority_Encoder_4x2.v
Description :      4:2 Priority Encoder RTL 
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      4:2 Priority Encoder 
Date        :      30-November-2025
*********************************************************************************************/

module Priority_Encoder_4x2 (

input [3:0] D,
output reg [1:0] Y,
output reg Vld     );

always@(*)
        begin
          if (D == 4'd0)      //No input is high, indicate invalid input
              begin
	             Vld = 1'b0;        
               Y = 2'b00;         
              end 
          else
              begin 
               Vld = 1'b1;       //Valid input present
     
          if (D[3] == 1'b1)       //Highest priority
             Y = 2'b11;
          else if (D[2] == 1'b1)       
             Y = 2'b10;
          else if (D[1] == 1'b1)
             Y = 2'b01;
          else 
             Y = 2'b00;            //Lowest priority 
              end
         end  

endmodule






















