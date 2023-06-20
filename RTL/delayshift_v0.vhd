----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2023 07:01:56 PM
-- Design Name: 
-- Module Name: delayshift_v0 - Behavioral
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

entity delayshift_v0 is
    Generic (
        DLY_WIDTH : positive := 16;
        SHIFT_WIDTH : positive := 4;
        DATA_WIDTH : positive := 32
    );
    Port ( 
        data_in : in STD_LOGIC_VECTOR(DATA_WIDTH -1 downto 0);
        dly_out : out STD_LOGIC_VECTOR(DLY_WIDTH -1 downto 0);
        shift_out : out STD_LOGIC_VECTOR(SHIFT_WIDTH -1 downto 0)
    );
end delayshift_v0;

architecture Behavioral of delayshift_v0 is
begin

    dly_out <= data_in(DLY_WIDTH-1 downto 0);
    shift_out <= data_in(SHIFT_WIDTH + DLY_WIDTH -1 downto DLY_WIDTH);
    
end Behavioral;
