`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 12.05.2021 09:02:55 
// Module Name: sumator16biti
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////

module sumator16biti(input [15:0] x, input [15:0] y, input cin, output [15:0] sum, output cout);

wire P0, P1, P2, P3, G0, G1, G2, G3, C1, C2, C3;
sumator4biti sumator1(x[3:0], y[3:0], cin, P0, G0, sum[3:0]);
assign C1 = G0 | (P0 & cin);
sumator4biti sumator2(x[7:4], y[7:4], C1, P1, G1, sum[7:4]);
assign C2 = G1 | (P1 & G0) | (P0 & P1 & cin);
sumator4biti sumator3(x[11:8], y[11:8], C2, P2, G2, sum[11:8]);
assign C3 = G2 | (P2 & G1) | (P1 & P2 & G0) | (P0 & P1 & P2 & cin);
sumator4biti sumator4(x[15:12], y[15:12], C3, P3, G3, sum[15:12]);
assign cout = G3 | (P3 & G2) | (P2 & P3 & G1) | (P1 & P2 & P3 & G0) | (P0 & P1 & P2 & P3 & cin); 
endmodule
