/********************************************************************************************
Filename    :      MUX_2x1_dataflow_tb.v
Description :      2:1 Multiplexer Testbench
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      2:1 MUX 
Date        :      02-December-2025
*********************************************************************************************/
module MUX_2x1_dataflow_tb;

reg I0, I1, S0;
wire Y;

MUX_2x1_dataflow uut (.I0(I0), .I1(I1), .S0(S0), .Y(Y));

initial 
    begin
        // Testing all combinations of inputs
        I0 = 0; I1 = 0; S0 = 0; #10;
        I0 = 0; I1 = 1; S0 = 0; #10;
        I0 = 1; I1 = 0; S0 = 0; #10;
        I0 = 1; I1 = 1; S0 = 0; #10;
        I0 = 0; I1 = 0; S0 = 1; #10;
        I0 = 0; I1 = 1; S0 = 1; #10;
        I0 = 1; I1 = 0; S0 = 1; #10;
        I0 = 1; I1 = 1; S0 = 1; #10;

        $finish;
    end

initial
    begin
        $monitor("At time %t: I0=%b, I1=%b, S0=%b => Y=%b", $time, I0, I1, S0, Y);
    end

endmodule

    
