----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/15/2023 06:18:54 PM
-- Design Name: 
-- Module Name: configmap_pwm - Behavioral
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

entity configmap_pwm is
    Generic (
        RESETN_BIT      : natural := 0;
        SAWTRI_BIT      : natural := 1;
        ASYNC_BIT       : natural := 2;
        UPD_PEAK_BIT    : natural := 3;
        UPD_VALLEY_BIT  : natural := 4;
        ACQ_FREE_BIT    : natural := 5;
        ACQ_MAX_BIT     : natural := 6;
        ACQ_CMP_BIT     : natural := 7;
        ACQ_HALF_BIT    : natural := 8;
        ACQ_ZERO_BIT    : natural := 9;
        EN_SNOOP_BIT    : natural := 10;
        DSP_START_BIT   : natural := 11;
        DSP_BYPASS_BIT  : natural := 12;
        DATA_WIDTH      : positive := 32
    );
    Port (
        -- >>> OUTPUT >>>
        resetn_o : out STD_LOGIC;
        sawtri_o : out STD_LOGIC;
        async_o : out STD_LOGIC;
        upd_peak_o : out STD_LOGIC;
        upd_valley_o : out STD_LOGIC;
        acq_free_o : out STD_LOGIC;
        acq_max_o : out STD_LOGIC;
        acq_cmp_o : out STD_LOGIC;
        acq_half_o : out STD_LOGIC;
        acq_zero_o : out STD_LOGIC;
        en_snoop_o : out STD_LOGIC;
        dsp_start_o : out STD_LOGIC;
        dsp_bypass_o : out STD_LOGIC;
        -- <<< OUTPUT <<<
        -- >>> INPUT >>>
        data_i : in STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0)
        -- <<< INPUT <<<
    );
end configmap_pwm;

architecture Behavioral of configmap_pwm is

begin
    resetn_o <= data_i(RESETN_BIT);
    sawtri_o <= data_i(SAWTRI_BIT);
    async_o <= data_i(ASYNC_BIT);
    
    upd_peak_o <= data_i(UPD_PEAK_BIT);
    upd_valley_o <= data_i(UPD_VALLEY_BIT);
    
    acq_free_o <= data_i(ACQ_FREE_BIT);
    acq_max_o <= data_i(ACQ_MAX_BIT);
    acq_cmp_o <= data_i(ACQ_CMP_BIT);
    acq_half_o <= data_i(ACQ_HALF_BIT);
    acq_zero_o <= data_i(ACQ_ZERO_BIT);
    
    en_snoop_o <= data_i(EN_SNOOP_BIT);
    
    dsp_start_o <= data_i(DSP_START_BIT);
    dsp_bypass_o <= data_i(DSP_BYPASS_BIT);

end Behavioral;
