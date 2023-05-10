----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/20/2023 07:12:25 PM
-- Design Name: 
-- Module Name: AXIS_Snooper - Behavioral
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

entity AXIS_Snooper is
    generic(DATA_WIDTH : positive := 16;
            ID_WIDTH : positive := 1;
            SNOOP_ID : positive := 19
            );
    Port( 
            -- User Ports
            adc_out : out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
            id_out : out STD_LOGIC_VECTOR(ID_WIDTH-1 downto 0);
            -- End User Ports
            s_axis_aclk : in STD_LOGIC;
            s_axis_aresetn : in STD_LOGIC;
            s_axis_tvalid : in STD_LOGIC;
            s_axis_tready : out STD_LOGIC;
            s_axis_tdata : in STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
            s_axis_tid : in STD_LOGIC_VECTOR(ID_WIDTH-1 downto 0)
            );
end AXIS_Snooper;

architecture Behavioral of AXIS_Snooper is
    signal data_reg : STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
    signal id_reg : STD_LOGIC_VECTOR(ID_WIDTH-1 downto 0);
    signal id_match : STD_LOGIC_VECTOR(ID_WIDTH-1 downto 0);
begin
    id_match <= std_logic_vector(to_unsigned(SNOOP_ID, ID_WIDTH));
    -- s_axis_tready <= '1'; --Always ready
    s_axis_tready <= s_axis_tvalid; -- It is permitted for the slave to wait till TVALID is asserted
    DATA_EXTRACTION : process(s_axis_aclk)
    begin
        if rising_edge(s_axis_aclk) then
            if (s_axis_tvalid = '1') and (s_axis_tid = id_match) then
                data_reg <= s_axis_tdata;
                id_reg <= s_axis_tid;
            end if;
        end if;
    end process;
    
    id_out <= id_reg;
    adc_out <= data_reg;

end Behavioral;
