/********************************************************************************************
Filename    :      comparator_1bit_ifelse_tb.v
Description :      1-bit Magnitude Comparator Testbench
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      1-bit Magnitude Comparator (using if-else construct)
Date        :      01-December-2025
*********************************************************************************************/

module comparator_1bit_ifelse_tb();
reg  A,B;
wire GT,EQ,LT;

comparator_1bit_ifelse DUT (.A(A),.B(B),.GT(GT),.EQ(EQ),.LT(LT));

initial
     begin
          A=1'b0; B=1'b0; #5; // A equals B
          A=1'b0; B=1'b1; #5; // A less than B
          A=1'b1; B=1'b0; #5; // A greater than B
          A=1'b1; B=1'b1; #5; // A equals B
 
          $finish;
     end

initial
     begin   
         $monitor("Time=%0d : A=%b, B=%b => GT=%b, EQ=%b, LT=%b",$time,A,B,GT,EQ,LT);
     end

endmodule