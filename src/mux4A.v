`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2023 10:45:00 AM
// Design Name: 
// Module Name: mux4
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


module mux4A(
input[3:0] mux_in_a,mux_in_b,
input mux_sel,
output reg[3:0]mux_out

    );
    always@(*)
    begin
    case(mux_sel)
    1'b0:mux_out=mux_in_a;
    1'b1:mux_out=mux_in_b;
    endcase
    end
endmodule
