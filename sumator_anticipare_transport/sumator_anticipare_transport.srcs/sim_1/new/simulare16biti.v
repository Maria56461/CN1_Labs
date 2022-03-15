`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 12.05.2021 09:24:55
// Module Name: simulare16biti
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////

module simulare16biti(   );

reg [15:0] x, y; reg cin;
wire [15:0] sum; wire cout;
sumator16biti sumator(x, y, cin, sum, cout);
initial begin
x = 0; 
y = 0;
cin = 0;

#50 x = 16'd18; y = 16'd19; cin = 1;
#50 x = 16'd2; y = 16'd5; cin = 1;
#50 x = 16'd9; y = 16'd7; cin = 0; 

end
endmodule
