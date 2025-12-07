/********************************************************************************************
Filename    :      MUX_8x1_usg_4x1_2x1_tb.v
Description :      8:1 MUX Testbench 
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      8:1 Multiplexer             
Date        :      02-December-2025
*********************************************************************************************/
module MUX_8x1_usg_4x1_2x1_tb();

reg I0, I1, I2, I3, I4, I5, I6, I7;  //Inputs
reg S0, S1, S2;        //Select lines
wire Y;              //Output

MUX_8x1_usg_4x1_2x1 uut ( .I0(I0), .I1(I1), .I2(I2), .I3(I3), .I4(I4), .I5(I5), .I6(I6),
                            .I7(I7), .S0(S0), .S1(S1), .S2(S2), .Y(Y)   );    

initial
begin   // Test vector generation
        S2=0; S1=0; S0=0; I0=1; I1=0; I2=0; I3=0; I4=0; I5=0; I6=0; I7=0; #10;
        S2=0; S1=0; S0=1; I0=0; I1=1; I2=0; I3=0; I4=0; I5=0; I6=0; I7=0; #10;
        S2=0; S1=1; S0=0; I0=0; I1=0; I2=1; I3=0; I4=0; I5=0; I6=0; I7=0; #10;
        S2=0; S1=1; S0=1; I0=0; I1=0; I2=0; I3=1; I4=0; I5=0; I6=0; I7=0; #10;
        S2=1; S1=0; S0=0; I0=0; I1=0; I2=0; I3=0; I4=1; I5=0; I6=0; I7=0; #10;
        S2=1; S1=0; S0=1; I0=0; I1=0; I2=0; I3=0; I4=0; I5=1; I6=0; I7=0; #10;
        S2=1; S1=1; S0=0; I0=0; I1=0; I2=0; I3=0; I4=0; I5=0; I6=1; I7=0; #10;
        S2=1; S1=1; S0=1; I0=0; I1=0; I2=0; I3=0; I4=0; I5=0; I6=0; I7=1; #10;
        
        $finish;
end

initial
begin
    $monitor("At time %t: I0=%b, I1=%b, I2=%b, I3=%b, I4=%b, I5=%b, I6=%b, I7=%b, S0=%b, S1=%b, S2=%b => Y=%b", 
              $time, I0, I1, I2, I3, I4, I5, I6, I7, S0, S1, S2, Y);
end

endmodule