----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/12/2023 10:00:54 AM
-- Design Name: 
-- Module Name: sync_v2 - Behavioral
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

entity sync_v2 is
    generic (
        BIT_NUM : positive := 16;
        DELAY_BITS : positive := 4;
        SHIFTER_BITS : positive := 2
    );
    port (
        counter_i : in std_logic_vector(BIT_NUM-1 downto 0);
        top_i : in std_logic_vector(BIT_NUM-1 downto 0);
        mask_i : in std_logic_vector(BIT_NUM-1 downto 0);
        delay_i : in std_logic_vector(DELAY_BITS-1 downto 0);
        shift_i : in std_logic_vector(SHIFTER_BITS-1 downto 0);
        updown_i : in std_logic;
        sync_o : out std_logic_vector(BIT_NUM-1 downto 0);
        trigger_o : out std_logic
    );
end sync_v2;

architecture Behavioral of sync_v2 is
    signal asym_s : signed(counter_i'length downto 0);
    signal abs_s : unsigned(counter_i'range);
    signal delayed_s : unsigned(counter_i'range);
    signal shifted_s : unsigned(counter_i'range);
    signal trunc_s : unsigned(counter_i'range);
begin
    
    ASYMETRIC_LOGIC : process(updown_i, counter_i, top_i)
    begin
        case updown_i is
        when '0' =>
            asym_s <= signed('0' & counter_i) - signed('0' & top_i);
        when others =>
            asym_s <= signed('0' & counter_i);
        end case;
    end process;
    abs_s <= to_unsigned(to_integer(abs(asym_s)),abs_s'length);
    
    delayed_s <= abs_s - unsigned(delay_i);
    shifted_s <= delayed_s sll to_integer(unsigned(shift_i));
    trunc_s <= shifted_s and unsigned(mask_i);
    
    COMPARATOR_LOGIC : process(trunc_s)
    begin
        if(trunc_s = 0) then
            trigger_o <= '1';
        else
            trigger_o <= '0';
        end if;
    end process;
    
    sync_o <= std_logic_vector(trunc_s);
end Behavioral;
