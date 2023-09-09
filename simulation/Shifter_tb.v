`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2023 06:31:02 AM
// Design Name: 
// Module Name: Shifter_tb
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


module Shifter_tb(

    );
    reg [7:0]inp;
    reg [1:0]shift_cntrl;
    wire [15:0]shift_out;
    Shifter Shift(.inp(inp),.shift_cntrl(shift_cntrl),.shift_out(shift_out));
    initial
    begin
    inp=8'b00001111;
    shift_cntrl=2'b00;
    #30
    shift_cntrl=2'b01;
    #40
    shift_cntrl=2'b10;
    #50
    shift_cntrl=2'b11;
    #30
    inp=8'b11001100;
    shift_cntrl=2'b00;
        #30
        shift_cntrl=2'b01;
        #40
        shift_cntrl=2'b10;
        #50
        shift_cntrl=2'b11;
        #30
        $finish;
    
    
    end
endmodule
