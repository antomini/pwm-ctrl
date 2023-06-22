----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/21/2023 10:01:05 AM
-- Design Name: 
-- Module Name: DSP_stdpipe - Behavioral
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

entity DSP_stdpipe is
    Generic (
        DATA_WIDTH : positive := 17;
        COEF_WIDTH : positive := 17
        );
    Port (
        -- >>> OUTPUT >>>
        acc_o : out STD_LOGIC_VECTOR(DATA_WIDTH + COEF_WIDTH downto 0);
        -- <<< OUTPUT <<<
        -- >>> INPUT >>>
        coef_i : in STD_LOGIC_VECTOR(COEF_WIDTH-1 downto 0);
        ref_i : in STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
        add_i : in STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
        alu_i : in STD_LOGIC_VECTOR(DATA_WIDTH + COEF_WIDTH downto 0);
        start_i : in STD_LOGIC;
        sub_i : in STD_LOGIC;
        clk_i : in STD_LOGIC
        -- <<< INPUT <<<
        );
end DSP_stdpipe;

architecture Behavioral of DSP_stdpipe is
    signal a : signed(DATA_WIDTH - 1 downto 0);
    signal b : signed(COEF_WIDTH - 1 downto 0);
    signal c : signed(DATA_WIDTH + COEF_WIDTH downto 0);
    signal d : signed(DATA_WIDTH - 1 downto 0);
    signal s : signed(DATA_WIDTH downto 0);
    signal m, p : signed(DATA_WIDTH + COEF_WIDTH downto 0);
begin
    -- >>> PREADDER MAC PIPELINE >>>
    PIPELINE : process(clk_i)
    begin
        if rising_edge(clk_i) then
            if start_i = '1' then
                a <= signed(ref_i);
                b <= signed(coef_i);
                c <= signed(alu_i);
                d <= signed(add_i);
                if sub_i = '1' then
                    s <= resize(a,s'length) - resize(d,s'length);
                else
                    s <= resize(a,s'length) + resize(d,s'length);
                end if;
                m <= s*b;
                p <= m + c;
            end if;
        end if;
    end process;
    acc_o <= std_logic_vector(p);
    -- <<< PREADDER MAC PIPELINE <<<
    
end Behavioral;
