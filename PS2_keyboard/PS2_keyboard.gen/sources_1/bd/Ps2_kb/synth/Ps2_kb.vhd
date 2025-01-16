--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
--Date        : Sun Jan  5 19:05:59 2025
--Host        : DESKTOP-TQUTIVG running 64-bit major release  (build 9200)
--Command     : generate_target Ps2_kb.bd
--Design      : Ps2_kb
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Ps2_kb is
  port (
    ascii_code : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ascii_new : out STD_LOGIC;
    clk : in STD_LOGIC;
    ps2_clk : in STD_LOGIC;
    ps2_data : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Ps2_kb : entity is "Ps2_kb,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Ps2_kb,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=3,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Ps2_kb : entity is "Ps2_kb.hwdef";
end Ps2_kb;

architecture STRUCTURE of Ps2_kb is
  component Ps2_kb_vio_0_0 is
  port (
    clk : in STD_LOGIC;
    probe_in0 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    probe_in1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Ps2_kb_vio_0_0;
  component Ps2_kb_ps2_keyboard_to_ascii_0_0 is
  port (
    clk : in STD_LOGIC;
    ps2_clk : in STD_LOGIC;
    ps2_data : in STD_LOGIC;
    ascii_new : out STD_LOGIC;
    ascii_code : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component Ps2_kb_ps2_keyboard_to_ascii_0_0;
  signal clk_0_1 : STD_LOGIC;
  signal ps2_clk_1 : STD_LOGIC;
  signal ps2_data_1 : STD_LOGIC;
  signal ps2_keyboard_to_ascii_0_ascii_code : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal ps2_keyboard_to_ascii_0_ascii_new : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN Ps2_kb_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of ps2_clk : signal is "xilinx.com:signal:clock:1.0 CLK.PS2_CLK CLK";
  attribute X_INTERFACE_PARAMETER of ps2_clk : signal is "XIL_INTERFACENAME CLK.PS2_CLK, CLK_DOMAIN Ps2_kb_ps2_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  ascii_code(6 downto 0) <= ps2_keyboard_to_ascii_0_ascii_code(6 downto 0);
  ascii_new <= ps2_keyboard_to_ascii_0_ascii_new;
  clk_0_1 <= clk;
  ps2_clk_1 <= ps2_clk;
  ps2_data_1 <= ps2_data;
ps2_keyboard_to_ascii_0: component Ps2_kb_ps2_keyboard_to_ascii_0_0
     port map (
      ascii_code(6 downto 0) => ps2_keyboard_to_ascii_0_ascii_code(6 downto 0),
      ascii_new => ps2_keyboard_to_ascii_0_ascii_new,
      clk => clk_0_1,
      ps2_clk => ps2_clk_1,
      ps2_data => ps2_data_1
    );
vio_0: component Ps2_kb_vio_0_0
     port map (
      clk => clk_0_1,
      probe_in0(6 downto 0) => ps2_keyboard_to_ascii_0_ascii_code(6 downto 0),
      probe_in1(0) => ps2_keyboard_to_ascii_0_ascii_new
    );
end STRUCTURE;
