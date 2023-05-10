----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/31/2023 10:01:43 AM
-- Design Name: 
-- Module Name: coefficients_v0 - Behavioral
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

entity coefficients_v0 is
    Generic ( COEF_WIDTH : positive := 16; 
        DATA_WIDTH : positive := 32
        );
    Port ( kp_in : in std_logic_vector(DATA_WIDTH-1 downto 0);
        ki_in : in std_logic_vector(DATA_WIDTH-1 downto 0);
        kp_out : out std_logic_vector(COEF_WIDTH downto 0);
        ki_out : out std_logic_vector(COEF_WIDTH downto 0)
        );
end coefficients_v0;

architecture Behavioral of coefficients_v0 is

begin
    kp_out <= '0' & kp_in(COEF_WIDTH-1 downto 0);
    ki_out <= '0' & ki_in(COEF_WIDTH-1 downto 0);

end Behavioral;
