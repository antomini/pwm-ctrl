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
    generic(
            ID_WIDTH : positive := 5;
            SNOOP_ID_A : positive := 21;
            SNOOP_ID_B : positive := 29;
            DATA_WIDTH : positive := 16
            );
    Port( 
            -- >>> USER PORTS >>>
            adcA_o : out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
            adcB_o : out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
            idA_o : out STD_LOGIC_VECTOR(ID_WIDTH-1 downto 0);
            idB_o : out STD_LOGIC_VECTOR(ID_WIDTH-1 downto 0);
            en_out_i : STD_LOGIC;
            -- <<< USER PORTS <<<
            -- >>> AXI-STREAM SIGNALS MINIMAL >>>
            s_axis_aclk : in STD_LOGIC;
            s_axis_aresetn : in STD_LOGIC;
            s_axis_tvalid : in STD_LOGIC;
            s_axis_tready : out STD_LOGIC;
            s_axis_tdata : in STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
            s_axis_tid : in STD_LOGIC_VECTOR(ID_WIDTH-1 downto 0)
            -- <<< AXI-STREAM SIGNALS MINIMAL <<<
            );
end AXIS_Snooper;

architecture Behavioral of AXIS_Snooper is
    signal dataA_r : STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
    signal dataB_r : STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
    signal idA_r : STD_LOGIC_VECTOR(ID_WIDTH-1 downto 0);
    signal idB_r : STD_LOGIC_VECTOR(ID_WIDTH-1 downto 0);
    constant idA_c : STD_LOGIC_VECTOR(ID_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(SNOOP_ID_A, ID_WIDTH));
    constant idB_c : STD_LOGIC_VECTOR(ID_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(SNOOP_ID_B, ID_WIDTH));
begin
    -- >>> AXI_STREAM CONTROL INTERFACE >>>
    -- s_axis_tready <= '1'; --Always ready is a BAD PRACTICE
    s_axis_tready <= s_axis_tvalid; -- The subordinates waits till the manager asserted TVALID
    -- <<< AXI_STREAM CONTROL INTERFACE <<<
    
    -- >>> DATA SNOOPING >>>
    DATA_EXTRACTION_A : process(s_axis_aclk)
    begin
        if rising_edge(s_axis_aclk) then
            if (s_axis_tvalid = '1') and (s_axis_tid = idA_c) then
                dataA_r <= s_axis_tdata;
                idA_r <= s_axis_tid;
            end if;
        end if;
    end process;
    DATA_EXTRACTION_B : process(s_axis_aclk)
    begin
        if rising_edge(s_axis_aclk) then
            if (s_axis_tvalid = '1') and (s_axis_tid = idB_c) then
                dataB_r <= s_axis_tdata;
                idB_r <= s_axis_tid;
            end if;
        end if;
    end process;
    -- <<< DATA SNOOPING <<<
    
    -- >>> OUTPUT REGISTERS >>>
    idA_o <= idA_r;
    idB_o <= idB_r;
    adcA_o <= dataA_r when (en_out_i = '1') else (others => '0');
    adcB_o <= dataB_r when (en_out_i = '1') else (others => '0');
    -- >>> OUTPUT REGISTERS >>>

end Behavioral;
