`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2023 07:08:01 PM
// Design Name: 
// Module Name: mux4A_tb
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


module mux4A_tb(

    );
    reg [3:0]mux_in_a,mux_in_b;
    reg mux_sel;
    wire [3:0]mux_out;
    mux4A mux(.mux_in_a(mux_in_a),.mux_in_b(mux_in_b),.mux_sel(mux_sel),.mux_out(mux_out));
    initial
    begin
    mux_sel=1'b0;
    mux_in_a=4'b0000;
    mux_in_b=4'b1111;
    #20
    mux_sel=1'b1;
    #30
    mux_in_a=4'b0011;
    mux_in_b=4'b1100;
    #20
    mux_sel=1'b0;
    end
    
endmodule
