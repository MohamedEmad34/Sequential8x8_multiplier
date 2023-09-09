`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2023 06:23:27 AM
// Design Name: 
// Module Name: mult4x4_tb
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


module mult4x4_tb(

    );
    reg [3:0]dataa,datab;
    wire [7:0]product;
    mult4x4 mult(.dataam(dataa),.databm(datab),.product(product));
    initial
    begin
    dataa=4'b0011;
    datab=4'b0100;
    #30
    dataa=4'b1100;
    datab=4'b0110;
    #20
    dataa=4'b1010;
    datab=4'b1100;
    #30
    dataa=4'b1110;
    datab=4'b0001;
    #40
    $finish;
    end
