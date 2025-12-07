/********************************************************************************************
Filename    :      Priority_Encoder_8x3.v
Description :      8:3 Priority Encoder RTL
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      8:3 Priority Encoder
Date        :      30-November-2025
*********************************************************************************************/
module Priority_Encoder_8x3 ( 

input [7:0] D,
output reg [2:0] Y,
output reg Vld      );

always@(*)
begin
    if (D == 8'd0)      //No input is high, indicate invalid input
        begin
          Vld = 1'b0;        
          Y = 3'b000;         
        end 
    else
    begin 
     Vld = 1'b1;       //Valid input present
     
      if (D[7] == 1'b1)       //Highest priority
        Y = 3'b111;
      else if (D[6] == 1'b1)       
        Y = 3'b110;
      else if (D[5] == 1'b1)
        Y = 3'b101;
      else if (D[4] == 1'b1)
        Y = 3'b100;
      else if (D[3] == 1'b1)
        Y = 3'b011;
      else if (D[2] == 1'b1)
        Y = 3'b010;
      else if (D[1] == 1'b1)
        Y = 3'b001;
      else 
        Y = 3'b000;            //Lowest priority 
    end
end

endmodule