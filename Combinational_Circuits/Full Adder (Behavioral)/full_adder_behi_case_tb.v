/********************************************************************************************
Filename    :      full_adder_behi_case_tb.v
Description :      Testbench for Full Adder
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      Full Adder using case construct
Date        :      13-November-2025
*********************************************************************************************/
module full_adder_behi_case_tb();

reg A,B,Cin;     // inputs
wire Sum,Carry;  // outputs
integer i;      // integer variable for loop

full_adder_behi_case DUT (.A(A),.B(B),.Cin(Cin),.Sum(Sum),.Carry(Carry)); 		// instantiation of full adder module
    
initial  
	begin
		{A,B,Cin}= 3'b000;        // initial values 
	end
	
initial
	begin
		for (i=0;i<8;i=i+1)       // loop to apply all possible combinations of inputs
			
		begin
		    {A,B,Cin} = i;        // assign values to inputs
		    
			#5;                   // wait for 5 time units
		end
	    
		 $finish;                 // end of simulation    
	end
		 
   
initial
    begin
	    $monitor ("value of A=%b, B=%b,Cin=%b,Sum=%b,Carry=%b", A,B,Cin,Sum,Carry);  // monitor statement to display values
    end
    	    
endmodule 