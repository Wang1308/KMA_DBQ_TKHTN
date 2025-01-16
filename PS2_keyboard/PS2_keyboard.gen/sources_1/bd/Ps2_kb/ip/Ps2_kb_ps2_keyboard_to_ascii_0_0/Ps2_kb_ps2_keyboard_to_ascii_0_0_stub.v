// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sun Jan  5 17:17:24 2025
// Host        : DESKTOP-TQUTIVG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/TK_HTN/PS2_keyboard/PS2_keyboard.gen/sources_1/bd/Ps2_kb/ip/Ps2_kb_ps2_keyboard_to_ascii_0_0/Ps2_kb_ps2_keyboard_to_ascii_0_0_stub.v
// Design      : Ps2_kb_ps2_keyboard_to_ascii_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ps2_keyboard_to_ascii,Vivado 2021.1" *)
module Ps2_kb_ps2_keyboard_to_ascii_0_0(clk, ps2_clk, ps2_data, ascii_new, ascii_code)
/* synthesis syn_black_box black_box_pad_pin="clk,ps2_clk,ps2_data,ascii_new,ascii_code[6:0]" */;
  input clk;
  input ps2_clk;
  input ps2_data;
  output ascii_new;
  output [6:0]ascii_code;
endmodule
