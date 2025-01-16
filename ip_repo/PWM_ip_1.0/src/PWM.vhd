library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL; ---------- 
entity PWM is
    generic (N: integer := 32);
    Port ( clk:  in std_logic;
         rst:   in std_logic;
         period:   in std_logic_vector (N-1 downto 0);
         duty:  in std_logic_vector (N-1 downto 0);
         pwm_out:   out std_logic);
end PWM;
architecture Behavioral of PWM is
    signal duty_r: std_logic_vector (N-1 downto 0);
    signal period_r: std_logic_vector (N-1 downto 0);
    signal period_cnt:  std_logic_vector (N-1 downto 0);
    signal pwm_r: std_logic;
begin
    reg: process (clk, rst)
    begin
        if (rst = '0') then
            period_r <= (others => '0');
            duty_r   <= (others => '0');
        elsif (clk'event and clk = '0') then
            period_r <= period;
            duty_r   <= duty;
        end if;
    end process;
    cnt: process (clk, rst)
    begin
        if (rst = '0') then
            period_cnt <= (others => '0');
        elsif (clk'event and clk ='0') then
            if period_cnt = period_r - 1 then
                period_cnt <= (others => '0');
            else
                period_cnt <= period_cnt + 1;
            end if;
        end if;
    end process;
    pwm: process (clk, rst)
    begin
        if (rst = '0') then
            pwm_r <= '0';
        elsif (clk'event and clk ='0') then
            if (period_cnt < duty_r) then
                pwm_r <= '1';
            else pwm_r <= '0';
            end if;
        end if;
    end process;
    pwm_out <= pwm_r;
end Behavioral; 