----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/30/2023 05:30:28 PM
-- Design Name: 
-- Module Name: shiftarith_v0 - Behavioral
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

entity shiftarith_v0 is
    generic ( 
        SHIFT_WIDTH : positive := 4;
        DATA_WIDTH : positive := 16
    );
    Port ( 
        data_in : in STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0);
        shift_in : in STD_LOGIC_VECTOR(SHIFT_WIDTH-1 downto 0);
        sra_out : out STD_LOGIC_vector (DATA_WIDTH-1 downto 0)
    );
end shiftarith_v0;

architecture Behavioral of shiftarith_v0 is
    signal data : signed(DATA_WIDTH-1 downto 0);
    signal shifted : signed(DATA_WIDTH-1 downto 0);
begin

    data <= signed(data_in);
    shifted <= shift_right(data, to_integer(unsigned(shift_in)));
    sra_out <= std_logic_vector(shifted);

end Behavioral;
