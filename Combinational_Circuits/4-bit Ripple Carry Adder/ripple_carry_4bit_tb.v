/********************************************************************************************
Filename    :      ripple_carry_4bit_tb.v
Description :      Testbench for Ripple Carry Full Adder
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      Ripple Carry Full Adder
Date        :      27-November-2025
*********************************************************************************************/

module ripple_carry_4bit_tb();

reg  [3:0] A, B;
reg  Cin;
wire [3:0] Sum;
wire Carry;

ripple_carry_4bit DUT (.A(A),.B(B),.Cin(Cin),.Sum(Sum),.Carry(Carry));

initial 
     begin
      
     // Test vectors
     A = 4'b0000; B = 4'b0000; Cin = 1'b0; #10;   
     A = 4'b0000; B = 4'b0000; Cin = 1'b1; #10;   
     A = 4'b0001; B = 4'b0010; Cin = 1'b0; #10;   
     A = 4'b0011; B = 4'b0100; Cin = 1'b1; #10;
     A = 4'b0111; B = 4'b0001; Cin = 1'b0; #10;   
     A = 4'b1111; B = 4'b0100; Cin = 1'b1; #10;  
     A = 4'b0010; B = 4'b0101; Cin = 1'b0; #10; 
     A = 4'b0110; B = 4'b1011; Cin = 1'b1; #10;
     A = 4'b1111; B = 4'b1111; Cin = 1'b1; #10;
    
         $stop;
     end

initial
    begin 
        $display("A       B       Cin     |  Sum     Carry");
        $monitor("%b   %b    %b   |  %b    %b", A, B, Cin, Sum, Carry);
    end

endmodule
