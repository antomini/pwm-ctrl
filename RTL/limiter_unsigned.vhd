----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/20/2023 11:51:14 PM
-- Design Name: 
-- Module Name: limiter_unsigned - Behavioral
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

entity limiter_unsigned is
    Generic (
        LIMIT : unsigned := x"FFFF";
        DATA_WIDTH : positive := 16
        );
    Port (
        -- >>> INPUT >>>
        data_i : in std_logic_vector (DATA_WIDTH-1 downto 0);
        -- <<< INPUT <<<
        -- >>> OUTPUT >>>
        data_o : out std_logic_vector (DATA_WIDTH-1 downto 0)
        -- <<< OUTPUT <<<
        );
end limiter_unsigned;

architecture Behavioral of limiter_unsigned is
    constant limit_c : unsigned(DATA_WIDTH-1 downto 0) := LIMIT;
begin
    -- >>> UNSIGNED LIMITER >>>
    LIMITER_LOGIC : process(data_i)
    begin
        if unsigned(data_i) > limit_c then
            data_o <= std_logic_vector(limit_c);
        else 
            data_o <= data_i;
        end if;
    end process;
    -- <<< UNSIGNED LIMITER <<<
end Behavioral;
