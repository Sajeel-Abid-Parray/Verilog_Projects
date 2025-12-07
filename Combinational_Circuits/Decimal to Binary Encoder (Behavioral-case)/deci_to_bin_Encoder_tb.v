/********************************************************************************************
Filename    :      deci_to_bin_Encoder_tb.v
Description :      Decimal to Binary Encoder Testbench
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      Decimal to Binary Encoder (10:4 Encoder)
Date        :      28-November-2025
*********************************************************************************************/

module deci_to_bin_Encoder_tb();

reg [9:0] D;
wire [3:0] Y;

deci_to_bin_Encoder DUT (.D(D), .Y(Y));

initial
     begin
        // Testing all decimal inputs from 0 to 9
        D = 10'b0000000000; #10; // Invalid input (no decimal digit selected)
	     D = 10'b0000000001; #10; // Decimal 0
        D = 10'b0000000010; #10; // Decimal 1
        D = 10'b0000000100; #10; // Decimal 2
        D = 10'b0000001000; #10; // Decimal 3
        D = 10'b0000010000; #10; // Decimal 4
        D = 10'b0000100000; #10; // Decimal 5
        D = 10'b0001000000; #10; // Decimal 6
        D = 10'b0010000000; #10; // Decimal 7
        D = 10'b0100000000; #10; // Decimal 8
        D = 10'b1000000000; #10; // Decimal 9
    
       $stop;
     end

initial
   begin
       $monitor("Time=%0t | D=%b | Y=%b", $time, D, Y);
   end

endmodule