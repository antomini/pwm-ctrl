----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/16/2023 03:14:32 PM
-- Design Name: 
-- Module Name: trigger_acquisition - Behavioral
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

entity trigger_acquisition is
    generic( CNT_BIT : positive := 16 );
    port(
        -- >>> OUTPUT >>>
        acq_o : out std_logic;
        -- <<< OUTPUT <<<
        -- >>> INPUT >>>
        free_i :  in std_logic_vector (CNT_BIT-1 downto 0);
        max_i : in std_logic_vector (CNT_BIT-1 downto 0);
        cmp_i : in std_logic_vector (CNT_BIT-1 downto 0);
        half_i :  in std_logic_vector (CNT_BIT-1 downto 0);
        counter_i :  in std_logic_vector (CNT_BIT-1 downto 0);
        en_free_i : in std_logic;
        en_max_i : in std_logic;
        en_cmp_i : in std_logic;
        en_half_i : in std_logic;
        en_zero_i : in std_logic
        -- <<< INPUT <<<
    );
end trigger_acquisition;

architecture Behavioral of trigger_acquisition is
    -- >>> COMPARATOR OUTPUT SIGNALS >>>
    signal max_trig_s : std_logic;
    signal cmp_trig_s : std_logic;
    signal half_trig_s : std_logic;
    signal zero_trig_s : std_logic;
    signal free_trig_s : std_logic;
    -- <<< COMPARATOR OUTPUT SIGNALS <<<
    -- >>> ACQUISTION ENABLED SIGNALS >>>
    signal max_acq_s : std_logic;
    signal cmp_acq_s : std_logic;
    signal half_acq_s : std_logic;
    signal zero_acq_s : std_logic;
    signal free_acq_s : std_logic;
    -- <<< ACQUISTION ENABLED SIGNALS <<<
begin
    -- >>> TRIGGER COMPARATORS >>>
    COMPARATOR_MAX : process(counter_i, max_i)
    begin
        if unsigned(counter_i) = unsigned(max_i) then
            max_trig_s <= '1';
        else
            max_trig_s <= '0';
        end if;
    end process;
    COMPARATOR_CMP : process(counter_i, cmp_i)
    begin
        if unsigned(counter_i) = unsigned(cmp_i) then
            cmp_trig_s <= '1';
        else
            cmp_trig_s <= '0';
        end if;
    end process;
    COMPARATOR_HALF : process(counter_i, half_i)
    begin
        if unsigned(counter_i) = unsigned(half_i) then
            half_trig_s <= '1';
        else
            half_trig_s <= '0';
        end if;
    end process;
    COMPARATOR_FREE : process(counter_i, free_i)
    begin
        if unsigned(counter_i) = unsigned(free_i) then
            free_trig_s <= '1';
        else
            free_trig_s <= '0';
        end if;
    end process;
    COMPARATOR_ZERO : process(counter_i)
    begin
        if unsigned(counter_i) = 0 then
            zero_trig_s <= '1';
        else
            zero_trig_s <= '0';
        end if;
    end process;
    -- <<< TRIGGER COMPARATORS <<<
    -- >>> MERGED ACQUISITION ENABLES >>>
    max_acq_s <= max_trig_s and en_max_i;
    cmp_acq_s <= cmp_trig_s and en_cmp_i;
    half_acq_s <= half_trig_s and en_half_i;
    free_acq_s <= free_trig_s and en_free_i;
    zero_acq_s <= zero_trig_s and en_zero_i;
    acq_o <= max_acq_s or cmp_acq_s or half_acq_s or free_acq_s or zero_acq_s;
    -- <<< MERGED ACQUISITION ENABLES <<<
end Behavioral;
