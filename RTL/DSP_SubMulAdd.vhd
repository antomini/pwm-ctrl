----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/22/2023 12:37:43 PM
-- Design Name: 
-- Module Name: DSP_SubMulAdd - Behavioral
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

entity DSP_SubMulAdd is
    Generic (
        DATA_WIDTH : positive := 17;
        PARAMS_WIDTH : positive := 17
        );
    Port (
        kp_in : in STD_LOGIC_VECTOR(PARAMS_WIDTH-1 downto 0);
        ref_in : in STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
        adc_in : in STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
        add_in : in STD_LOGIC_VECTOR(DATA_WIDTH + PARAMS_WIDTH-1 downto 0);
        y_out : out STD_LOGIC_VECTOR(DATA_WIDTH + PARAMS_WIDTH-1 downto 0);
        start_in : in STD_LOGIC;
        clk_in : in STD_LOGIC
        );
end DSP_SubMulAdd;

architecture Behavioral of DSP_SubMulAdd is
    signal a : signed(DATA_WIDTH - 1 downto 0);
    signal b : signed(PARAMS_WIDTH - 1 downto 0);
    signal c : signed(DATA_WIDTH + PARAMS_WIDTH - 1 downto 0);
    signal d : signed(DATA_WIDTH - 1 downto 0);
    signal sub : signed(DATA_WIDTH - 1 downto 0);
    signal mult, p : signed(DATA_WIDTH + PARAMS_WIDTH - 1 downto 0);
begin
    PIPELINE : process(clk_in)
    begin
        if rising_edge(clk_in) then
            if (start_in = '1') then
                a <= signed(ref_in);
                b <= signed(kp_in);
                c <= signed(add_in);
                d <= signed(adc_in);
                sub <= a - d;
                mult <= sub*b;
                p <= mult + c;
            end if;
        end if;
    end process;
    y_out <= std_logic_vector(p);

end Behavioral;