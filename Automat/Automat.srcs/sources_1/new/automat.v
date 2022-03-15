`timescale 1ns / 1ps
// Create Date: 27.04.2021 18:29:45
// Module Name: automat
// Revision 0.01 - File Created

module automat(clk, reset, B1, B2, B3, eb1, eb2, eb3);

    input [0:0] B1;
    input [0:0] B2;
    input [0:0] B3;
    input [0:0] clk;
    input [0:0] reset;
    output reg eb1;
    output reg eb2;
    output reg eb3;
    reg [1:0] state, nextstate;
    
    always @(posedge clk) 
    begin
        if (reset == 1) 
            state <= 2'b00;
        else 
            state <= nextstate;
    end
    
    always @(state or B1 or B2 or B3)
        case ({state, B1, B2, B3})
            5'b00100: begin
            // daca s-a introdus 1 leu
                nextstate = 2'b01;
                eb1 = 0;
                eb2= 0;
                eb3 = 0;
            end
            5'b01100: begin
            // acum sunt 2 lei in automat
                nextstate = 2'b10;
                eb1 = 0;
                eb2 = 0;
                eb3 = 0;
            end
            5'b10100: begin
            // acum sunt 3 lei in automat --> primesc sticla 
                nextstate = 2'b00;
                eb1 = 0;
                eb2 = 0;
                eb3 = 1;
            end
            5'b00000: begin
            // sunt in starea 0 si ma intorc tot in starea 0 
                nextstate = 2'b00;
                eb1 = 0;
                eb2 = 0;
                eb3 = 0;
            end
            5'b00010: begin
            // sunt in starea 0 si primesc 5 lei
                nextstate = 2'b11;
                eb1 = 1;
                // primesc 1 leu rest
                eb2 = 0;
                eb3 = 1;
            end
            5'b00001: begin
            // sunt in starea 0 si primesc 10 lei 
                nextstate = 2'b11;
                eb1 = 1;
                eb2 = 1;
                eb3 = 1;
            end
            5'b11000: begin
            // sunt in starea 3 si trebuie sa dau 1 leu rest 
                nextstate = 2'b00;
                eb1 = 1;
                eb2 = 0;
                eb3 = 0;
            end
            default:
                nextstate = 2'b00;
          endcase
   endmodule
