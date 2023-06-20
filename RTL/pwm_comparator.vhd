----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/15/2023 09:59:13 AM
-- Design Name: 
-- Module Name: pwm_comparator - Behavioral
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

entity pwm_comparator is
    generic ( CMP_BIT : positive := 16);
    port (
        -- >>> OUTPUT >>>
        cmp_o : out std_logic_vector (CMP_BIT-1 downto 0);
        half_o : out std_logic_vector (CMP_BIT-1 downto 0);
        pwm_o : out std_logic; -- pulse width modulated output
        -- <<< OUTPUT <<<
        -- >>> INPUT >>>
        cmp_i : in std_logic_vector (CMP_BIT-1 downto 0);
        counter_i : in std_logic_vector (CMP_BIT-1 downto 0);
        update_i : in std_logic; -- register enable control signal
        async_i : in std_logic; -- register bypass control signal
        clk_i : in std_logic -- main clock
        -- <<< INPUT <<<
    );
end pwm_comparator;

architecture Behavioral of pwm_comparator is
    signal cmp_r : unsigned(CMP_BIT-1 downto 0);
    signal cmp_s : unsigned(CMP_BIT-1 downto 0);
begin
    -- >>> REGISTER UPDATE LOGIC >>>
    COMPARATOR_REG : process(clk_i)
    begin
        if rising_edge(clk_i) then
            if update_i = '1' then
                cmp_r <= unsigned(cmp_i);
            end if;
        end if;
    end process;
    
    cmp_s <= unsigned(cmp_i) when (async_i = '1') else cmp_r;
    -- <<< REGISTER UPDATE LOGIC <<<
    
    -- >>> PWM COMPARATOR >>>
    COMPARATOR_LOGIC : process(counter_i, cmp_s)
    begin
        if unsigned(counter_i) < cmp_s then
            pwm_o <= '1';
        else
            pwm_o <= '0';
        end if;
    end process;
    -- <<< PWM COMPARATOR <<<
    
    -- >>> OUTPUT COMPARATOR HALF VALUE >>>
        half_o <= std_logic_vector(cmp_s srl 1);
        cmp_o <= std_logic_vector(cmp_s);
    -- <<< OUTPUT COMPARATOR HALF VALUE <<<

end Behavioral;
