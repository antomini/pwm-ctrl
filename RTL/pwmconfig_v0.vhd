----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/11/2023 09:49:20 AM
-- Design Name: 
-- Module Name: pwmconfig_v0 - Behavioral
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

entity pwmconfig_v0 is
    Generic (
        RES_BIT : natural := 0;
        SAWTRI_BIT : natural := 1;
        DATA_WIDTH : positive := 32
    );
    Port ( 
        data_in : in STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
        resetn_out : out STD_LOGIC;
        sawtri_out : out STD_LOGIC
    );
end pwmconfig_v0;

architecture Behavioral of pwmconfig_v0 is

begin
    resetn_out <= data_in(RES_BIT);
    sawtri_out <= data_in(SAWTRI_BIT);


end Behavioral;
