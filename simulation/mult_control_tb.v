`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2023 07:14:45 AM
// Design Name: 
// Module Name: multControl_tb
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


module multControl_tb(

    );
    reg clk,
     reset_a,
     start;
    reg [1:0]count;
    wire[1:0]input_sel,
    shift_sel;
    wire [2:0]state_out;
     wire done;
    wire clk_ena;
    wire sclr_n;
     mult_control multControl(.clk(clk),.reset_a(reset_a),.start(start),.count(count),.input_sel(input_sel),.shift_sel(shift_sel),.state_out(state_out),.done(done),.clk_ena(clk_ena),.sclr_n(sclr_n));
   parameter T=20;
    initial
    begin
    clk=1'b1;
    reset_a=1'b0;
    count=2'b00;
    start=1'b0;
    #(T)
    start=1'b1;
    reset_a=1'b1;
    #(T/2)    
    start=1'b0;
    #(T)
    count=2'b10;
    #(T)
    count=2'b11;
    #(T)
    start=1'b1;
    #(T)
    start=1'b0;
    #(T/2)
    start=1'b1;
    #(T)
    start=1'b0;
    #(T)
    start=1'b1;
    #(T)
    start=1'b0;
    count=2'b00;
    #(2*T)
       
    $finish;
    
    
    
    
    end
    always 
    #(T/2) clk=~clk;
endmodule
