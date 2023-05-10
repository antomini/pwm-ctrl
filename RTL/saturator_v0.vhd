----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/30/2023 11:44:58 AM
-- Design Name: 
-- Module Name: saturator_v0 - Behavioral
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

entity saturator_v0 is
    Generic (
        LIMIT_WIDTH : positive := 16;
        DATA_WIDTH : positive := 18);
    Port ( data_in : in STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0);
           sat_out : out STD_LOGIC_VECTOR (LIMIT_WIDTH-1 downto 0));
end saturator_v0;

architecture Behavioral of saturator_v0 is
    signal data : signed(DATA_WIDTH-1 downto 0);
    signal sat : signed(DATA_WIDTH-1 downto 0);
    constant min : signed(DATA_WIDTH-1 downto 0) := to_signed(0, DATA_WIDTH);
    constant max : signed(DATA_WIDTH-1 downto 0) := to_signed(2**LIMIT_WIDTH-1, DATA_WIDTH);
begin
    data <= signed(data_in);
    
    LIMITER_LOGIC : process(data)
    begin
        if (data < min) then
            sat <= min;
        elsif (data > max) then
            sat <= max;
        else 
            sat <= data;
        end if;
    end process;

    sat_out <= std_logic_vector(sat(sat_out'range));
end Behavioral;
