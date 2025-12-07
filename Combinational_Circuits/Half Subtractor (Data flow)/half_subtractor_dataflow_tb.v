/********************************************************************************************
Filename    :      half_subtractor_dataflow_tb.v
Description :      Half Subtractor Testbench
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      Half Subtractor (Data flow)
Date        :      15-November-2025
*********************************************************************************************/
module half_subtractor_dataflow_tb();

reg A,B;                     // Input regs
wire Diff,Borr;              // Output wires

half_subtractor_dataflow HS1 ( .A(A), .B(B), .Diff(Diff), .Borr(Borr) );   // Instantiating half subtractor module

initial
begin
      // Test Vector Generation
        A=0; B=0; #10;
        A=0; B=1; #10;
        A=1; B=0; #10;
        A=1; B=1; #10;
    
    $stop;                  // Stop simulation
end

initial
begin
    $monitor("A=%b, B=%b => Diff=%b, Borr=%b", A, B, Diff, Borr);
end

endmodule