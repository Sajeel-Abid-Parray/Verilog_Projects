/********************************************************************************************
Filename    :      Encoder_8x3_tb.v
Description :      8:3 Encoder Testbench
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      8:3 Encoder (using case statement)
Date        :      28-November-2025
*********************************************************************************************/
module Encoder_8x3_tb();

reg  [7:0] D;
wire [0:2] Y;

Encoder_8x3 DUT (.D(D),.Y(Y));

initial
    begin
          D=8'b00000000; #5; // invalid input
          D=8'b00000001; #5; // D[0] is active
          D=8'b00000010; #5; // D[1] is active
          D=8'b00000100; #5; // D[2] is active
          D=8'b00001000; #5; // D[3] is active
          D=8'b00010000; #5; // D[4] is active
          D=8'b00100000; #5; // D[5] is active
          D=8'b01000000; #5; // D[6] is active
          D=8'b10000000; #5; // D[7] is active
      
         $finish;
    end

initial
  begin
       $monitor("Time=%0d | D=%b | Y=%b",$time,D,Y);    //$time is a system function that returns the current simulation time
  end

endmodule