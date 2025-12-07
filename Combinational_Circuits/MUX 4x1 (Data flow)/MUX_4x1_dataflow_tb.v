/********************************************************************************************
Filename    :      MUX_4x1_dataflow_tb.v
Description :      4:1 MUX Testbench
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      4:1 MUX
Date        :      02-December-2025
*********************************************************************************************/
module MUX_4x1_dataflow_tb();
 
reg S0, S1;         
reg I0, I1, I2, I3;  
wire Y;              

MUX_4x1_dataflow uut ( .I0(I0), .I1(I1), .I2(I2), .I3(I3), .S0(S0), .S1(S1), .Y(Y) );

initial
    begin   // Test vector generation
            S1 = 0; S0 = 0; I0 = 1; I1 = 0; I2 = 0; I3 = 0; #10;
            S1 = 0; S0 = 1; I0 = 0; I1 = 1; I2 = 0; I3 = 0; #10;
            S1 = 1; S0 = 0; I0 = 0; I1 = 0; I2 = 1; I3 = 0; #10;
            S1 = 1; S0 = 1; I0 = 0; I1 = 0; I2 = 0; I3 = 1; #10;
        
        $finish;
    end

initial
    begin
        $monitor("At time %t: I0=%b, I1=%b, I2=%b, I3=%b, S0=%b, S1=%b => Y=%b", $time, I0, I1, I2, I3, S0, S1, Y);
    end

endmodule
