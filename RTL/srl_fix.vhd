----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/21/2023 03:00:57 PM
-- Design Name: 
-- Module Name: srl_fix - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity srl_fix is
    Generic (
        INPUT_WIDTH : positive := 16;
        OUTPUT_WIDTH : positive := 12;
        SHIFT : natural := 4
        );
    Port (
        -- >>> OUTPUT >>>
        data_o : out STD_LOGIC_VECTOR(OUTPUT_WIDTH-1 downto 0);
        -- <<< OUTPUT <<<
        -- >>> INPUT >>>
        data_i : in STD_LOGIC_VECTOR(INPUT_WIDTH-1 downto 0)
        -- <<< INPUT <<<
        );
end srl_fix;

architecture Behavioral of srl_fix is
    constant empty_c : std_logic_vector(OUTPUT_WIDTH-(INPUT_WIDTH-SHIFT) - 1 downto 0) := (others => '0');
begin
    data_o <= empty_c & data_i(INPUT_WIDTH-1 downto SHIFT);
end Behavioral;
