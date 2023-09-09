`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2023 08:22:53 AM
// Design Name: 
// Module Name: Top_module_tb
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


module Top_module_tb(

    );
    reg [7:0]dataa,datab;
    reg clk,reset_a,start;
    wire done;
    wire [2:0]state_out;
    wire [15:0]product8x8_multiplier;
    wire seg_a,seg_b,seg_c,seg_d,seg_e,seg_f,seg_g;
    Top_module top_module(.dataa(dataa),.datab(datab),.clk(clk),.reset_a(reset_a),.start(start),.done(done),
    .product8x8_multiplier(product8x8_multiplier),.seg_a(seg_a),
    .seg_b(seg_b),.seg_c(seg_c),.seg_d(seg_d),.seg_e(seg_e),.seg_f(seg_f),.seg_g(seg_g),.state_out(state_out));
    parameter T=20;
    initial
    begin
    dataa=8'b00110011;
    datab=8'b01001111;
    clk=1'b1;
    reset_a=1'b0;
    start=1'b0;
    #(T)
    @(negedge clk);
        start=1'b1;
     reset_a=1'b1;
        #(T)
        @(negedge clk)
        start=1'b0;
        #(6*T)
        $finish;
        
    
    end
    always
    #(T/2)clk=~clk;
    
endmodule
