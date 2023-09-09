`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2023 06:45:33 AM
// Design Name: 
// Module Name: Adder_tb
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


module Adder_tb(

    );
    reg[15:0]dataa,datab;
    wire [15:0]sum;
    Adder add(.dataa(dataa),.datab(datab),.sum(sum));
    initial
    begin
    dataa=16'd6;
    datab=16'd10;
    #20
    dataa=16'd120;
    datab=16'd200;
    #40
    dataa=16'd150;
    datab=16'd200;
    #30
    $finish;
    
    end
endmodule
