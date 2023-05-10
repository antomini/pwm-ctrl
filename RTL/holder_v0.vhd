----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2023 04:15:11 PM
-- Design Name: 
-- Module Name: holder_v0 - Behavioral
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

entity holder_v0 is
    Generic (
        DATA_WIDTH : positive := 17
        );
    Port ( 
        data_in : in STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
        data_out : out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
        clk_in : in STD_LOGIC;
        en_in : in STD_LOGIC
    );
end holder_v0;

architecture Behavioral of holder_v0 is
    signal data_reg : STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
begin
    HOLD : process(clk_in)
    begin
        if rising_edge(clk_in) then
            if (en_in = '1') then
                data_reg <= data_in;
            end if;
        end if;
    end process;
    data_out <= data_reg;
end Behavioral;
