`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////
// Create Date: 26.05.2021 09:17:55
// Module Name: pipeline
//////////////////////////////////////////////////////////////////////////////////

module pipeline(input reset, input CLK, input a, input b, input c, input d, input e,
output reg out);
// a * b + c - d * e

    wire [4:0] reg1, reg2, reg3, reg4;
    // registrul se apeleaza de 4 ori 
    wire inmul1, inmul2, suma, dif;
    
    registru registru1(CLK, reset, {e, d, c, b, a}, reg1);
    inmultire inmultire1(reg1[0], reg1[1], inmul1);
    inmultire inmultire2(reg1[3], reg1[4], inmul2);
    registru registru2(CLK, reset, {0, 0, reg1[2], inmul2, inmul1}, reg2);
    plus suma1(reg2[2], reg2[0], suma);
    registru registru3(CLK, reset, {0, 0, 0, reg2[1], suma}, reg3);
    minus dif1(reg3[0], reg3[1], dif);
    registru registru4(CLK, reset, {0, 0, 0, 0, dif}, reg4);
    always @ (reg4[0])
    out <= reg4[0];

endmodule
