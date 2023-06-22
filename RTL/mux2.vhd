----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/21/2023 11:28:59 PM
-- Design Name: 
-- Module Name: mux2 - Behavioral
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

entity mux2 is
    Generic (
        DATA_WIDTH : positive := 16
        );
    Port (
        -- >>> INPUT >>>
        sel_i : std_logic;
        data1_i : in std_logic_vector (DATA_WIDTH-1 downto 0);
        data2_i : in std_logic_vector (DATA_WIDTH-1 downto 0);
        -- <<< INPUT <<<
        -- >>> OUTPUT >>>
        data_o : out std_logic_vector (DATA_WIDTH-1 downto 0)
        -- <<< OUTPUT <<<
        );
end mux2;

architecture Behavioral of mux2 is

begin
    data_o <= data2_i when sel_i = '1' else data1_i;

end Behavioral;
