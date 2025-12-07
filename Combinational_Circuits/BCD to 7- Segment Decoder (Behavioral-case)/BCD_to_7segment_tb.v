/********************************************************************************************
Filename    :      BCD_to_7segment_tb.v
Description :      BCD to 7-Segment Display Decoder Testbench
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      BCD to 7-Segment Display Decoder
Date        :      01-December-2025
*********************************************************************************************/
module BCD_to_7segment_tb();

reg  A,B,C,D;
wire a,b,c,d,e,f,g;

BCD_to_7segment DUT (.A(A), .B(B), .C(C), .D(D), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g));

initial 
    begin
    // Testing all BCD inputs from 0000 to 1001
    {A,B,C,D} = 4'b0000; #10;
    {A,B,C,D} = 4'b0001; #10;
    {A,B,C,D} = 4'b0010; #10;
    {A,B,C,D} = 4'b0011; #10;
    {A,B,C,D} = 4'b0100; #10;
    {A,B,C,D} = 4'b0101; #10;
    {A,B,C,D} = 4'b0110; #10;
    {A,B,C,D} = 4'b0111; #10;
    {A,B,C,D} = 4'b1000; #10;
    {A,B,C,D} = 4'b1001; #10;

    // Testing invalid BCD inputs from 1010 to 1111
    {A,B,C,D} = 4'b1010; #10;
    {A,B,C,D} = 4'b1011; #10;
    {A,B,C,D} = 4'b1100; #10;
    {A,B,C,D} = 4'b1101; #10;
    {A,B,C,D} = 4'b1110; #10;
    {A,B,C,D} = 4'b1111; #10;

         $finish;
    end

initial
begin   
    $monitor("Time=%0t | BCD Input={A,B,C,D}=%b%b%b%b | 7-Segment Output={a,b,c,d,e,f,g}=%b%b%b%b%b%b%b", 
    $time, A, B, C, D, a, b, c, d, e, f, g);
end

endmodule

