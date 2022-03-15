`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 12.05.2021 08:33:30
// Module Name: sumator4biti
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////

module sumator4biti(input [3:0] x, input [3:0] y, input cin, output P, output G, output [3:0] sum);

// cin = transport pe nivel 0

wire [3:0] p, g, c;
assign g = x & y;
assign p = x | y;
assign c[0] = cin;
assign c[1] = g[0] | (cin & p[0]);
assign c[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & cin);
assign c[3] = g[2] | (p[2] & g[1]) | (p[1] & p[2] & g[0]) | (p[0] & p[1] & p[2] & cin);
assign sum = (~g&p) ^ c;
assign P = p[0] & p[1] & p[2] & p[3];
assign G = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]); 

endmodule
