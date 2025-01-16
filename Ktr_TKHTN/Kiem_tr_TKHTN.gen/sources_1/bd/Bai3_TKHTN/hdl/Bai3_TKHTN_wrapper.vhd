--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
--Date        : Fri Nov  8 09:12:48 2024
--Host        : DESKTOP-TQUTIVG running 64-bit major release  (build 9200)
--Command     : generate_target Bai3_TKHTN_wrapper.bd
--Design      : Bai3_TKHTN_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Bai3_TKHTN_wrapper is
  port (
    led_4bits_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    push_buttons_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
end Bai3_TKHTN_wrapper;

architecture STRUCTURE of Bai3_TKHTN_wrapper is
  component Bai3_TKHTN is
  port (
    sys_clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    led_4bits_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    push_buttons_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component Bai3_TKHTN;
begin
Bai3_TKHTN_i: component Bai3_TKHTN
     port map (
      led_4bits_tri_o(3 downto 0) => led_4bits_tri_o(3 downto 0),
      push_buttons_4bits_tri_i(3 downto 0) => push_buttons_4bits_tri_i(3 downto 0),
      reset => reset,
      sys_clock => sys_clock
    );
end STRUCTURE;
