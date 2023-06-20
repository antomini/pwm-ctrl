----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/14/2023 10:16:42 PM
-- Design Name: 
-- Module Name: counter_updown - Behavioral
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

entity counter_updown is
    generic ( CNT_BIT : positive := 16);
    port ( 
        -- >>> OUTPUT >>>
        counter_o : out std_logic_vector (CNT_BIT-1 downto 0); -- output of the counter register
        updown_o : out std_logic; -- flag to indicate whether the counter is couting upward or downward
        over_o : out std_logic; -- flag to indicate that the counter is equal or above the max value 
        under_o : out std_logic; -- flag to indicate that the counter is equal or below the min value (the minumum value is fixed to zero)
        -- <<< OUTPUT <<<
        -- >>> INPUT >>>
        max_i : in std_logic_vector (CNT_BIT-1 downto 0); -- maximum counter value
        sawtri_i : in std_logic := '0'; -- ramp type selector | 0=sawtooth | 1=triangular |
        resetn_i : in std_logic := '0'; -- active low counter synchronous reset
        clk_i : in std_logic -- counter main clock
        -- <<< INPUT <<<
        );
end counter_updown;

architecture Behavioral of counter_updown is
    signal counter_r : unsigned(CNT_BIT-1 downto 0); -- counter register 
    signal updown_s : std_logic; -- signal that choose the counting direction, it changes only when the counter is out of the range range
    signal updown_r : std_logic; -- status bit that latches the counting direction and keeps it
    signal reloadn_s : std_logic; -- active low auto-reload mechanism that forces the counter to zero
    signal over_s : std_logic; -- signal that is activated when counter >= max
    signal under_s : std_logic; -- signal that is activated when counter <= min (the minumum value is fixed to zero)
    signal range_s : std_logic_vector(1 downto 0); -- signal made of the concatenation of under & over

begin
    -- >>> OUTPUT CONNECTIONS >>>
    counter_o <= std_logic_vector(counter_r);
    updown_o <= updown_s;
    over_o <= over_s;
    under_o <= under_s;
    -- <<< OUTPUT CONNECTIONS <<<
    
    -- >>> COUNTER >>>
    COUNTER_LOGIC : process(clk_i)
    begin
        if rising_edge(clk_i) then
            if (resetn_i = '0') or (reloadn_s = '0') then
                counter_r <= to_unsigned(0, counter_r'length);
            else --if (enable_s = '1') then
                case updown_s is
                when '0' =>
                    counter_r <= counter_r - 1;
                when others =>
                    counter_r <= counter_r + 1;
                end case;
            end if;
        end if;
    end process;
    -- <<< COUNTER <<<
    
    -- >>> OUT OF RANGE COMPARATORS >>>
    range_s <= under_s & over_s;
    OVERFLOW_LOGIC : process(counter_r, max_i)
    begin
        if counter_r >= unsigned(max_i) then
            over_s <= '1';
        else
            over_s <= '0';
        end if;
    end process;
    
    UNDERFLOW_LOGIC : process(counter_r)
    begin
        if counter_r <= to_unsigned(0, counter_r'length) then
            under_s <= '1';
        else
            under_s <= '0';
        end if;
    end process;
    -- <<< OUT OF RANGE COMPARATORS <<<
    
    -- >>> UPDOWN STATE MACHINE >>>
    UPDOWN_REG : process(clk_i)
    begin
        if rising_edge(clk_i) then
            if (resetn_i = '0') or (reloadn_s = '0') then
               updown_r <= '1';
            else
                updown_r <= updown_s;
            end if;
        end if;
    end process;
    
    UPDOWN_LOGIC : process(range_s, sawtri_i, updown_r)
    begin
        case sawtri_i is
        when '0' => 
            updown_s <= '1';
        when others =>
            case range_s is 
            when "01" =>
                updown_s <= '0';
            when "10" =>
                updown_s <= '1';
            when others => 
                updown_s <= updown_r;
            end case;
        end case;
    end process;
    -- <<< UPDOWN STATE MACHINE <<<
    
    -- >>> COUNTER RELOAD MECHANISM >>>
    RELOAD_LOGIC : process(range_s, sawtri_i)
    begin
        case sawtri_i is
        when '0' => 
            case range_s is 
            when "01" =>
                reloadn_s <= '0';
            when "11" =>
                reloadn_s <= '0';
            when others => 
                reloadn_s <= '1';
            end case;
        when others =>
            case range_s is 
            when "11" =>
                reloadn_s <= '0';
            when others => 
                reloadn_s <= '1';
            end case;
        end case;
    end process;
    -- <<< COUNTER RELOAD MECHANISM <<<

end Behavioral;
