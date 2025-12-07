/********************************************************************************************
Filename    :      Encoder_4x2_case_tb.v
Description :      4:2 Encoder Testbench
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      4:2 Encoder using case statement
Date        :      27-November-2025
*********************************************************************************************/
module Encoder_4x2_case_tb();

reg  [3:0] D;
wire [0:1] Y;

Encoder_4x2_case DUT (.D(D),.Y(Y));

initial 
    begin
        D=4'b0000; #5; // invalid input
        D=4'b0001; #5; // D[0] is active
        D=4'b0010; #5; // D[1] is active
        D=4'b0100; #5; // D[2] is active
        D=4'b1000; #5; // D[3] is active

         $finish;
     end

initial
    begin
        $monitor("Time=%0d | D=%b | Y=%b",$time,D,Y);
    end

endmodule










































