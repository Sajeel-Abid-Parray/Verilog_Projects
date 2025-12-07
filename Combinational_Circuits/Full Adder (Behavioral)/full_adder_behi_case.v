/********************************************************************************************
Filename    :      full_adder_behi_case.v
Description :      Full Adder RTL -Behavioral Modeling 
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      Full Adder using case construct
Date        :      13-November-2025
*********************************************************************************************/
module full_adder_behi_case (

input  A, B, Cin,
output reg Sum, Carry    );

always @(*) 
begin
    case ({A, B, Cin})                // Concatenate inputs A, B, and Cin to form a 3-bit value
        3'b000: {Sum, Carry} = 2'b00;        // When A=0, B=0, Cin=0 -> Sum=0, Carry=0
        3'b001: {Sum, Carry} = 2'b10;        // When A=0, B=0, Cin=1 -> Sum=1, Carry=0
        3'b010: {Sum, Carry} = 2'b10;        // When A=0, B=1, Cin=0 -> Sum=1, Carry=0
        3'b011: {Sum, Carry} = 2'b01;        // When A=0, B=1, Cin=1 -> Sum=0, Carry=1
        3'b100: {Sum, Carry} = 2'b10;        // When A=1, B=0, Cin=0 -> Sum=1, Carry=0
        3'b101: {Sum, Carry} = 2'b01;        // When A=1, B=0, Cin=1 -> Sum=0, Carry=1
        3'b110: {Sum, Carry} = 2'b01;        // When A=1, B=1, Cin=0 -> Sum=0, Carry=1
        3'b111: {Sum, Carry} = 2'b11;        // When A=1, B=1, Cin=1 -> Sum=1, Carry=1
       default: {Sum, Carry} = 2'b00;        // Default case (should not occur)
    endcase
end

endmodule