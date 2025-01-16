--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
--Date        : Sun Jan  5 19:05:59 2025
--Host        : DESKTOP-TQUTIVG running 64-bit major release  (build 9200)
--Command     : generate_target Ps2_kb_wrapper.bd
--Design      : Ps2_kb_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Ps2_kb_wrapper is
  port (
    ascii_code : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ascii_new : out STD_LOGIC;
    clk : in STD_LOGIC;
    ps2_clk : in STD_LOGIC;
    ps2_data : in STD_LOGIC
  );
end Ps2_kb_wrapper;

architecture STRUCTURE of Ps2_kb_wrapper is
  component Ps2_kb is
  port (
    clk : in STD_LOGIC;
    ps2_clk : in STD_LOGIC;
    ps2_data : in STD_LOGIC;
    ascii_code : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ascii_new : out STD_LOGIC
  );
  end component Ps2_kb;
begin
Ps2_kb_i: component Ps2_kb
     port map (
      ascii_code(6 downto 0) => ascii_code(6 downto 0),
      ascii_new => ascii_new,
      clk => clk,
      ps2_clk => ps2_clk,
      ps2_data => ps2_data
    );
end STRUCTURE;
