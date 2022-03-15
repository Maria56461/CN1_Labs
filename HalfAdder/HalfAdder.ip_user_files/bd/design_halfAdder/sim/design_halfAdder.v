//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Wed Mar 24 08:06:07 2021
//Host        : LAPTOP-8JO60SO5 running 64-bit major release  (build 9200)
//Command     : generate_target design_halfAdder.bd
//Design      : design_halfAdder
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_halfAdder,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_halfAdder,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_halfAdder.hwdef" *) 
module design_halfAdder
   (a,
    b,
    cout,
    sum);
  input [0:0]a;
  input [0:0]b;
  output [0:0]cout;
  output [0:0]sum;

  wire [0:0]Op1_0_1;
  wire [0:0]Op2_0_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;

  assign Op1_0_1 = a[0];
  assign Op2_0_1 = b[0];
  assign cout[0] = util_vector_logic_1_Res;
  assign sum[0] = util_vector_logic_0_Res;
  design_halfAdder_util_vector_logic_0_2 util_vector_logic_0
       (.Op1(Op1_0_1),
        .Op2(Op2_0_1),
        .Res(util_vector_logic_0_Res));
  design_halfAdder_util_vector_logic_1_0 util_vector_logic_1
       (.Op1(Op1_0_1),
        .Op2(Op2_0_1),
        .Res(util_vector_logic_1_Res));
endmodule
