/********************************************************************************************
Filename    :      Priority_Encoder_8x3_tb.v
Description :      8:3 Priority Encoder Testbench
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      8:3 Priority Encoder
Date        :      30-November-2025
*********************************************************************************************/

module Priority_Encoder_8x3_tb();

reg [7:0] D;
wire [2:0] Y;
wire Vld;

Priority_Encoder_8x3 DUT (.D(D),.Y(Y),.Vld(Vld));

initial 
   begin
          D = 8'b00000000; #10;  // No input active
          D = 8'b00000001; #10;  // Only LSB active
          D = 8'b00000010; #10;  
          D = 8'b00000111; #10;
          D = 8'b00110000; #10;
          D = 8'b01010101; #10;  // Multiple inputs active
          D = 8'b10000000; #10;
          D = 8'b11111111; #10;  // All inputs active
          D = 8'b01010000; #10;
			 
          $finish;
   end

initial
     begin
         $monitor("Time=%0d | D=%b | Y=%b | Vld=%b",$time,D,Y,Vld);
     end    

endmodule