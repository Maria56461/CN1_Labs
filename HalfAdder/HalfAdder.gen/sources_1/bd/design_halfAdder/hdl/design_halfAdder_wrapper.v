//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Wed Mar 24 08:06:18 2021
//Host        : LAPTOP-8JO60SO5 running 64-bit major release  (build 9200)
//Command     : generate_target design_halfAdder_wrapper.bd
//Design      : design_halfAdder_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_halfAdder_wrapper
   (a,
    b,
    cout,
    sum);
  input [0:0]a;
  input [0:0]b;
  output [0:0]cout;
  output [0:0]sum;

  wire [0:0]a;
  wire [0:0]b;
  wire [0:0]cout;
  wire [0:0]sum;

  design_halfAdder design_halfAdder_i
       (.a(a),
        .b(b),
        .cout(cout),
        .sum(sum));
endmodule
