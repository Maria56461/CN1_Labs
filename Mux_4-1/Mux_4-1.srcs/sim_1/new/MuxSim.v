`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2021 22:52:46
// Design Name: 
// Module Name: MuxSim
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

module MuxSim( );
    
reg [3:0] i1, i2, i3, i4;
reg [1:0] s;
wire [3:0] y;

Multiplexer m(i1, i2, i3, i4, s, y);

initial begin 
i1 = 1;
i2 = 0;
i3 = 4'b1010;
i4 = 4'b0110;
s[0] = 0; s[1] = 1;
#5 s[0] = 1; s[1] = 0;
#5 s[0] = 0; s[1] = 0;
#5 s[0] = 1; s[1] = 1;

$finish;
$stop;
end
endmodule
