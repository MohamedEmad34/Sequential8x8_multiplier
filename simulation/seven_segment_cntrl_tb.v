`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2023 08:14:12 AM
// Design Name: 
// Module Name: seven_segment_cntrl_tb
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


module seven_segment_cntrl_tb(

    );
    reg[2:0]inp;
    wire seg_a,seg_b,seg_c,seg_d,seg_e,seg_f,seg_g;
    seven_segment_cntrl SSC(.inp(inp),.seg_a(seg_a),.seg_b(seg_b),.seg_c(seg_c),.seg_d(seg_d),.seg_e(seg_e),.seg_f(seg_f),.seg_g(seg_g));
    
    initial
    begin
    inp=2'b00;
    #30
    inp=2'b01;
    #40
    inp=2'b10;
    #40
    inp=2'b11;
    end
    
endmodule
