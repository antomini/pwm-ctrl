----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/21/2023 11:38:22 PM
-- Design Name: 
-- Module Name: limiter_signed - Behavioral
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

entity limiter_signed is
    Generic (
        UPPER_LIMIT : integer := 2**16-1;
        LOWER_LIMIT : integer := 0;
        DATA_WIDTH : positive := 16
        );
    Port (
        data_i : in STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0);
        data_o : out STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0)
        );
end limiter_signed;

architecture Behavioral of limiter_signed is
    constant min_c : signed(DATA_WIDTH-1 downto 0) := to_signed(LOWER_LIMIT, DATA_WIDTH);
    constant max_c : signed(DATA_WIDTH-1 downto 0) := to_signed(UPPER_LIMIT, DATA_WIDTH);
begin

    LIMITER_LOGIC : process(data_i)
    begin
        if signed(data_i) < min_c then
            data_o <= std_logic_vector(min_c);
        elsif signed(data_i) > max_c then
            data_o <= std_logic_vector(max_c);
        else 
            data_o <= data_i;
        end if;
    end process;

end Behavioral;
