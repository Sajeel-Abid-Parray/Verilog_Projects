/********************************************************************************************
Filename    :      half_adder_behi_case_tb.v
Description :      Testbench for Half Adder
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      Half Adder (Behavioral level using case construct)
Date        :      04-October-2025
*********************************************************************************************/

module half_adder_behi_case_tb();

reg A, B;                // input regs
wire sum, carry;         // output wires

half_adder_behi_case DUT (          // half adder instantiation
    .A(A),
    .B(B),
    .sum(sum),
    .carry(carry)
);

// stimulus generation to test all input combinations
initial 
    begin                           
        $display("A B | SUM CARRY");
        $display("-------------------");

        // Case 00
        A = 0; B = 0; #10;
        $display("%b %b |  %b    %b", A, B, sum, carry);        // Display inputs and outputs

        // Case 01
        A = 0; B = 1; #10;
        $display("%b %b |  %b    %b", A, B, sum, carry);

        // Case 10
        A = 1; B = 0; #10;
        $display("%b %b |  %b    %b", A, B, sum, carry);

        // Case 11
        A = 1; B = 1; #10;
        $display("%b %b |  %b    %b", A, B, sum, carry);
        $display ("-------------------");
        
        $finish; // End simulation
    end

endmodule