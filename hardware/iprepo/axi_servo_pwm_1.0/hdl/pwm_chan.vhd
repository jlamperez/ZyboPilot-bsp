----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.10.2014 16:00:01
-- Design Name: 
-- Module Name: pwm_chan - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pwm_chan is
    Port ( clk:     in STD_LOGIC;
           reset: in STD_LOGIC;
           period : in STD_LOGIC_VECTOR (31 downto 0);
           hi : in STD_LOGIC_VECTOR(31 downto 0);
           pwm : out STD_LOGIC);
end pwm_chan;

architecture Behavioral of pwm_chan is

    signal counter, counter_next: integer := 0;
    signal prev_period : std_logic_vector(31 downto 0);
    
begin

  
-- Process to run the counter
    process(clk,reset)
        begin
            if(reset = '1') then
                counter <= 0;
                prev_period <= (others => '0');
            elsif clk='1' and clk'event then
                -- Reset the counter if the period changes
                if(period /= prev_period) then
                    counter <= 0;
                else
                    counter <= counter_next;
                end if;
                prev_period <= period;
            end if;
        end process;

    counter_next <= 0 when counter = unsigned(period)-1 else
        counter + 1;
      
    pwm <= '1' when counter < unsigned(hi) else '0';
      
end Behavioral;
