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
-- Additional Comments: Using duty_i > top_i will make a 100% duty cycle.
-- Further Improvements:
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

entity pwm_v1 is
    generic (
        BIT_NUM : positive := 16
    );
    Port ( 
        clk_i : in STD_LOGIC;
        resetn_i : in STD_LOGIC;
        duty_i : in STD_LOGIC_VECTOR (BIT_NUM-1 downto 0);
        top_i : in STD_LOGIC_VECTOR (BIT_NUM-1 downto 0);
        sawtri_i : in STD_LOGIC;
        pwm_o : out STD_LOGIC;
        updown_o : out std_logic;
        counter_o : out STD_LOGIC_vector (BIT_NUM-1 downto 0)
    );
end pwm_v1;

architecture Behavioral of pwm_v1 is
    signal counter_r : unsigned(BIT_NUM-1 downto 0);
    signal updown_s : std_logic;
    signal updown_r : std_logic;
    signal reloadn_s : std_logic;
    signal over_s : std_logic;
    signal under_s : std_logic;
    signal range_s : std_logic_vector(1 downto 0);
    --signal enable_s : std_logic;
begin
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
    
    OVERFLOW_LOGIC : process(counter_r, top_i)
    begin
        if(counter_r >= unsigned(top_i)) then
            over_s <= '1';
        else
            over_s <= '0';
        end if;
    end process;
    
    UNDERFLOW_LOGIC : process(counter_r)
    begin
        if(counter_r <= to_unsigned(0, counter_r'length)) then
            under_s <= '1';
        else
            under_s <= '0';
        end if;
    end process;
    
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
    
    range_s <= under_s & over_s;
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
                        
    COMPARATOR_LOGIC : process(counter_r, duty_i)
    begin
        if(counter_r < unsigned(duty_i)) then
            pwm_o <= '1';
        else
            pwm_o <= '0';
        end if;
    end process;
    
    counter_o <= std_logic_vector(counter_r);
    updown_o <= updown_s;
    
end Behavioral;