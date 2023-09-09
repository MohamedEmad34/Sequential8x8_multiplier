`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2023 11:36:43 AM
// Design Name: 
// Module Name: counter
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


module counter(
input clk,
input aclr_n,
output reg[1:0]count_out
    );
    always@(posedge clk or negedge aclr_n)
    begin
     if(!aclr_n)
     count_out<=2'b00;
     else
     count_out<=count_out+1;
    end
endmodule
