/********************************************************************************************
Filename    :      DeMUX_1x4_usg_1x2_tb.v
Description :      1:4 DeMUX Testbench 
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      1:4 Demultiplexer using 1:2 Demultiplexers
Date        :      02-December-2025
*********************************************************************************************/

module DeMUX_1x4_usg_1x2_tb;

reg In, S0, S1;
wire Y0, Y1, Y2, Y3;

DeMUX_1x4_usg_1x2 uut ( .In(In), .S0(S0), .S1(S1), .Y0(Y0), .Y1(Y1), .Y2(Y2), .Y3(Y3) );

initial
    begin   // Testing all combinations of inputs
            In=1; S0=0; S1=0; #10;
            In=1; S0=0; S1=1; #10;
            In=1; S0=1; S1=0; #10;
            In=1; S0=1; S1=1; #10;
        
        $finish;
    end

initial
    begin
        $monitor("At time %t: In=%b, S0=%b, S1=%b => Y0=%b, Y1=%b, Y2=%b, Y3=%b", $time, In, S0, S1, Y0, Y1, Y2, Y3);
    end

endmodule