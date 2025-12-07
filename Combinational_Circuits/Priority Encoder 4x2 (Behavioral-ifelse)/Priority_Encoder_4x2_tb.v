/********************************************************************************************
Filename    :      Priority_Encoder_4x2_tb.v
Description :      4:2 Priority Encoder Testbench
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      4:2 Priority Encoder
Date        :      30-November-2025
*********************************************************************************************/

module Priority_Encoder_4x2_tb();

reg [3:0] D;
wire [1:0] Y;
wire Vld;
integer i;

Priority_Encoder_4x2 DUT (.D(D),.Y(Y),.Vld(Vld));

initial 
    begin
        for (i=0; i<16; i=i+1)    
        begin
            D = i;
            #10;
        end
        
         $finish;
    end

initial
     begin
         $monitor("Time=%0d | D=%b | Y=%b | Vld=%b",$time, D, Y, Vld );
     end
     
endmodule
   