`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 24.03.2021 08:13:53
// Module Name: reg4biti
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////

module reg4biti(rin, clk, clear, load, rout);

input [3:0] rin;
input clk, load, clear;
output reg [3:0] rout;

always @(posedge clk)
begin
if (clear)
rout <= 0;
else if (load)
rout <= rin;
end

endmodule
