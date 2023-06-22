----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/21/2023 06:05:05 PM
-- Design Name: 
-- Module Name: zeropad_left - Behavioral
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

entity zeropad_left is
    Generic (
        ZEROS : natural := 1;
        INPUT_WIDTH : positive := 16
        );
    Port (
        -- >>> OUTPUT >>>
        data_o : out STD_LOGIC_VECTOR(INPUT_WIDTH+ZEROS-1 downto 0);
        -- <<< OUTPUT <<<
        -- >>> INPUT >>>
        data_i : in STD_LOGIC_VECTOR(INPUT_WIDTH-1 downto 0)
        -- <<< INPUT <<<
        );
end zeropad_left;

architecture Behavioral of zeropad_left is
    constant zeros_c : std_logic_vector(ZEROS-1 downto 0) := (others => '0');
begin
    data_o <= zeros_c & data_i;

end Behavioral;
