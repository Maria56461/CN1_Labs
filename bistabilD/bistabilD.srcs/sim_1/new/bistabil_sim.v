`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 24.03.2021 09:19:57
// Module Name: bistabil_sim
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////

module bistabil_sim( );

reg [0:0] in;
reg clk, reset, en;
wire [0:0] q;

bistabilTypeD b1(in, clk, reset, en, q);
initial begin
clk = 0;
reset = 0;
en = 0;
in = 1;

#25 en = 1;
#25 reset = 1;
#25 clk = 1;
#25 en = 0;
#25 clk = 0;

$finish;
end    

always 
#25 clk = ~clk;
endmodule
