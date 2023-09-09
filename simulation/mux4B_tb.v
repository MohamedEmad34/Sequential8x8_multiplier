`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2023 07:09:09 PM
// Design Name: 
// Module Name: mux4B_tb
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


module mux4B_tb(

    );
    reg [3:0]mux_in_a,mux_in_b;
    reg sel;
    wire [3:0]mux_out;
    mux4B mux(.mux_in_a(mux_in_a),.mux_in_b(mux_in_b),.mux_sel(sel),.mux_out(mux_out));
    initial
    begin
    sel=1'b0;
    mux_in_a=4'b0000;
    mux_in_b=4'b1111;
    #40
    sel=1'b1;
    #20
    sel=1'b0;
    
    #30 $finish;
    end
endmodule
