library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PWM_ip_v1_0 is
	generic (
		-- Users to add parameters here
        N	: integer	:= 32;
		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S0_AXI
		C_S0_AXI_DATA_WIDTH	: integer	:= 32;
		C_S0_AXI_ADDR_WIDTH	: integer	:= 4
	);
	port (
		-- Users to add ports here
        pwm_0 : out std_logic;
        pwm_1 : out std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S0_AXI
		s0_axi_aclk	: in std_logic;
		s0_axi_aresetn	: in std_logic;
		s0_axi_awaddr	: in std_logic_vector(C_S0_AXI_ADDR_WIDTH-1 downto 0);
		s0_axi_awprot	: in std_logic_vector(2 downto 0);
		s0_axi_awvalid	: in std_logic;
		s0_axi_awready	: out std_logic;
		s0_axi_wdata	: in std_logic_vector(C_S0_AXI_DATA_WIDTH-1 downto 0);
		s0_axi_wstrb	: in std_logic_vector((C_S0_AXI_DATA_WIDTH/8)-1 downto 0);
		s0_axi_wvalid	: in std_logic;
		s0_axi_wready	: out std_logic;
		s0_axi_bresp	: out std_logic_vector(1 downto 0);
		s0_axi_bvalid	: out std_logic;
		s0_axi_bready	: in std_logic;
		s0_axi_araddr	: in std_logic_vector(C_S0_AXI_ADDR_WIDTH-1 downto 0);
		s0_axi_arprot	: in std_logic_vector(2 downto 0);
		s0_axi_arvalid	: in std_logic;
		s0_axi_arready	: out std_logic;
		s0_axi_rdata	: out std_logic_vector(C_S0_AXI_DATA_WIDTH-1 downto 0);
		s0_axi_rresp	: out std_logic_vector(1 downto 0);
		s0_axi_rvalid	: out std_logic;
		s0_axi_rready	: in std_logic
	);
end PWM_ip_v1_0;

architecture arch_imp of PWM_ip_v1_0 is

	-- component declaration
	component PWM_ip_v1_0_S0_AXI is
		generic (
		N : integer := 32;
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 4
		);
		port (
		pwm_0 : out std_logic;
        pwm_1 : out std_logic;
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component PWM_ip_v1_0_S0_AXI;

begin

-- Instantiation of Axi Bus Interface S0_AXI
PWM_ip_v1_0_S0_AXI_inst : PWM_ip_v1_0_S0_AXI
	generic map (
	    N => N,
		C_S_AXI_DATA_WIDTH	=> C_S0_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S0_AXI_ADDR_WIDTH
	)
	port map (
	    pwm_0 => pwm_0,
	    pwm_1 => pwm_1,
		S_AXI_ACLK	=> s0_axi_aclk,
		S_AXI_ARESETN	=> s0_axi_aresetn,
		S_AXI_AWADDR	=> s0_axi_awaddr,
		S_AXI_AWPROT	=> s0_axi_awprot,
		S_AXI_AWVALID	=> s0_axi_awvalid,
		S_AXI_AWREADY	=> s0_axi_awready,
		S_AXI_WDATA	=> s0_axi_wdata,
		S_AXI_WSTRB	=> s0_axi_wstrb,
		S_AXI_WVALID	=> s0_axi_wvalid,
		S_AXI_WREADY	=> s0_axi_wready,
		S_AXI_BRESP	=> s0_axi_bresp,
		S_AXI_BVALID	=> s0_axi_bvalid,
		S_AXI_BREADY	=> s0_axi_bready,
		S_AXI_ARADDR	=> s0_axi_araddr,
		S_AXI_ARPROT	=> s0_axi_arprot,
		S_AXI_ARVALID	=> s0_axi_arvalid,
		S_AXI_ARREADY	=> s0_axi_arready,
		S_AXI_RDATA	=> s0_axi_rdata,
		S_AXI_RRESP	=> s0_axi_rresp,
		S_AXI_RVALID	=> s0_axi_rvalid,
		S_AXI_RREADY	=> s0_axi_rready
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
