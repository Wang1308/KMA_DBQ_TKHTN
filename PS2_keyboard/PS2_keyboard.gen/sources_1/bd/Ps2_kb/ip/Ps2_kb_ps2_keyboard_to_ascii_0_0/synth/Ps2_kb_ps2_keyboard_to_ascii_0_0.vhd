-- (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:ps2_keyboard_to_ascii:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Ps2_kb_ps2_keyboard_to_ascii_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    ps2_clk : IN STD_LOGIC;
    ps2_data : IN STD_LOGIC;
    ascii_new : OUT STD_LOGIC;
    ascii_code : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
  );
END Ps2_kb_ps2_keyboard_to_ascii_0_0;

ARCHITECTURE Ps2_kb_ps2_keyboard_to_ascii_0_0_arch OF Ps2_kb_ps2_keyboard_to_ascii_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Ps2_kb_ps2_keyboard_to_ascii_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT ps2_keyboard_to_ascii IS
    GENERIC (
      clk_freq : INTEGER;
      ps2_debounce_counter_size : INTEGER
    );
    PORT (
      clk : IN STD_LOGIC;
      ps2_clk : IN STD_LOGIC;
      ps2_data : IN STD_LOGIC;
      ascii_new : OUT STD_LOGIC;
      ascii_code : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
  END COMPONENT ps2_keyboard_to_ascii;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF Ps2_kb_ps2_keyboard_to_ascii_0_0_arch: ARCHITECTURE IS "ps2_keyboard_to_ascii,Vivado 2021.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF Ps2_kb_ps2_keyboard_to_ascii_0_0_arch : ARCHITECTURE IS "Ps2_kb_ps2_keyboard_to_ascii_0_0,ps2_keyboard_to_ascii,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF Ps2_kb_ps2_keyboard_to_ascii_0_0_arch: ARCHITECTURE IS "Ps2_kb_ps2_keyboard_to_ascii_0_0,ps2_keyboard_to_ascii,{x_ipProduct=Vivado 2021.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ps2_keyboard_to_ascii,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,clk_freq=50000000,ps2_debounce_counter_size=8}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Ps2_kb_ps2_keyboard_to_ascii_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF ps2_clk: SIGNAL IS "XIL_INTERFACENAME ps2_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Ps2_kb_ps2_clk_0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ps2_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ps2_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Ps2_kb_clk_0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : ps2_keyboard_to_ascii
    GENERIC MAP (
      clk_freq => 50000000,
      ps2_debounce_counter_size => 8
    )
    PORT MAP (
      clk => clk,
      ps2_clk => ps2_clk,
      ps2_data => ps2_data,
      ascii_new => ascii_new,
      ascii_code => ascii_code
    );
END Ps2_kb_ps2_keyboard_to_ascii_0_0_arch;
