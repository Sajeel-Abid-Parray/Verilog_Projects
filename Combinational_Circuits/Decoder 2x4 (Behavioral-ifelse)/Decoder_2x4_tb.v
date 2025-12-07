/********************************************************************************************
Filename    :      Decoder_2x4_tb.v
Description :      2:4 Decoder Testbench
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      2:4 Decoder
Date        :      30-November-2025
*********************************************************************************************/

module Decoder_2x4_tb();
   
reg [1:0] D;
reg En;
wire [3:0] Y;

Decoder_2x4 DUT (.D(D),.En(En),.Y(Y));

initial
      begin 
            En = 1'b0; D = 2'b00; #10;  // Enable low, all outputs should be low
            En = 1'b1; D = 2'b00; #10;  // Output 0 high
            En = 1'b1; D = 2'b01; #10;  // Output 1 high
            En = 1'b1; D = 2'b10; #10;  // Output 2 high
            En = 1'b1; D = 2'b11; #10;  // Output 3 high
            En = 1'b0; D = 2'b10; #10;  // Enable low again, all outputs should be low
         
            $finish;
       end
initial
     begin  
         $monitor("Time=%0d | En=%b | D=%b | Y=%b",$time,En,D,Y);
     end

endmodule    
         
         