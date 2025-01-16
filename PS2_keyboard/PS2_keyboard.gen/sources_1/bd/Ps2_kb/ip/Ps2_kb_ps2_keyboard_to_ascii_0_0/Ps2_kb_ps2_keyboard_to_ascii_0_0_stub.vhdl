-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Sun Jan  5 17:17:24 2025
-- Host        : DESKTOP-TQUTIVG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/TK_HTN/PS2_keyboard/PS2_keyboard.gen/sources_1/bd/Ps2_kb/ip/Ps2_kb_ps2_keyboard_to_ascii_0_0/Ps2_kb_ps2_keyboard_to_ascii_0_0_stub.vhdl
-- Design      : Ps2_kb_ps2_keyboard_to_ascii_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ps2_kb_ps2_keyboard_to_ascii_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    ps2_clk : in STD_LOGIC;
    ps2_data : in STD_LOGIC;
    ascii_new : out STD_LOGIC;
    ascii_code : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );

end Ps2_kb_ps2_keyboard_to_ascii_0_0;

architecture stub of Ps2_kb_ps2_keyboard_to_ascii_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,ps2_clk,ps2_data,ascii_new,ascii_code[6:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ps2_keyboard_to_ascii,Vivado 2021.1";
begin
end;
