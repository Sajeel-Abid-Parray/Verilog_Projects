/********************************************************************************************
Filename    :      adder_subtractor_tb.v
Description :      Testbench for Adder-Subtractor
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      Adder-Subtractor using Full Adders
Date        :      17-November-2025
*********************************************************************************************/
module adder_subtractor_tb();

reg [3:0] A,B;            // 4-bit Input regs
reg Mode;                 // Mode and Carry-in/Borrow-in regs
wire [3:0] D_S;           // 4-bit Output wire for Sum/Difference
wire B_C;                 // Carry-out/Borrow-out wire

adder_subtractor DUT ( .A(A), .B(B), .Mode(Mode), .D_S(D_S), .B_C(B_C) ); 

initial
    begin
        // ---------------------- ADDITION TESTS (Mode = 0) ----------------------
        Mode= 0; 
        A = 4'b0000; B = 4'b0000; #10;   // 0 + 0 = 0
        A = 4'b0000; B = 4'b0001; #10;   // 0 + 1 = 1
        A = 4'b0001; B = 4'b0001; #10;   // 1 + 1 = 2
        A = 4'b0011; B = 4'b0101; #10;   // 3 + 5 = 8
		A = 4'b0101; B = 4'b0011; #10;   // 5 + 3 = 8
        A = 4'b0111; B = 4'b0001; #10;   // 7 + 1 = 8
        A = 4'b0111; B = 4'b1000; #10;   // 7 + 8 = 15
        A = 4'b1010; B = 4'b1010; #10;   // 10 + 10 = 20 =5'b10100 (B_C = 1, D_S = 0100)
        A = 4'b0100; B = 4'b1100; #10;   // 4 + 12 = 16 = 5'b10000 (B_C = 1, D_S = 0000)
        A = 4'b0010; B = 4'b1110; #10;   // 2 + 14 = 16 = 5'b10000 (B_C = 1, D_S = 0000)
        A = 4'b1000; B = 4'b1000; #10;   // 8 + 8 = 16 = 5'b10000 (B_C = 1, D_S = 0000)
        A = 4'b0001; B = 4'b1111; #10;   // 1 + 15 = 16 = 5'b10000 (B_C = 1, D_S = 0000)
        A = 4'b0010; B = 4'b1101; #10;   // 2 + 13 = 15 
        A = 4'b1001; B = 4'b0110; #10;   // 9 + 6 = 15  
        
		// Carry generation cases
        A = 4'b1111; B = 4'b0001; #10;   // 15 + 1 = 16 = 5'b10000 ( B_C = 1, D_S = 0000)
        A = 4'b1111; B = 4'b1111; #10;   // 15 + 15 = 30 = 5'b 11110 (B_C = 1, D_S = 1110)

            #20;

        // ---------------------- SUBTRACTION TESTS (Mode = 1) -------------------
        /* Final borrow-out (B_C) is not used or considered in this design for subtraction. 
         However it helps indicate whether A >= B (B_C = 1) or A < B (B_C = 0).*/
        
        Mode= 1; 
        
        // Simple subtractions (no borrow)
        A = 4'b0101; B = 4'b0011; #10;   // 5 - 3 = 2 = 4'b0010
        A = 4'b0101; B = 4'b0010; #10;   // 5 - 2 = 3 = 4'b0011
        A = 4'b0001; B = 4'b0000; #10;   // 1 - 0 = 1 = 4'b0001
        A = 4'b1101; B = 4'b0011; #10;   // 13 - 3 = 10 = 4'b1010
        A = 4'b1111; B = 4'b0001; #10;   // 15 - 1 = 14 = 4'b1110
        A = 4'b1010; B = 4'b0101; #10;   // 10 - 5  = 5 = 4'b0101
		A = 4'b1000; B = 4'b0001; #10;   // 8 - 1 = 7 = 4'b0111
        A = 4'b0111; B = 4'b0110; #10;   // 7 - 6 = 1 = 4'b0001
		    
        // Equal values
        A = 4'b1000; B = 4'b1000; #10;   // 8 - 8 = 0 = 4'b0000
        A = 4'b0000; B = 4'b0000; #10;   // 0 - 0 = 0 = 4'b0000
        A = 4'b0110; B = 4'b0110; #10;   // 6 - 6 = 0 = 4'b0000
        A = 4'b1111; B = 4'b1111; #10;   // 15 - 15 = 0 = 4'b0000
		  
		// A < B cases (borrow propagation)
        A = 4'b0011; B = 4'b0101; #10;   // 3 - 5 = -2 = 4'b1110 (B_C = 0, as a negative number is represented in 2's complement form )
        A = 4'b0110; B = 4'b1001; #10;   // 6 - 9 = -3 = 4'b1101 (B_C = 0) 
        A = 4'b0000; B = 4'b0001; #10;   // 0 - 1 = -1 = 4'b1111 (B_C = 0)
        A = 4'b0010; B = 4'b0011; #10;   // 2 - 3  = -1 = 4'b1111 (B_C = 0)
        A = 4'b0100; B = 4'b1000; #10;   // 4 - 8 = -4 = 4'b1100 (B_C = 0)
        
        $finish;  // end simulation
    
    end

initial 
    begin 
       $monitor("Mode=%b A=%b B=%b => D_S=%b B_C=%b", Mode, A, B, D_S, B_C);
    end

endmodule