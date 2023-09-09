`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2023 06:52:24 AM
// Design Name: 
// Module Name: reg16_tb
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


module reg16_tb(

    );
    reg clk,
     sclr_n,
     clk_ena;     
     reg [15:0]datain;
    wire [15:0]reg_out;
    reg16 re(.clk(clk),.sclr_n(sclr_n),.clk_ena(clk_ena),.datain(datain),.reg_out(reg_out));
    initial 
    begin
    clk=1'b1;
    sclr_n=1'b0;
    clk_ena=1'b1;
    datain=16'b1100110011110011;
    #30
    sclr_n=1'b1;
    #40
    datain=16'b0000111100001111;
    #50
    sclr_n=1'b0;
    #40
    sclr_n=1'b1;
    clk_ena=1'b0;
    #30
    $finish;
    
    
    
    end
    always 
    #10 clk=~clk;
endmodule
