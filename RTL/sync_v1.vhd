----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Antonio Minighin
-- 
-- Create Date: 02/15/2023 10:24:00 AM
-- Design Name:
-- Module Name: sync_v1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
--      This module generates synchronous triggers using a counter as reference.
--      First it multiply the counter by a power of 2,
--      Then it masks the upper bits.
--      This produces an accelerated round-robing counter
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

entity sync_v1 is
    generic (
        BIT_NUM : positive := 16;
        DELAY_BITS : positive := 4;
        SHIFTER_BITS : positive := 2
    );
    port (
        counter_i : in std_logic_vector(BIT_NUM-1 downto 0);
        delay_i : in std_logic_vector(DELAY_BITS-1 downto 0);
        shift_i : in std_logic_vector(SHIFTER_BITS-1 downto 0);
        mask_i : in std_logic_vector(BIT_NUM-1 downto 0);
        shifted_d : out std_logic_vector(BIT_NUM-1 downto 0);
        trunc_d : out std_logic_vector(BIT_NUM-1 downto 0);
        trigger_o : out std_logic
    );
end sync_v1;

architecture Behavioral of sync_v1 is
    signal delayed_s : unsigned(counter_i'range);
    signal shifted_s : unsigned(counter_i'range);
    signal trunc_s : unsigned(counter_i'range);
begin
    delayed_s <= unsigned(counter_i) - unsigned(delay_i);
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
    
    shifted_d <= std_logic_vector(shifted_s);
    trunc_d <= std_logic_vector(trunc_s);
end Behavioral;
