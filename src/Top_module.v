`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2023 05:35:58 PM
// Design Name: 
// Module Name: Top_module
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


module Top_module(
input [7:0]dataa,
input [7:0]datab,
input clk,
input reset_a,
input start,
output done,
output [15:0]product8x8_multiplier,
output seg_a,seg_b,seg_c,seg_d,seg_e,seg_f,seg_g,
output [2:0]state_out
    );
    wire [3:0]aout,bout;
    wire [1:0]count;
    wire [1:0]sel;
    wire [1:0]shift;
    wire [7:0]product;
    wire [15:0]shift_out;
    wire [15:0]sum;
    wire sclr_n;
    wire clk_ena;
    counter count1(.clk(clk),.aclr_n(~start),.count_out(count));
    mux4A MA(.mux_in_a(dataa[3:0]),.mux_in_b(dataa[7:4]),.mux_sel(sel[1]),.mux_out(aout));
    mux4B MB(.mux_in_a(datab[3:0]),.mux_in_b(datab[7:4]),.mux_sel(sel[0]),.mux_out(bout));
    mult4x4 mult(.dataam(aout),.databm(bout),.product(product));
    Shifter S(.inp(product),.shift_cntrl(shift),.shift_out(shift_out));
    Adder add(.dataa(shift_out),.datab(product8x8_multiplier),.sum(sum));
    reg16 re(.clk(clk),.sclr_n(sclr_n),.clk_ena(clk_ena),.datain(sum),.reg_out(product8x8_multiplier));
    mult_control multControl(.clk(clk),.reset_a(reset_a),.start(start),.count(count),
    .input_sel(sel),.shift_sel(shift),.state_out(state_out),.done(done),.clk_ena(clk_ena),.sclr_n(sclr_n));
    seven_segment_cntrl ss(.inp(state_out),.seg_a(seg_a),.seg_b(seg_b),.seg_c(seg_c),
    .seg_d(seg_d),.seg_e(seg_e),.seg_f(seg_f),.seg_g(seg_g));
    
    
    
   
endmodule
