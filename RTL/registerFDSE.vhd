----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/22/2023 03:54:42 PM
-- Design Name: 
-- Module Name: registerFDSE - Behavioral
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

entity registerFDSE is
    Generic(
        DATA_WIDTH : natural := 16
    );
    Port(
        data_o : out  std_logic_vector(DATA_WIDTH-1 downto 0);
        data_i : in std_logic_vector(DATA_WIDTH-1 downto 0);
        en_i : in std_logic;
        clk_i : in std_logic
    );
end registerFDSE;

architecture Behavioral of registerFDSE is
    
begin
    REGISTER_FDSE : process(clk_i)
    begin
        if rising_edge(clk_i) then
            if en_i = '1' then
                data_o <= data_i;
            end if;
        end if;
    end process;

end Behavioral;
