`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2023 10:54:30 AM
// Design Name: 
// Module Name: Shifter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Shifter(
input [7:0]inp,
input [1:0]shift_cntrl,
output reg [15:0]shift_out

    );
    always @(*)
    begin
    case(shift_cntrl)
    2'b00:shift_out={8'd0,inp};
    2'b01:shift_out={4'b0000,inp,4'b0000};
    2'b10:shift_out={inp,8'd0};
    2'b11:shift_out={8'd0,inp};
    default:shift_out=16'bx;  
    endcase
    
    
    end
endmodule
