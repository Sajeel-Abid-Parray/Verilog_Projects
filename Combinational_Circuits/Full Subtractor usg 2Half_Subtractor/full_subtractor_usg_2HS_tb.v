/********************************************************************************************
Filename    :      full_subtractor_usg_2HS_tb.v
Description :      Full Subtractor Testbench
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      Full Subtractor using 2 Half Subtractors
Date        :      17-November-2025
*********************************************************************************************/

module full_subtractor_usg_2HS_tb();

reg A,B,Bin;                 
wire Diff,Borr;              
integer i;

full_subtractor_usg_2HS DUT ( .A(A), .B(B), .Bin(Bin), .Diff(Diff), .Borr(Borr) );   
                
initial 
    begin
        {A,B,Bin} = 3'b000;     // Initial values
        
        $monitor("A=%b, B=%b, Bin=%b => Diff=%b, Borr=%b", A, B, Bin, Diff, Borr);
        
        for (i=0;i<8;i=i+1)      // Loop to apply all possible combinations of inputs
        begin
            {A,B,Bin} = i;      // Assign values to inputs
            #5;                 // Wait for 5 time units
        end
        
        $finish;                // End of simulation
    end

endmodule