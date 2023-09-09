`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2023 12:47:37 PM
// Design Name: 
// Module Name: mult_control
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


module mult_control(
input clk,
input reset_a,
input start,
input [1:0]count,
output reg[1:0]input_sel,
output reg[1:0]shift_sel,
output [2:0]state_out,
output reg done,
output reg clk_ena,
output reg sclr_n);
reg [2:0]next_state, state;
parameter [2:0]IDLE=3'b000,
LSB=3'b001,
MID=3'b010,
MSB=3'b011,
CALC_DONE=3'b100,
ERR=3'b101;
always @(posedge clk)
begin
if(!reset_a)
state<=IDLE;
else
state<=next_state;

end
always@(*)
begin
input_sel=2'bxx;
shift_sel=2'bxx;
done=1'b0;
clk_ena=1'b0;
sclr_n=1'b1;
case(state)
IDLE:begin
if(start)
begin
next_state=LSB;
clk_ena=1'b1;
sclr_n=1'b0;
end
else
next_state=state;
end
LSB:begin
if(start==0&&count==0)
begin
next_state=MID;
input_sel=2'b00;
shift_sel=2'b00;
sclr_n=1'b1;
clk_ena=1'b1;

end
else
begin
next_state=ERR;
input_sel=2'bxx;
shift_sel=2'bxx;
clk_ena=1'b0;
sclr_n=1'b1;
end

end
MID:begin
if(start==0&&count==1)
begin
next_state=state;
input_sel=2'b01;
shift_sel=2'b01;
done=1'b0;
clk_ena=1'b1;
sclr_n=1'b1;end

else if(start==0&&count==2)
begin
next_state=MSB;
input_sel=2'b10;
shift_sel=2'b01;
clk_ena=1'b1;
sclr_n=1'b1;

end
else
begin
next_state=ERR;
input_sel=2'bxx;
shift_sel=2'bxx;
done=1'b0;
clk_ena=1'b0;
sclr_n=1'b1;
end
end
MSB:begin
if(start==0&&count==3)
begin
next_state=CALC_DONE;
input_sel=2'b11;
shift_sel=2'b10;
done=1'b0;
clk_ena=1'b1;
sclr_n=1'b1;
end
else
begin
next_state=ERR;
input_sel=2'bxx;
shift_sel=2'bxx;
done=1'b0;
clk_ena=1'b0;
sclr_n=1'b1;
end
end
CALC_DONE:begin
if(start==0)
begin
next_state=IDLE;
input_sel=2'bxx;
shift_sel=2'bxx;
done=1'b1;
clk_ena=1'b0;
sclr_n=1'b1;

end
else
begin
next_state=ERR;
input_sel=2'bxx;
shift_sel=2'bxx;
done=1'b0;
clk_ena=1'b0;
sclr_n=1'b1;

end
end
ERR:begin
if(start==1)
begin
next_state=LSB;
input_sel=2'bxx;
shift_sel=2'bxx;
done=1'b0;
clk_ena=1'b1;
sclr_n=1'b0;
end
else
begin
next_state=state;
input_sel=2'bxx;
shift_sel=2'bxx;
done=1'b0;
clk_ena=1'b0;
sclr_n=1'b1;

end
end
endcase
end
assign state_out=state;




endmodule
