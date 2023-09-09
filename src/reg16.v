`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2023 11:28:22 AM
// Design Name: 
// Module Name: reg16
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


module reg16(
input clk,
input sclr_n,
input clk_ena,
input [15:0]datain,
output reg [15:0]reg_out

    );
    always@(posedge clk)
    begin 
    if(clk_ena)
    begin
    if(!sclr_n)
    reg_out<=16'd0;
    else
    reg_out<=datain;
    end
    else
    reg_out<=reg_out;
    
    end
endmodule
