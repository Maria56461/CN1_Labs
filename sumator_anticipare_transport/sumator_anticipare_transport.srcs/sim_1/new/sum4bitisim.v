`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 12.05.2021 08:51
// Module Name: sum4bitisim
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////

module sum4bitisim( );

reg cin;
reg [3:0] x, y;
wire [3:0] sum;
wire P, G;

sumator4biti sumator(x, y, cin, P, G, sum);
initial begin
  x = 0; y = 0; cin = 0;
  #50 x = 7; y = 8; cin = 0;
  #50 x = 3; y = 2; cin = 0; 
  #50 x = 2; y = 1; cin = 0;
  #50 x = 4; y = 3; cin = 0; 
end
endmodule
