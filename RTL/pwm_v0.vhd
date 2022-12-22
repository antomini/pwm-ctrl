----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Antonio Minighin
-- 
-- Create Date: 12/19/2022 03:11:43 PM
-- Design Name:
-- Module Name: pwm_v0 - Behavioral
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
-- Further Improvements : duty should not be greather than top
--                        we should use a logic that keeps duty < top
--                        (it can be done externally)
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

entity pwm_v0 is
    generic (BIT_NUM : positive := 16);
    Port ( clk_i : in STD_LOGIC;
           duty_i : in STD_LOGIC_VECTOR (BIT_NUM-1 downto 0);
           top_i : in STD_LOGIC_VECTOR (BIT_NUM-1 downto 0);
           pwm_o : out STD_LOGIC;
           counter_o : out STD_LOGIC_vector (BIT_NUM-1 downto 0));
end pwm_v0;

architecture Behavioral of pwm_v0 is
    signal counter_r : unsigned(BIT_NUM-1 downto 0);
begin
    COUNTER_LOGIC : process(clk_i)
    begin
        if rising_edge(clk_i) then
            if (counter_r >= unsigned(top_i)) then
                counter_r <= to_unsigned(0, counter_r'length);
            else 
                counter_r <= counter_r + 1;
            end if;
        end if;
    end process;
    COMPARATOR_LOGIC : process(counter_r, duty_i)
    begin
        if(counter_r < unsigned(duty_i)) then
            pwm_o <= '1';
        else pwm_o <= '0';
        end if;
    end process;
    
    -- We can't use a different process to wrap the counter
    -- since the synth tool complains that two logics drives the same signal
    --WRAP_LOGIC : process(counter_r, top_i)
    --begin
    --    if (counter_r > unsigned(top_i)) then
    --        counter_r <= to_unsigned(0, counter_r'length);
    --    end if;
    -- end process;
    
    -- Signals to DEBUG
    counter_o <= std_logic_vector(counter_r);
    
end Behavioral;