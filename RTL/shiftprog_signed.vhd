----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/22/2023 12:32:16 AM
-- Design Name: 
-- Module Name: shiftprog_signed - Behavioral
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

entity shiftprog_signed is
    Generic ( 
        SHIFT_WIDTH : positive := 4;
        DATA_WIDTH : positive := 16
    );
    Port ( 
        data_i : in STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0);
        shift_i : in STD_LOGIC_VECTOR(SHIFT_WIDTH-1 downto 0);
        data_o : out STD_LOGIC_vector (DATA_WIDTH-1 downto 0)
    );
end shiftprog_signed;

architecture Behavioral of shiftprog_signed is
    signal data_s : signed(DATA_WIDTH-1 downto 0);
    signal shifted_s : signed(DATA_WIDTH-1 downto 0);
begin

    data_s <= signed(data_i);
    shifted_s <= shift_right(data_s, to_integer(unsigned(shift_i)));
    data_o <= std_logic_vector(shifted_s);

end Behavioral;
