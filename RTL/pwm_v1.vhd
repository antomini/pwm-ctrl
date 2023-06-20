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
        -- Debug Ports
        
        -- End Debug
        clk_i : in std_logic;
        resetn_i : in std_logic := '0';
        sawtri_i : in std_logic := '0';
        async_i : in std_logic := '0';
        top_i : in std_logic_vector (BIT_NUM-1 downto 0);
        cmp_i : in std_logic_vector (BIT_NUM-1 downto 0);
        update_i : in std_logic;
        pwm_o : out std_logic;
        updown_o : out std_logic;
        trigger_o : out std_logic;
        cmp_o : out std_logic_vector (BIT_NUM-1 downto 0);
        counter_o : out std_logic_vector (BIT_NUM-1 downto 0)
    );
end pwm_v1;

architecture Behavioral of pwm_v1 is
    signal counter_r : unsigned(BIT_NUM-1 downto 0);
    signal update_s : std_logic;
    signal cmp_r : unsigned(BIT_NUM-1 downto 0);
    signal cmp_s : unsigned(BIT_NUM-1 downto 0);
    signal updown_s : std_logic;
    signal updown_r : std_logic;
    signal reloadn_s : std_logic;
    signal over_s : std_logic;
    signal under_s : std_logic;
    signal range_s : std_logic_vector(1 downto 0);

begin

    -- Begin Counter Section --
    
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
    
    -- End Counter Section --
    
    -- Begin Comparator Section --
    COMPARATOR_REG : process(clk_i)
    begin
        if rising_edge(clk_i) then
            if update_i = '1' then
                cmp_r <= unsigned(cmp_i);
            end if;
        end if;
    end process;
    cmp_s <= unsigned(cmp_i) when (async_i = '1') else cmp_r;
    
    COMPARATOR_LOGIC : process(counter_r, cmp_i)
    begin
        if(counter_r < unsigned(cmp_i)) then
            pwm_o <= '1';
        else
            pwm_o <= '0';
        end if;
    end process;
    
    HALF_TRIGGER : process(cmp_r, counter_r)
    begin
        if counter_r = (cmp_r srl 1) then
            trigger_o <= '1';
        else
            trigger_o <= '0';
        end if;
    end process;
    
    -- End Comparator Section --
    
    counter_o <= std_logic_vector(counter_r);
    updown_o <= updown_s;
    cmp_o <= std_logic_vector(cmp_s);
    
end Behavioral;