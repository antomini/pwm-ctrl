----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2023 06:43:10 PM
-- Design Name: 
-- Module Name: topmask_v0 - Behavioral
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

entity topmask_v0 is
    Generic (
        TOP_WIDTH : positive := 16
    );
    Port ( 
        topmask_in : in STD_LOGIC_VECTOR(2*TOP_WIDTH-1 downto 0);
        top_out : out STD_LOGIC_VECTOR(TOP_WIDTH-1 downto 0);
        mask_out : out STD_LOGIC_VECTOR(TOP_WIDTH-1 downto 0)
    );
end topmask_v0;

architecture Behavioral of topmask_v0 is

begin
    top_out <= topmask_in(TOP_WIDTH-1 downto 0);
    mask_out <= topmask_in(2*TOP_WIDTH-1 downto TOP_WIDTH);
end Behavioral;
