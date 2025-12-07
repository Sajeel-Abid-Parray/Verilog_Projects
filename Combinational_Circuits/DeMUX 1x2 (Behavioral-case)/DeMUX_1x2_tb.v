/********************************************************************************************
Filename    :      DeMUX_1x2_tb.v
Description :      1:2 DeMUX Testbench
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      1:2 Demultiplexer
Date        :      02-December-2025
*********************************************************************************************/

module DeMUX_1x2_tb;

reg In, S0;
wire Y0, Y1;

DeMUX_1x2 uut ( .In(In), .S0(S0), .Y0(Y0), .Y1(Y1) );

initial
begin
    // Testing all combinations of inputs
    In = 0; S0 = 0; #10;
    In = 0; S0 = 1; #10;
    In = 1; S0 = 0; #10;
    In = 1; S0 = 1; #10;

    $finish;
end

initial
    begin
        $monitor("At time %t: In=%b, S0=%b => Y0=%b, Y1=%b", $time, In, S0, Y0, Y1);
    end

endmodule