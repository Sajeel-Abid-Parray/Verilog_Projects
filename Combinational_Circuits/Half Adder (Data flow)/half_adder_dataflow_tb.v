/********************************************************************************************
Filename    :      half_adder_dataflow_tb.v
Description :      Half Adder Testbench
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      Half Adder (Data flow)
Date        :      06-November-2025
*********************************************************************************************/

module half_adder_dataflow_tb();

reg A,B;                 // input regs
wire Sum, Carry;         // output wires

half_adder_dataflow DUT (          // half adder instantiation
    .A(A),
    .B(B),
    .Sum(Sum),
    .Carry(Carry)
);

// stimulus generation to test all input combinations
initial 
    begin                           
        $display("A B | SUM CARRY");
        $display("-------------------");

        // Case 00
        A = 0; B = 0; #5;
        $display("%b %b |  %b    %b", A, B, Sum, Carry);        // Display inputs and outputs

        // Case 01
        A = 0; B = 1; #5;
        $display("%b %b |  %b    %b", A, B, Sum, Carry);

        // Case 10
        A = 1; B = 0; #5;
        $display("%b %b |  %b    %b", A, B, Sum, Carry);

        // Case 11
        A = 1; B = 1; #5;
        $display("%b %b |  %b    %b", A, B, Sum, Carry);
        $display ("-------------------");
        
        $finish; // End simulation
    end

endmodule
