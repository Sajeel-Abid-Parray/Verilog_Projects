/********************************************************************************************
Filename    :      full_subtractor_case.v
Description :      Full Subtractor RTL (Behavioral Modeling)
Author Name :      Sajeel Abid Parray
Language    :      Verilog HDL
Project     :      Full Subtractor using Case Construct
Date        :      17-November-2025
*********************************************************************************************/
module full_subtractor_case (

input  A, B, Bin,
output reg  Diff, Borr   );

always @(*)      
  begin
    
    // DIFFERENCE logic
    case ({A,B,Bin})
        3'b000, 3'b011, 3'b101, 3'b110: Diff = 1'b0;     // comibnations resulting in Diff = 0
        3'b001, 3'b010, 3'b100, 3'b111: Diff = 1'b1;     // comibnations resulting in Diff = 1
        default: Diff = 1'bx;          // unknown state
    endcase

    // BORROW logic
    case ({A,B,Bin})                                   
        3'b000, 3'b101, 3'b110, 3'b100: Borr = 1'b0;     // comibnations resulting in Borr = 0
        3'b001, 3'b010, 3'b011, 3'b111: Borr = 1'b1;     // comibnations resulting in Borr = 1
        default: Borr = 1'bx;          // unknown state
    endcase
  end

endmodule