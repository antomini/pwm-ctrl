----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Antonio Minighin
-- 
-- Create Date: 23/01/2023 18:00:00 PM
-- Design Name:
-- Module Name: sync_v0 - Behavioral
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

entity sync_v0 is
    generic (BIT_NUM : positive := 16);
    Port (
        counter_i : in STD_LOGIC_VECTOR (BIT_NUM-1 downto 0);
        clk_i : in STD_LOGIC;
        duty_i : in STD_LOGIC_VECTOR (BIT_NUM-1 downto 0);
        top_i : in STD_LOGIC_VECTOR (BIT_NUM-1 downto 0);
        trigger_o : out STD_LOGIC
    );
end sync_v0;

architecture Behavioral of sync_v0 is
    signal onTime_s : unsigned(BIT_NUM-1 downto 0);
    signal offTime_s : unsigned(BIT_NUM-1 downto 0);
    signal compA_s : unsigned (BIT_NUM-1 downto 0);
    signal compB_s : unsigned (BIT_NUM-1 downto 0);
    -- type unsigned_array is array (0 to DIV_NUM-1) of unsigned(BIT_NUM-1 downto 0);
    -- signal dutydiv_s : unsigned_array;
begin
    onTime_s <= unsigned(duty_i);
    offTime_s <= unsigned(top_i) - unsigned(duty_i);
    compA_s <= (onTime_s srl 1) - 1;
    compB_s <= onTime_s + (offTime_s srl 1);
    
    COMPARATOR_LOGIC : process(clk_i)
    begin
        if rising_edge(clk_i) then
            if (compA_s = unsigned(counter_i)) or (compB_s = unsigned(counter_i)) then
                trigger_o <= '1';
            else
                trigger_o <= '0';
            end if;
        end if;
    end process;
    
-- Too complex with structural model
--    BITWISE_COMPARATOR : for i in 0 to BIT_NUM-1 generate
--        auxP_s(i) <= auxA_s(i) and auxB_s(i);
--        auxN_s(i) <= (not auxA_s(i)) and (not auxB_s(i));
--        auxY_s(i) <= auxP_s(i) or auxN_s(i);
--    end generate;
    
    
-- Case statement can't be used with static choices!
-- The reason is that the compiler can't predict every case-assignment that happens.
-- Moreover, when two independent variables have the same value
-- the compiler doesn't know what assignment to choose
-- that's why a hierarcycal if must be implemented
--    MIDEVNT_LOGIC : process(clk_i)
--    begin
--        if rising_edge(clk_i) then
--            case unsigned(counter_i) is
--                when dutyhalf_c | tophalf_c + dutyhalf_c => trigger_o <= '1';
--                when others => trigger_o <= '0';
--            end case;
--        end if;
--    end process;
end Behavioral;
