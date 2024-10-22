--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
--Date        : Thu Jun 22 23:43:43 2023
--Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
--Command     : generate_target pwm_controller.bd
--Design      : pwm_controller
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ADC_SNOOPER_imp_YX3GGP is
  port (
    adcA_msb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    adcA_slicepad : out STD_LOGIC_VECTOR ( 16 downto 0 );
    adcB_msb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    en_out_i : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axis_tready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC
  );
end ADC_SNOOPER_imp_YX3GGP;

architecture STRUCTURE of ADC_SNOOPER_imp_YX3GGP is
  component pwm_controller_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component pwm_controller_xlslice_0_0;
  component pwm_controller_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component pwm_controller_xlslice_0_1;
  component pwm_controller_zeropad_left_0_1 is
  port (
    data_o : out STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component pwm_controller_zeropad_left_0_1;
  component pwm_controller_zeropad_left_0_0 is
  port (
    data_o : out STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component pwm_controller_zeropad_left_0_0;
  component pwm_controller_AXIS_Snooper_0_0 is
  port (
    adcA_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    adcB_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    idA_o : out STD_LOGIC_VECTOR ( 4 downto 0 );
    idB_o : out STD_LOGIC_VECTOR ( 4 downto 0 );
    en_out_i : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tid : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component pwm_controller_AXIS_Snooper_0_0;
  signal ADC_SLICEPAD_data_o : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal AXIS_Snooper_0_adcA_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal AXIS_Snooper_0_adcB_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Conn1_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Conn1_TID : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Conn1_TREADY : STD_LOGIC;
  signal Conn1_TVALID : STD_LOGIC;
  signal Dout : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute DEBUG : string;
  attribute DEBUG of Dout : signal is "true";
  signal Dout_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal en_out_i_1 : STD_LOGIC;
  signal s_axis_aclk_1 : STD_LOGIC;
  signal s_axis_aresetn_1 : STD_LOGIC;
  signal NLW_AXIS_Snooper_0_idA_o_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_AXIS_Snooper_0_idB_o_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_zeropad_left_1_data_o_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
begin
  Conn1_TDATA(15 downto 0) <= s_axis_tdata(15 downto 0);
  Conn1_TID(4 downto 0) <= s_axis_tid(4 downto 0);
  Conn1_TVALID <= s_axis_tvalid;
  adcA_msb(11 downto 0) <= Dout(11 downto 0);
  adcA_slicepad(16 downto 0) <= ADC_SLICEPAD_data_o(16 downto 0);
  adcB_msb(11 downto 0) <= Dout_1(11 downto 0);
  en_out_i_1 <= en_out_i;
  s_axis_aclk_1 <= s_axis_aclk;
  s_axis_aresetn_1 <= s_axis_aresetn;
  s_axis_tready <= Conn1_TREADY;
AXIS_Snooper_0: component pwm_controller_AXIS_Snooper_0_0
     port map (
      adcA_o(15 downto 0) => AXIS_Snooper_0_adcA_o(15 downto 0),
      adcB_o(15 downto 0) => AXIS_Snooper_0_adcB_o(15 downto 0),
      en_out_i => en_out_i_1,
      idA_o(4 downto 0) => NLW_AXIS_Snooper_0_idA_o_UNCONNECTED(4 downto 0),
      idB_o(4 downto 0) => NLW_AXIS_Snooper_0_idB_o_UNCONNECTED(4 downto 0),
      s_axis_aclk => s_axis_aclk_1,
      s_axis_aresetn => s_axis_aresetn_1,
      s_axis_tdata(15 downto 0) => Conn1_TDATA(15 downto 0),
      s_axis_tid(4 downto 0) => Conn1_TID(4 downto 0),
      s_axis_tready => Conn1_TREADY,
      s_axis_tvalid => Conn1_TVALID
    );
xlslice_0: component pwm_controller_xlslice_0_0
     port map (
      Din(15 downto 0) => AXIS_Snooper_0_adcA_o(15 downto 0),
      Dout(11 downto 0) => Dout(11 downto 0)
    );
xlslice_1: component pwm_controller_xlslice_0_1
     port map (
      Din(15 downto 0) => AXIS_Snooper_0_adcB_o(15 downto 0),
      Dout(11 downto 0) => Dout_1(11 downto 0)
    );
zeropad_left_0: component pwm_controller_zeropad_left_0_0
     port map (
      data_i(11 downto 0) => Dout(11 downto 0),
      data_o(16 downto 0) => ADC_SLICEPAD_data_o(16 downto 0)
    );
zeropad_left_1: component pwm_controller_zeropad_left_0_1
     port map (
      data_i(11 downto 0) => Dout_1(11 downto 0),
      data_o(16 downto 0) => NLW_zeropad_left_1_data_o_UNCONNECTED(16 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DPWM_SLICE_imp_J8D3HN is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Din1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    acq_cmp_o : out STD_LOGIC;
    acq_free_o : out STD_LOGIC;
    acq_half_o : out STD_LOGIC;
    acq_max_o : out STD_LOGIC;
    acq_zero_o : out STD_LOGIC;
    async_o : out STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dsp_bypass_o : out STD_LOGIC;
    dsp_start_o : out STD_LOGIC;
    en_snoop_o : out STD_LOGIC;
    free_i : out STD_LOGIC_VECTOR ( 15 downto 0 );
    max_i : out STD_LOGIC_VECTOR ( 15 downto 0 );
    resetn_o : out STD_LOGIC;
    sawtri_o : out STD_LOGIC;
    upd_peak_o : out STD_LOGIC;
    upd_valley_o : out STD_LOGIC
  );
end DPWM_SLICE_imp_J8D3HN;

architecture STRUCTURE of DPWM_SLICE_imp_J8D3HN is
  component pwm_controller_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component pwm_controller_xlslice_1_0;
  component pwm_controller_xlslice_0_5 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component pwm_controller_xlslice_0_5;
  component pwm_controller_configmap_pwm_0_0 is
  port (
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
    data_i : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component pwm_controller_configmap_pwm_0_0;
  signal AXIreg_0_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIreg_0_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal configmap_pwm_0_acq_cmp_o : STD_LOGIC;
  signal configmap_pwm_0_acq_free_o : STD_LOGIC;
  signal configmap_pwm_0_acq_half_o : STD_LOGIC;
  signal configmap_pwm_0_acq_max_o : STD_LOGIC;
  signal configmap_pwm_0_acq_zero_o : STD_LOGIC;
  signal configmap_pwm_0_async_o : STD_LOGIC;
  signal configmap_pwm_0_dsp_bypass_o : STD_LOGIC;
  signal configmap_pwm_0_dsp_start_o : STD_LOGIC;
  signal configmap_pwm_0_en_snoop_o : STD_LOGIC;
  signal configmap_pwm_0_resetn_o : STD_LOGIC;
  signal configmap_pwm_0_sawtri_o : STD_LOGIC;
  signal configmap_pwm_0_upd_peak_o : STD_LOGIC;
  signal configmap_pwm_0_upd_valley_o : STD_LOGIC;
  signal data_i_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  AXIreg_0_reg1(31 downto 0) <= Din1(31 downto 0);
  AXIreg_0_reg2(31 downto 0) <= Din(31 downto 0);
  acq_cmp_o <= configmap_pwm_0_acq_cmp_o;
  acq_free_o <= configmap_pwm_0_acq_free_o;
  acq_half_o <= configmap_pwm_0_acq_half_o;
  acq_max_o <= configmap_pwm_0_acq_max_o;
  acq_zero_o <= configmap_pwm_0_acq_zero_o;
  async_o <= configmap_pwm_0_async_o;
  data_i_1(31 downto 0) <= data_i(31 downto 0);
  dsp_bypass_o <= configmap_pwm_0_dsp_bypass_o;
  dsp_start_o <= configmap_pwm_0_dsp_start_o;
  en_snoop_o <= configmap_pwm_0_en_snoop_o;
  resetn_o <= configmap_pwm_0_resetn_o;
  sawtri_o <= configmap_pwm_0_sawtri_o;
  upd_peak_o <= configmap_pwm_0_upd_peak_o;
  upd_valley_o <= configmap_pwm_0_upd_valley_o;
configmap_pwm_0: component pwm_controller_configmap_pwm_0_0
     port map (
      acq_cmp_o => configmap_pwm_0_acq_cmp_o,
      acq_free_o => configmap_pwm_0_acq_free_o,
      acq_half_o => configmap_pwm_0_acq_half_o,
      acq_max_o => configmap_pwm_0_acq_max_o,
      acq_zero_o => configmap_pwm_0_acq_zero_o,
      async_o => configmap_pwm_0_async_o,
      data_i(31 downto 0) => data_i_1(31 downto 0),
      dsp_bypass_o => configmap_pwm_0_dsp_bypass_o,
      dsp_start_o => configmap_pwm_0_dsp_start_o,
      en_snoop_o => configmap_pwm_0_en_snoop_o,
      resetn_o => configmap_pwm_0_resetn_o,
      sawtri_o => configmap_pwm_0_sawtri_o,
      upd_peak_o => configmap_pwm_0_upd_peak_o,
      upd_valley_o => configmap_pwm_0_upd_valley_o
    );
xlslice_1: component pwm_controller_xlslice_0_5
     port map (
      Din(31 downto 0) => AXIreg_0_reg1(31 downto 0),
      Dout(15 downto 0) => max_i(15 downto 0)
    );
xlslice_2: component pwm_controller_xlslice_1_0
     port map (
      Din(31 downto 0) => AXIreg_0_reg2(31 downto 0),
      Dout(15 downto 0) => free_i(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DPWM_imp_16A0TOR is
  port (
    acq_o : out STD_LOGIC;
    async_i : in STD_LOGIC;
    clk_i : in STD_LOGIC;
    cmp_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    cmp_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    counter_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    en_cmp_i : in STD_LOGIC;
    en_free_i : in STD_LOGIC;
    en_half_i : in STD_LOGIC;
    en_max_i : in STD_LOGIC;
    en_zero_i : in STD_LOGIC;
    free_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    max_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    over_o : out STD_LOGIC;
    peak_i : in STD_LOGIC;
    pwm_o_0 : out STD_LOGIC;
    resetn_i : in STD_LOGIC;
    sawtri_i : in STD_LOGIC;
    under_o : out STD_LOGIC;
    update_i : out STD_LOGIC;
    updown_o : out STD_LOGIC;
    valley_i : in STD_LOGIC
  );
end DPWM_imp_16A0TOR;

architecture STRUCTURE of DPWM_imp_16A0TOR is
  component pwm_controller_trigger_update_0_0 is
  port (
    update_o : out STD_LOGIC;
    max_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    counter_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    peak_i : in STD_LOGIC;
    valley_i : in STD_LOGIC;
    sawtri_i : in STD_LOGIC
  );
  end component pwm_controller_trigger_update_0_0;
  component pwm_controller_pwm_comparator_0_0 is
  port (
    cmp_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    half_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pwm_o : out STD_LOGIC;
    cmp_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    counter_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    update_i : in STD_LOGIC;
    async_i : in STD_LOGIC;
    clk_i : in STD_LOGIC
  );
  end component pwm_controller_pwm_comparator_0_0;
  component pwm_controller_counter_updown_0_0 is
  port (
    counter_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    updown_o : out STD_LOGIC;
    over_o : out STD_LOGIC;
    under_o : out STD_LOGIC;
    max_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sawtri_i : in STD_LOGIC;
    resetn_i : in STD_LOGIC;
    clk_i : in STD_LOGIC
  );
  end component pwm_controller_counter_updown_0_0;
  component pwm_controller_trigger_acquisition_0_0 is
  port (
    acq_o : out STD_LOGIC;
    free_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    max_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    cmp_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    half_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    counter_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en_free_i : in STD_LOGIC;
    en_max_i : in STD_LOGIC;
    en_cmp_i : in STD_LOGIC;
    en_half_i : in STD_LOGIC;
    en_zero_i : in STD_LOGIC
  );
  end component pwm_controller_trigger_acquisition_0_0;
  signal AXIreg_0_reg2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal async_i_1 : STD_LOGIC;
  signal \^cmp_o\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute DEBUG : string;
  attribute DEBUG of \^cmp_o\ : signal is "true";
  signal configmap_pwm_0_sawtri_o : STD_LOGIC;
  signal \^counter_o\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute DEBUG of \^counter_o\ : signal is "true";
  signal en_cmp_i_1 : STD_LOGIC;
  signal en_free_i_1 : STD_LOGIC;
  signal en_half_i_1 : STD_LOGIC;
  signal en_max_i_1 : STD_LOGIC;
  signal en_zero_i_1 : STD_LOGIC;
  signal half_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal limiter_unsigned_3_data_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute DEBUG of limiter_unsigned_3_data_o : signal is "true";
  signal max_i_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal peak_i_1 : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal pwm_o : STD_LOGIC;
  attribute DEBUG of pwm_o : signal is "true";
  signal resetn_i_1 : STD_LOGIC;
  signal trigger_acquisition_0_acq_o : STD_LOGIC;
  attribute DEBUG of trigger_acquisition_0_acq_o : signal is "true";
  signal trigger_update_0_update_o : STD_LOGIC;
  attribute DEBUG of trigger_update_0_update_o : signal is "true";
  signal valley_i_1 : STD_LOGIC;
begin
  AXIreg_0_reg2(15 downto 0) <= free_i(15 downto 0);
  acq_o <= trigger_acquisition_0_acq_o;
  async_i_1 <= async_i;
  cmp_o(15 downto 0) <= \^cmp_o\(15 downto 0);
  configmap_pwm_0_sawtri_o <= sawtri_i;
  counter_o(15 downto 0) <= \^counter_o\(15 downto 0);
  en_cmp_i_1 <= en_cmp_i;
  en_free_i_1 <= en_free_i;
  en_half_i_1 <= en_half_i;
  en_max_i_1 <= en_max_i;
  en_zero_i_1 <= en_zero_i;
  limiter_unsigned_3_data_o(15 downto 0) <= cmp_i(15 downto 0);
  max_i_1(15 downto 0) <= max_i(15 downto 0);
  peak_i_1 <= peak_i;
  processing_system7_0_FCLK_CLK0 <= clk_i;
  pwm_o_0 <= pwm_o;
  resetn_i_1 <= resetn_i;
  update_i <= trigger_update_0_update_o;
  valley_i_1 <= valley_i;
counter_updown_0: component pwm_controller_counter_updown_0_0
     port map (
      clk_i => processing_system7_0_FCLK_CLK0,
      counter_o(15 downto 0) => \^counter_o\(15 downto 0),
      max_i(15 downto 0) => max_i_1(15 downto 0),
      over_o => over_o,
      resetn_i => resetn_i_1,
      sawtri_i => configmap_pwm_0_sawtri_o,
      under_o => under_o,
      updown_o => updown_o
    );
pwm_comparator_0: component pwm_controller_pwm_comparator_0_0
     port map (
      async_i => async_i_1,
      clk_i => processing_system7_0_FCLK_CLK0,
      cmp_i(15 downto 0) => limiter_unsigned_3_data_o(15 downto 0),
      cmp_o(15 downto 0) => \^cmp_o\(15 downto 0),
      counter_i(15 downto 0) => \^counter_o\(15 downto 0),
      half_o(15 downto 0) => half_o(15 downto 0),
      pwm_o => pwm_o,
      update_i => trigger_update_0_update_o
    );
trigger_acquisition_0: component pwm_controller_trigger_acquisition_0_0
     port map (
      acq_o => trigger_acquisition_0_acq_o,
      cmp_i(15 downto 0) => \^cmp_o\(15 downto 0),
      counter_i(15 downto 0) => \^counter_o\(15 downto 0),
      en_cmp_i => en_cmp_i_1,
      en_free_i => en_free_i_1,
      en_half_i => en_half_i_1,
      en_max_i => en_max_i_1,
      en_zero_i => en_zero_i_1,
      free_i(15 downto 0) => AXIreg_0_reg2(15 downto 0),
      half_i(15 downto 0) => half_o(15 downto 0),
      max_i(15 downto 0) => max_i_1(15 downto 0)
    );
trigger_update_0: component pwm_controller_trigger_update_0_0
     port map (
      counter_i(15 downto 0) => \^counter_o\(15 downto 0),
      max_i(15 downto 0) => max_i_1(15 downto 0),
      peak_i => peak_i_1,
      sawtri_i => configmap_pwm_0_sawtri_o,
      update_o => trigger_update_0_update_o,
      valley_i => valley_i_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DSP_SLICEPAD_imp_5QZW03 is
  port (
    conf_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ki_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ki_slicepad : out STD_LOGIC_VECTOR ( 16 downto 0 );
    kp_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    kp_slicepad : out STD_LOGIC_VECTOR ( 16 downto 0 );
    ref_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ref_slice : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ref_slicepad : out STD_LOGIC_VECTOR ( 16 downto 0 );
    shift_slice : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end DSP_SLICEPAD_imp_5QZW03;

architecture STRUCTURE of DSP_SLICEPAD_imp_5QZW03 is
  component pwm_controller_xlslice_0_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component pwm_controller_xlslice_0_2;
  component pwm_controller_zeropad_left_1_0 is
  port (
    data_o : out STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component pwm_controller_zeropad_left_1_0;
  component pwm_controller_zeropad_left_0_2 is
  port (
    data_o : out STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component pwm_controller_zeropad_left_0_2;
  component pwm_controller_xlslice_0_4 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component pwm_controller_xlslice_0_4;
  component pwm_controller_xlslice_0_7 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component pwm_controller_xlslice_0_7;
  component pwm_controller_zeropad_left_0_3 is
  port (
    data_o : out STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component pwm_controller_zeropad_left_0_3;
  component pwm_controller_xlslice_1_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component pwm_controller_xlslice_1_1;
  signal AXIreg_1_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Din1_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Din_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Din_2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlslice_2_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlslice_3_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zeropad_left_0_data_o : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal zeropad_left_1_data_o : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal zeropad_left_2_data_o : STD_LOGIC_VECTOR ( 16 downto 0 );
begin
  AXIreg_1_reg0(31 downto 0) <= kp_i(31 downto 0);
  Din1_1(31 downto 0) <= conf_i(31 downto 0);
  Din_1(31 downto 0) <= ref_i(31 downto 0);
  Din_2(31 downto 0) <= ki_i(31 downto 0);
  ki_slicepad(16 downto 0) <= zeropad_left_2_data_o(16 downto 0);
  kp_slicepad(16 downto 0) <= zeropad_left_1_data_o(16 downto 0);
  ref_slice(15 downto 0) <= xlslice_3_Dout(15 downto 0);
  ref_slicepad(16 downto 0) <= zeropad_left_0_data_o(16 downto 0);
  shift_slice(3 downto 0) <= xlslice_2_Dout(3 downto 0);
xlslice_0: component pwm_controller_xlslice_0_2
     port map (
      Din(31 downto 0) => AXIreg_1_reg0(31 downto 0),
      Dout(15 downto 0) => xlslice_0_Dout(15 downto 0)
    );
xlslice_1: component pwm_controller_xlslice_0_7
     port map (
      Din(31 downto 0) => Din_2(31 downto 0),
      Dout(15 downto 0) => xlslice_1_Dout(15 downto 0)
    );
xlslice_2: component pwm_controller_xlslice_1_1
     port map (
      Din(31 downto 0) => Din1_1(31 downto 0),
      Dout(3 downto 0) => xlslice_2_Dout(3 downto 0)
    );
xlslice_3: component pwm_controller_xlslice_0_4
     port map (
      Din(31 downto 0) => Din_1(31 downto 0),
      Dout(15 downto 0) => xlslice_3_Dout(15 downto 0)
    );
zeropad_left_0: component pwm_controller_zeropad_left_0_2
     port map (
      data_i(15 downto 0) => xlslice_3_Dout(15 downto 0),
      data_o(16 downto 0) => zeropad_left_0_data_o(16 downto 0)
    );
zeropad_left_1: component pwm_controller_zeropad_left_1_0
     port map (
      data_i(15 downto 0) => xlslice_0_Dout(15 downto 0),
      data_o(16 downto 0) => zeropad_left_1_data_o(16 downto 0)
    );
zeropad_left_2: component pwm_controller_zeropad_left_0_3
     port map (
      data_i(15 downto 0) => xlslice_1_Dout(15 downto 0),
      data_o(16 downto 0) => zeropad_left_2_data_o(16 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DSP_imp_MU6FP7 is
  port (
    add_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    clk_i : in STD_LOGIC;
    direct_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dsp_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ki_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    kp_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    ref_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sel_i : in STD_LOGIC;
    shift_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    snh_i : in STD_LOGIC;
    start_i : in STD_LOGIC
  );
end DSP_imp_MU6FP7;

architecture STRUCTURE of DSP_imp_MU6FP7 is
  component pwm_controller_limiter_signed_0_0 is
  port (
    data_i : in STD_LOGIC_VECTOR ( 34 downto 0 );
    data_o : out STD_LOGIC_VECTOR ( 34 downto 0 )
  );
  end component pwm_controller_limiter_signed_0_0;
  component pwm_controller_shiftprog_signed_0_0 is
  port (
    data_i : in STD_LOGIC_VECTOR ( 34 downto 0 );
    shift_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_o : out STD_LOGIC_VECTOR ( 34 downto 0 )
  );
  end component pwm_controller_shiftprog_signed_0_0;
  component pwm_controller_xlslice_0_6 is
  port (
    Din : in STD_LOGIC_VECTOR ( 34 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component pwm_controller_xlslice_0_6;
  component pwm_controller_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component pwm_controller_xlconstant_0_0;
  component pwm_controller_mux2_0_1 is
  port (
    sel_i : in STD_LOGIC;
    data1_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data2_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_o : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component pwm_controller_mux2_0_1;
  component pwm_controller_registerFDSE_0_0 is
  port (
    data_o : out STD_LOGIC_VECTOR ( 34 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 34 downto 0 );
    en_i : in STD_LOGIC;
    clk_i : in STD_LOGIC
  );
  end component pwm_controller_registerFDSE_0_0;
  component pwm_controller_DSP_stdpipe_0_0 is
  port (
    acc_o : out STD_LOGIC_VECTOR ( 34 downto 0 );
    coef_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    ref_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    add_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    alu_i : in STD_LOGIC_VECTOR ( 34 downto 0 );
    start_i : in STD_LOGIC;
    sub_i : in STD_LOGIC;
    clk_i : in STD_LOGIC
  );
  end component pwm_controller_DSP_stdpipe_0_0;
  component pwm_controller_DSP_stdpipe_0_1 is
  port (
    acc_o : out STD_LOGIC_VECTOR ( 34 downto 0 );
    coef_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    ref_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    add_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    alu_i : in STD_LOGIC_VECTOR ( 34 downto 0 );
    start_i : in STD_LOGIC;
    sub_i : in STD_LOGIC;
    clk_i : in STD_LOGIC
  );
  end component pwm_controller_DSP_stdpipe_0_1;
  signal ADC_SLICEPAD_data_o : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal DSP_SLICEPAD_coef_slicepad : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal DSP_SLICEPAD_data_o : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal DSP_stdpipe_0_acc_o : STD_LOGIC_VECTOR ( 34 downto 0 );
  signal DSP_stdpipe_1_acc_o : STD_LOGIC_VECTOR ( 34 downto 0 );
  signal coef_i_1 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal configmap_pwm_0_dsp_start_o : STD_LOGIC;
  signal data1_i_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal en_i_1 : STD_LOGIC;
  attribute DEBUG : string;
  attribute DEBUG of en_i_1 : signal is "true";
  signal limiter_signed_0_data_o : STD_LOGIC_VECTOR ( 34 downto 0 );
  signal mux2_0_data_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute DEBUG of mux2_0_data_o : signal is "true";
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal registerFDSE_0_data_o : STD_LOGIC_VECTOR ( 34 downto 0 );
  signal sel_i_1 : STD_LOGIC;
  signal shift_i_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal shiftprog_signed_0_data_o : STD_LOGIC_VECTOR ( 34 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  ADC_SLICEPAD_data_o(16 downto 0) <= add_i(16 downto 0);
  DSP_SLICEPAD_coef_slicepad(16 downto 0) <= kp_i(16 downto 0);
  DSP_SLICEPAD_data_o(16 downto 0) <= ref_i(16 downto 0);
  coef_i_1(16 downto 0) <= ki_i(16 downto 0);
  configmap_pwm_0_dsp_start_o <= start_i;
  data1_i_1(15 downto 0) <= direct_i(15 downto 0);
  dsp_o(15 downto 0) <= mux2_0_data_o(15 downto 0);
  en_i_1 <= snh_i;
  processing_system7_0_FCLK_CLK0 <= clk_i;
  sel_i_1 <= sel_i;
  shift_i_1(3 downto 0) <= shift_i(3 downto 0);
DSP_stdpipe_0: component pwm_controller_DSP_stdpipe_0_0
     port map (
      acc_o(34 downto 0) => DSP_stdpipe_0_acc_o(34 downto 0),
      add_i(16 downto 0) => ADC_SLICEPAD_data_o(16 downto 0),
      alu_i(34 downto 0) => DSP_stdpipe_1_acc_o(34 downto 0),
      clk_i => processing_system7_0_FCLK_CLK0,
      coef_i(16 downto 0) => DSP_SLICEPAD_coef_slicepad(16 downto 0),
      ref_i(16 downto 0) => DSP_SLICEPAD_data_o(16 downto 0),
      start_i => configmap_pwm_0_dsp_start_o,
      sub_i => xlconstant_0_dout(0)
    );
DSP_stdpipe_1: component pwm_controller_DSP_stdpipe_0_1
     port map (
      acc_o(34 downto 0) => DSP_stdpipe_1_acc_o(34 downto 0),
      add_i(16 downto 0) => ADC_SLICEPAD_data_o(16 downto 0),
      alu_i(34 downto 0) => registerFDSE_0_data_o(34 downto 0),
      clk_i => processing_system7_0_FCLK_CLK0,
      coef_i(16 downto 0) => coef_i_1(16 downto 0),
      ref_i(16 downto 0) => DSP_SLICEPAD_data_o(16 downto 0),
      start_i => configmap_pwm_0_dsp_start_o,
      sub_i => xlconstant_0_dout(0)
    );
limiter_signed_0: component pwm_controller_limiter_signed_0_0
     port map (
      data_i(34 downto 0) => shiftprog_signed_0_data_o(34 downto 0),
      data_o(34 downto 0) => limiter_signed_0_data_o(34 downto 0)
    );
mux2_0: component pwm_controller_mux2_0_1
     port map (
      data1_i(15 downto 0) => data1_i_1(15 downto 0),
      data2_i(15 downto 0) => xlslice_0_Dout(15 downto 0),
      data_o(15 downto 0) => mux2_0_data_o(15 downto 0),
      sel_i => sel_i_1
    );
registerFDSE_0: component pwm_controller_registerFDSE_0_0
     port map (
      clk_i => processing_system7_0_FCLK_CLK0,
      data_i(34 downto 0) => DSP_stdpipe_1_acc_o(34 downto 0),
      data_o(34 downto 0) => registerFDSE_0_data_o(34 downto 0),
      en_i => en_i_1
    );
shiftprog_signed_0: component pwm_controller_shiftprog_signed_0_0
     port map (
      data_i(34 downto 0) => DSP_stdpipe_0_acc_o(34 downto 0),
      data_o(34 downto 0) => shiftprog_signed_0_data_o(34 downto 0),
      shift_i(3 downto 0) => shift_i_1(3 downto 0)
    );
xlconstant_0: component pwm_controller_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlslice_0: component pwm_controller_xlslice_0_6
     port map (
      Din(34 downto 0) => limiter_signed_0_data_o(34 downto 0),
      Dout(15 downto 0) => xlslice_0_Dout(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_E8DPUN is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_E8DPUN;

architecture STRUCTURE of m00_couplers_imp_E8DPUN is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m00_couplers_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m00_couplers_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m00_couplers_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m00_couplers_to_m00_couplers_AWVALID;
  M_AXI_bready <= m00_couplers_to_m00_couplers_BREADY;
  M_AXI_rready <= m00_couplers_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m00_couplers_to_m00_couplers_WVALID;
  S_AXI_arready <= m00_couplers_to_m00_couplers_ARREADY;
  S_AXI_awready <= m00_couplers_to_m00_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_m00_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_m00_couplers_RVALID;
  S_AXI_wready <= m00_couplers_to_m00_couplers_WREADY;
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_m00_couplers_ARREADY <= M_AXI_arready;
  m00_couplers_to_m00_couplers_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_m00_couplers_AWREADY <= M_AXI_awready;
  m00_couplers_to_m00_couplers_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_m00_couplers_BREADY <= S_AXI_bready;
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID <= M_AXI_bvalid;
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY <= S_AXI_rready;
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID <= M_AXI_rvalid;
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_m00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_1DIB4FS is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m01_couplers_imp_1DIB4FS;

architecture STRUCTURE of m01_couplers_imp_1DIB4FS is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m01_couplers_to_m01_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m01_couplers_to_m01_couplers_AWVALID(0);
  M_AXI_bready(0) <= m01_couplers_to_m01_couplers_BREADY(0);
  M_AXI_rready(0) <= m01_couplers_to_m01_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m01_couplers_to_m01_couplers_WVALID(0);
  S_AXI_arready(0) <= m01_couplers_to_m01_couplers_ARREADY(0);
  S_AXI_awready(0) <= m01_couplers_to_m01_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m01_couplers_to_m01_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m01_couplers_to_m01_couplers_RVALID(0);
  S_AXI_wready(0) <= m01_couplers_to_m01_couplers_WREADY(0);
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARREADY(0) <= M_AXI_arready(0);
  m01_couplers_to_m01_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWREADY(0) <= M_AXI_awready(0);
  m01_couplers_to_m01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m01_couplers_to_m01_couplers_BREADY(0) <= S_AXI_bready(0);
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY(0) <= S_AXI_rready(0);
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY(0) <= M_AXI_wready(0);
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_1T1QCR4 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m02_couplers_imp_1T1QCR4;

architecture STRUCTURE of m02_couplers_imp_1T1QCR4 is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m02_couplers_to_m02_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m02_couplers_to_m02_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m02_couplers_to_m02_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m02_couplers_to_m02_couplers_AWVALID;
  M_AXI_bready <= m02_couplers_to_m02_couplers_BREADY;
  M_AXI_rready <= m02_couplers_to_m02_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m02_couplers_to_m02_couplers_WVALID;
  S_AXI_arready <= m02_couplers_to_m02_couplers_ARREADY;
  S_AXI_awready <= m02_couplers_to_m02_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m02_couplers_to_m02_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m02_couplers_to_m02_couplers_RVALID;
  S_AXI_wready <= m02_couplers_to_m02_couplers_WREADY;
  m02_couplers_to_m02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m02_couplers_to_m02_couplers_ARREADY <= M_AXI_arready;
  m02_couplers_to_m02_couplers_ARVALID <= S_AXI_arvalid;
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m02_couplers_to_m02_couplers_AWREADY <= M_AXI_awready;
  m02_couplers_to_m02_couplers_AWVALID <= S_AXI_awvalid;
  m02_couplers_to_m02_couplers_BREADY <= S_AXI_bready;
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID <= M_AXI_bvalid;
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY <= S_AXI_rready;
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID <= M_AXI_rvalid;
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY <= M_AXI_wready;
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1VOK962 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_1VOK962;

architecture STRUCTURE of s00_couplers_imp_1VOK962 is
  component pwm_controller_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pwm_controller_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= s00_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= s00_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  s00_couplers_to_auto_pc_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s00_couplers_to_auto_pc_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  s00_couplers_to_auto_pc_AWLEN(3 downto 0) <= S_AXI_awlen(3 downto 0);
  s00_couplers_to_auto_pc_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WID(11 downto 0) <= S_AXI_wid(11 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component pwm_controller_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => s00_couplers_to_auto_pc_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s00_couplers_to_auto_pc_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => s00_couplers_to_auto_pc_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s00_couplers_to_auto_pc_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => s00_couplers_to_auto_pc_WID(11 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_VUMWY5 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s01_couplers_imp_VUMWY5;

architecture STRUCTURE of s01_couplers_imp_VUMWY5 is
  component pwm_controller_auto_pc_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pwm_controller_auto_pc_1;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s01_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s01_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s01_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s01_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s01_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s01_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s01_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s01_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s01_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s01_couplers_WVALID : STD_LOGIC;
  signal s01_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s01_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s01_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s01_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s01_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s01_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s01_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s01_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s01_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s01_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s01_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s01_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s01_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s01_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_auto_pc_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s01_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s01_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s01_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s01_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s01_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s01_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s01_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s01_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s01_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s01_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s01_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s01_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= s01_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= s01_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s01_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s01_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= s01_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= s01_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s01_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s01_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s01_couplers_to_auto_pc_WREADY;
  auto_pc_to_s01_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s01_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s01_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s01_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s01_couplers_WREADY <= M_AXI_wready;
  s01_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s01_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s01_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s01_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  s01_couplers_to_auto_pc_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s01_couplers_to_auto_pc_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s01_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s01_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s01_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s01_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s01_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s01_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s01_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s01_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  s01_couplers_to_auto_pc_AWLEN(3 downto 0) <= S_AXI_awlen(3 downto 0);
  s01_couplers_to_auto_pc_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s01_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s01_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s01_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s01_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s01_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s01_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s01_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s01_couplers_to_auto_pc_WID(11 downto 0) <= S_AXI_wid(11 downto 0);
  s01_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s01_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s01_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component pwm_controller_auto_pc_1
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s01_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s01_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_s01_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s01_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s01_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s01_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_s01_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s01_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s01_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s01_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s01_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s01_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s01_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s01_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s01_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s01_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s01_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s01_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s01_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s01_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s01_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s01_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s01_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => s01_couplers_to_auto_pc_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s01_couplers_to_auto_pc_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s01_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s01_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s01_couplers_to_auto_pc_ARREADY,
      s_axi_arsize(2 downto 0) => s01_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s01_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s01_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s01_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s01_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s01_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => s01_couplers_to_auto_pc_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s01_couplers_to_auto_pc_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s01_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s01_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s01_couplers_to_auto_pc_AWREADY,
      s_axi_awsize(2 downto 0) => s01_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s01_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => s01_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => s01_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s01_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s01_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s01_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s01_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => s01_couplers_to_auto_pc_RLAST,
      s_axi_rready => s01_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s01_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s01_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s01_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => s01_couplers_to_auto_pc_WID(11 downto 0),
      s_axi_wlast => s01_couplers_to_auto_pc_WLAST,
      s_axi_wready => s01_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s01_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s01_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_ps7_0_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S01_AXI_bready : in STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rvalid : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC
  );
end pwm_controller_ps7_0_axi_periph_0;

architecture STRUCTURE of pwm_controller_ps7_0_axi_periph_0 is
  component pwm_controller_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component pwm_controller_xbar_0;
  component pwm_controller_s00_mmu_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pwm_controller_s00_mmu_0;
  component pwm_controller_s01_mmu_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pwm_controller_s01_mmu_0;
  signal S00_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_1_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_ARREADY : STD_LOGIC;
  signal S00_AXI_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_ARVALID : STD_LOGIC;
  signal S00_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_1_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWREADY : STD_LOGIC;
  signal S00_AXI_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWVALID : STD_LOGIC;
  signal S00_AXI_1_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_1_BREADY : STD_LOGIC;
  signal S00_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_BVALID : STD_LOGIC;
  signal S00_AXI_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_1_RLAST : STD_LOGIC;
  signal S00_AXI_1_RREADY : STD_LOGIC;
  signal S00_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_RVALID : STD_LOGIC;
  signal S00_AXI_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_1_WLAST : STD_LOGIC;
  signal S00_AXI_1_WREADY : STD_LOGIC;
  signal S00_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_WVALID : STD_LOGIC;
  signal S01_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S01_AXI_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S01_AXI_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S01_AXI_1_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S01_AXI_1_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S01_AXI_1_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S01_AXI_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S01_AXI_1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S01_AXI_1_ARREADY : STD_LOGIC;
  signal S01_AXI_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S01_AXI_1_ARVALID : STD_LOGIC;
  signal S01_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S01_AXI_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S01_AXI_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S01_AXI_1_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S01_AXI_1_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S01_AXI_1_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S01_AXI_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S01_AXI_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S01_AXI_1_AWREADY : STD_LOGIC;
  signal S01_AXI_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S01_AXI_1_AWVALID : STD_LOGIC;
  signal S01_AXI_1_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S01_AXI_1_BREADY : STD_LOGIC;
  signal S01_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S01_AXI_1_BVALID : STD_LOGIC;
  signal S01_AXI_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S01_AXI_1_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S01_AXI_1_RLAST : STD_LOGIC;
  signal S01_AXI_1_RREADY : STD_LOGIC;
  signal S01_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S01_AXI_1_RVALID : STD_LOGIC;
  signal S01_AXI_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S01_AXI_1_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S01_AXI_1_WLAST : STD_LOGIC;
  signal S01_AXI_1_WREADY : STD_LOGIC;
  signal S01_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S01_AXI_1_WVALID : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_ACLK_net : STD_LOGIC;
  signal ps7_0_axi_periph_ARESETN_net : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s00_mmu_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_mmu_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_mmu_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_mmu_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_mmu_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_mmu_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_ARREADY : STD_LOGIC;
  signal s00_mmu_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_mmu_M_AXI_ARVALID : STD_LOGIC;
  signal s00_mmu_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_mmu_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_mmu_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_mmu_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_mmu_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_mmu_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_AWREADY : STD_LOGIC;
  signal s00_mmu_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_mmu_M_AXI_AWVALID : STD_LOGIC;
  signal s00_mmu_M_AXI_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_mmu_M_AXI_BREADY : STD_LOGIC;
  signal s00_mmu_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_mmu_M_AXI_BVALID : STD_LOGIC;
  signal s00_mmu_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_mmu_M_AXI_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_mmu_M_AXI_RLAST : STD_LOGIC;
  signal s00_mmu_M_AXI_RREADY : STD_LOGIC;
  signal s00_mmu_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_mmu_M_AXI_RVALID : STD_LOGIC;
  signal s00_mmu_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_mmu_M_AXI_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_mmu_M_AXI_WLAST : STD_LOGIC;
  signal s00_mmu_M_AXI_WREADY : STD_LOGIC;
  signal s00_mmu_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_WVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal s01_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s01_mmu_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_mmu_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_mmu_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_mmu_M_AXI_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s01_mmu_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_mmu_M_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_mmu_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_mmu_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_mmu_M_AXI_ARREADY : STD_LOGIC;
  signal s01_mmu_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_mmu_M_AXI_ARVALID : STD_LOGIC;
  signal s01_mmu_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_mmu_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_mmu_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_mmu_M_AXI_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s01_mmu_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_mmu_M_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_mmu_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_mmu_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_mmu_M_AXI_AWREADY : STD_LOGIC;
  signal s01_mmu_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_mmu_M_AXI_AWVALID : STD_LOGIC;
  signal s01_mmu_M_AXI_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s01_mmu_M_AXI_BREADY : STD_LOGIC;
  signal s01_mmu_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_mmu_M_AXI_BVALID : STD_LOGIC;
  signal s01_mmu_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_mmu_M_AXI_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s01_mmu_M_AXI_RLAST : STD_LOGIC;
  signal s01_mmu_M_AXI_RREADY : STD_LOGIC;
  signal s01_mmu_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_mmu_M_AXI_RVALID : STD_LOGIC;
  signal s01_mmu_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_mmu_M_AXI_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s01_mmu_M_AXI_WLAST : STD_LOGIC;
  signal s01_mmu_M_AXI_WREADY : STD_LOGIC;
  signal s01_mmu_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_mmu_M_AXI_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 3 );
begin
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_ps7_0_axi_periph_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_ps7_0_axi_periph_AWVALID;
  M00_AXI_bready <= m00_couplers_to_ps7_0_axi_periph_BREADY;
  M00_AXI_rready <= m00_couplers_to_ps7_0_axi_periph_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_ps7_0_axi_periph_WVALID;
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M01_AXI_arvalid(0) <= m01_couplers_to_ps7_0_axi_periph_ARVALID(0);
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M01_AXI_awvalid(0) <= m01_couplers_to_ps7_0_axi_periph_AWVALID(0);
  M01_AXI_bready(0) <= m01_couplers_to_ps7_0_axi_periph_BREADY(0);
  M01_AXI_rready(0) <= m01_couplers_to_ps7_0_axi_periph_RREADY(0);
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M01_AXI_wvalid(0) <= m01_couplers_to_ps7_0_axi_periph_WVALID(0);
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M02_AXI_arprot(2 downto 0) <= m02_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0);
  M02_AXI_arvalid <= m02_couplers_to_ps7_0_axi_periph_ARVALID;
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M02_AXI_awprot(2 downto 0) <= m02_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0);
  M02_AXI_awvalid <= m02_couplers_to_ps7_0_axi_periph_AWVALID;
  M02_AXI_bready <= m02_couplers_to_ps7_0_axi_periph_BREADY;
  M02_AXI_rready <= m02_couplers_to_ps7_0_axi_periph_RREADY;
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M02_AXI_wvalid <= m02_couplers_to_ps7_0_axi_periph_WVALID;
  S00_AXI_1_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  S00_AXI_1_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  S00_AXI_1_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  S00_AXI_1_ARID(11 downto 0) <= S00_AXI_arid(11 downto 0);
  S00_AXI_1_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  S00_AXI_1_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  S00_AXI_1_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  S00_AXI_1_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  S00_AXI_1_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  S00_AXI_1_ARVALID <= S00_AXI_arvalid;
  S00_AXI_1_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  S00_AXI_1_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  S00_AXI_1_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  S00_AXI_1_AWID(11 downto 0) <= S00_AXI_awid(11 downto 0);
  S00_AXI_1_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  S00_AXI_1_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  S00_AXI_1_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  S00_AXI_1_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  S00_AXI_1_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  S00_AXI_1_AWVALID <= S00_AXI_awvalid;
  S00_AXI_1_BREADY <= S00_AXI_bready;
  S00_AXI_1_RREADY <= S00_AXI_rready;
  S00_AXI_1_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  S00_AXI_1_WID(11 downto 0) <= S00_AXI_wid(11 downto 0);
  S00_AXI_1_WLAST <= S00_AXI_wlast;
  S00_AXI_1_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  S00_AXI_1_WVALID <= S00_AXI_wvalid;
  S00_AXI_arready <= S00_AXI_1_ARREADY;
  S00_AXI_awready <= S00_AXI_1_AWREADY;
  S00_AXI_bid(11 downto 0) <= S00_AXI_1_BID(11 downto 0);
  S00_AXI_bresp(1 downto 0) <= S00_AXI_1_BRESP(1 downto 0);
  S00_AXI_bvalid <= S00_AXI_1_BVALID;
  S00_AXI_rdata(31 downto 0) <= S00_AXI_1_RDATA(31 downto 0);
  S00_AXI_rid(11 downto 0) <= S00_AXI_1_RID(11 downto 0);
  S00_AXI_rlast <= S00_AXI_1_RLAST;
  S00_AXI_rresp(1 downto 0) <= S00_AXI_1_RRESP(1 downto 0);
  S00_AXI_rvalid <= S00_AXI_1_RVALID;
  S00_AXI_wready <= S00_AXI_1_WREADY;
  S01_AXI_1_ARADDR(31 downto 0) <= S01_AXI_araddr(31 downto 0);
  S01_AXI_1_ARBURST(1 downto 0) <= S01_AXI_arburst(1 downto 0);
  S01_AXI_1_ARCACHE(3 downto 0) <= S01_AXI_arcache(3 downto 0);
  S01_AXI_1_ARID(11 downto 0) <= S01_AXI_arid(11 downto 0);
  S01_AXI_1_ARLEN(3 downto 0) <= S01_AXI_arlen(3 downto 0);
  S01_AXI_1_ARLOCK(1 downto 0) <= S01_AXI_arlock(1 downto 0);
  S01_AXI_1_ARPROT(2 downto 0) <= S01_AXI_arprot(2 downto 0);
  S01_AXI_1_ARQOS(3 downto 0) <= S01_AXI_arqos(3 downto 0);
  S01_AXI_1_ARSIZE(2 downto 0) <= S01_AXI_arsize(2 downto 0);
  S01_AXI_1_ARVALID <= S01_AXI_arvalid;
  S01_AXI_1_AWADDR(31 downto 0) <= S01_AXI_awaddr(31 downto 0);
  S01_AXI_1_AWBURST(1 downto 0) <= S01_AXI_awburst(1 downto 0);
  S01_AXI_1_AWCACHE(3 downto 0) <= S01_AXI_awcache(3 downto 0);
  S01_AXI_1_AWID(11 downto 0) <= S01_AXI_awid(11 downto 0);
  S01_AXI_1_AWLEN(3 downto 0) <= S01_AXI_awlen(3 downto 0);
  S01_AXI_1_AWLOCK(1 downto 0) <= S01_AXI_awlock(1 downto 0);
  S01_AXI_1_AWPROT(2 downto 0) <= S01_AXI_awprot(2 downto 0);
  S01_AXI_1_AWQOS(3 downto 0) <= S01_AXI_awqos(3 downto 0);
  S01_AXI_1_AWSIZE(2 downto 0) <= S01_AXI_awsize(2 downto 0);
  S01_AXI_1_AWVALID <= S01_AXI_awvalid;
  S01_AXI_1_BREADY <= S01_AXI_bready;
  S01_AXI_1_RREADY <= S01_AXI_rready;
  S01_AXI_1_WDATA(31 downto 0) <= S01_AXI_wdata(31 downto 0);
  S01_AXI_1_WID(11 downto 0) <= S01_AXI_wid(11 downto 0);
  S01_AXI_1_WLAST <= S01_AXI_wlast;
  S01_AXI_1_WSTRB(3 downto 0) <= S01_AXI_wstrb(3 downto 0);
  S01_AXI_1_WVALID <= S01_AXI_wvalid;
  S01_AXI_arready <= S01_AXI_1_ARREADY;
  S01_AXI_awready <= S01_AXI_1_AWREADY;
  S01_AXI_bid(11 downto 0) <= S01_AXI_1_BID(11 downto 0);
  S01_AXI_bresp(1 downto 0) <= S01_AXI_1_BRESP(1 downto 0);
  S01_AXI_bvalid <= S01_AXI_1_BVALID;
  S01_AXI_rdata(31 downto 0) <= S01_AXI_1_RDATA(31 downto 0);
  S01_AXI_rid(11 downto 0) <= S01_AXI_1_RID(11 downto 0);
  S01_AXI_rlast <= S01_AXI_1_RLAST;
  S01_AXI_rresp(1 downto 0) <= S01_AXI_1_RRESP(1 downto 0);
  S01_AXI_rvalid <= S01_AXI_1_RVALID;
  S01_AXI_wready <= S01_AXI_1_WREADY;
  m00_couplers_to_ps7_0_axi_periph_ARREADY <= M00_AXI_arready;
  m00_couplers_to_ps7_0_axi_periph_AWREADY <= M00_AXI_awready;
  m00_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_ps7_0_axi_periph_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_ps7_0_axi_periph_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_ps7_0_axi_periph_WREADY <= M00_AXI_wready;
  m01_couplers_to_ps7_0_axi_periph_ARREADY(0) <= M01_AXI_arready(0);
  m01_couplers_to_ps7_0_axi_periph_AWREADY(0) <= M01_AXI_awready(0);
  m01_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_ps7_0_axi_periph_BVALID(0) <= M01_AXI_bvalid(0);
  m01_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_ps7_0_axi_periph_RVALID(0) <= M01_AXI_rvalid(0);
  m01_couplers_to_ps7_0_axi_periph_WREADY(0) <= M01_AXI_wready(0);
  m02_couplers_to_ps7_0_axi_periph_ARREADY <= M02_AXI_arready;
  m02_couplers_to_ps7_0_axi_periph_AWREADY <= M02_AXI_awready;
  m02_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_ps7_0_axi_periph_BVALID <= M02_AXI_bvalid;
  m02_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_ps7_0_axi_periph_RVALID <= M02_AXI_rvalid;
  m02_couplers_to_ps7_0_axi_periph_WREADY <= M02_AXI_wready;
  ps7_0_axi_periph_ACLK_net <= ACLK;
  ps7_0_axi_periph_ARESETN_net <= ARESETN;
m00_couplers: entity work.m00_couplers_imp_E8DPUN
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m00_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m00_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m00_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m00_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m00_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m00_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m00_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m00_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_1DIB4FS
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m01_couplers_to_ps7_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m01_couplers_to_ps7_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m01_couplers_to_ps7_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m01_couplers_to_ps7_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m01_couplers_to_ps7_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m01_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m01_couplers_to_ps7_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m01_couplers_to_ps7_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m01_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m01_couplers_to_ps7_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m01_couplers_to_ps7_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m01_couplers_to_ps7_0_axi_periph_WVALID(0),
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arready(0) => xbar_to_m01_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awready(0) => xbar_to_m01_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready(0) => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m01_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m01_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready(0) => xbar_to_m01_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid(0) => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_1T1QCR4
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m02_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m02_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m02_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m02_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m02_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m02_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m02_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m02_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m02_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m02_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m02_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m02_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m02_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m02_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arprot(2 downto 0) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      S_AXI_arready => xbar_to_m02_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awprot(2 downto 0) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      S_AXI_awready => xbar_to_m02_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m02_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready => xbar_to_m02_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid => xbar_to_m02_couplers_WVALID(2)
    );
s00_couplers: entity work.s00_couplers_imp_1VOK962
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => s00_mmu_M_AXI_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => s00_mmu_M_AXI_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => s00_mmu_M_AXI_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => s00_mmu_M_AXI_ARID(11 downto 0),
      S_AXI_arlen(3 downto 0) => s00_mmu_M_AXI_ARLEN(3 downto 0),
      S_AXI_arlock(1 downto 0) => s00_mmu_M_AXI_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => s00_mmu_M_AXI_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => s00_mmu_M_AXI_ARQOS(3 downto 0),
      S_AXI_arready => s00_mmu_M_AXI_ARREADY,
      S_AXI_arsize(2 downto 0) => s00_mmu_M_AXI_ARSIZE(2 downto 0),
      S_AXI_arvalid => s00_mmu_M_AXI_ARVALID,
      S_AXI_awaddr(31 downto 0) => s00_mmu_M_AXI_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => s00_mmu_M_AXI_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => s00_mmu_M_AXI_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => s00_mmu_M_AXI_AWID(11 downto 0),
      S_AXI_awlen(3 downto 0) => s00_mmu_M_AXI_AWLEN(3 downto 0),
      S_AXI_awlock(1 downto 0) => s00_mmu_M_AXI_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => s00_mmu_M_AXI_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => s00_mmu_M_AXI_AWQOS(3 downto 0),
      S_AXI_awready => s00_mmu_M_AXI_AWREADY,
      S_AXI_awsize(2 downto 0) => s00_mmu_M_AXI_AWSIZE(2 downto 0),
      S_AXI_awvalid => s00_mmu_M_AXI_AWVALID,
      S_AXI_bid(11 downto 0) => s00_mmu_M_AXI_BID(11 downto 0),
      S_AXI_bready => s00_mmu_M_AXI_BREADY,
      S_AXI_bresp(1 downto 0) => s00_mmu_M_AXI_BRESP(1 downto 0),
      S_AXI_bvalid => s00_mmu_M_AXI_BVALID,
      S_AXI_rdata(31 downto 0) => s00_mmu_M_AXI_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => s00_mmu_M_AXI_RID(11 downto 0),
      S_AXI_rlast => s00_mmu_M_AXI_RLAST,
      S_AXI_rready => s00_mmu_M_AXI_RREADY,
      S_AXI_rresp(1 downto 0) => s00_mmu_M_AXI_RRESP(1 downto 0),
      S_AXI_rvalid => s00_mmu_M_AXI_RVALID,
      S_AXI_wdata(31 downto 0) => s00_mmu_M_AXI_WDATA(31 downto 0),
      S_AXI_wid(11 downto 0) => s00_mmu_M_AXI_WID(11 downto 0),
      S_AXI_wlast => s00_mmu_M_AXI_WLAST,
      S_AXI_wready => s00_mmu_M_AXI_WREADY,
      S_AXI_wstrb(3 downto 0) => s00_mmu_M_AXI_WSTRB(3 downto 0),
      S_AXI_wvalid => s00_mmu_M_AXI_WVALID
    );
s00_mmu: component pwm_controller_s00_mmu_0
     port map (
      aclk => ps7_0_axi_periph_ACLK_net,
      aresetn => ps7_0_axi_periph_ARESETN_net,
      m_axi_araddr(31 downto 0) => s00_mmu_M_AXI_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => s00_mmu_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s00_mmu_M_AXI_ARCACHE(3 downto 0),
      m_axi_arid(11 downto 0) => s00_mmu_M_AXI_ARID(11 downto 0),
      m_axi_arlen(3 downto 0) => s00_mmu_M_AXI_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => s00_mmu_M_AXI_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => s00_mmu_M_AXI_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s00_mmu_M_AXI_ARQOS(3 downto 0),
      m_axi_arready => s00_mmu_M_AXI_ARREADY,
      m_axi_arsize(2 downto 0) => s00_mmu_M_AXI_ARSIZE(2 downto 0),
      m_axi_arvalid => s00_mmu_M_AXI_ARVALID,
      m_axi_awaddr(31 downto 0) => s00_mmu_M_AXI_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => s00_mmu_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s00_mmu_M_AXI_AWCACHE(3 downto 0),
      m_axi_awid(11 downto 0) => s00_mmu_M_AXI_AWID(11 downto 0),
      m_axi_awlen(3 downto 0) => s00_mmu_M_AXI_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => s00_mmu_M_AXI_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => s00_mmu_M_AXI_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s00_mmu_M_AXI_AWQOS(3 downto 0),
      m_axi_awready => s00_mmu_M_AXI_AWREADY,
      m_axi_awsize(2 downto 0) => s00_mmu_M_AXI_AWSIZE(2 downto 0),
      m_axi_awvalid => s00_mmu_M_AXI_AWVALID,
      m_axi_bid(11 downto 0) => s00_mmu_M_AXI_BID(11 downto 0),
      m_axi_bready => s00_mmu_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => s00_mmu_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => s00_mmu_M_AXI_BVALID,
      m_axi_rdata(31 downto 0) => s00_mmu_M_AXI_RDATA(31 downto 0),
      m_axi_rid(11 downto 0) => s00_mmu_M_AXI_RID(11 downto 0),
      m_axi_rlast => s00_mmu_M_AXI_RLAST,
      m_axi_rready => s00_mmu_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => s00_mmu_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => s00_mmu_M_AXI_RVALID,
      m_axi_wdata(31 downto 0) => s00_mmu_M_AXI_WDATA(31 downto 0),
      m_axi_wid(11 downto 0) => s00_mmu_M_AXI_WID(11 downto 0),
      m_axi_wlast => s00_mmu_M_AXI_WLAST,
      m_axi_wready => s00_mmu_M_AXI_WREADY,
      m_axi_wstrb(3 downto 0) => s00_mmu_M_AXI_WSTRB(3 downto 0),
      m_axi_wvalid => s00_mmu_M_AXI_WVALID,
      s_axi_araddr(31 downto 0) => S00_AXI_1_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => S00_AXI_1_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => S00_AXI_1_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => S00_AXI_1_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => S00_AXI_1_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => S00_AXI_1_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => S00_AXI_1_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => S00_AXI_1_ARQOS(3 downto 0),
      s_axi_arready => S00_AXI_1_ARREADY,
      s_axi_arsize(2 downto 0) => S00_AXI_1_ARSIZE(2 downto 0),
      s_axi_arvalid => S00_AXI_1_ARVALID,
      s_axi_awaddr(31 downto 0) => S00_AXI_1_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => S00_AXI_1_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => S00_AXI_1_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => S00_AXI_1_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => S00_AXI_1_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => S00_AXI_1_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => S00_AXI_1_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => S00_AXI_1_AWQOS(3 downto 0),
      s_axi_awready => S00_AXI_1_AWREADY,
      s_axi_awsize(2 downto 0) => S00_AXI_1_AWSIZE(2 downto 0),
      s_axi_awvalid => S00_AXI_1_AWVALID,
      s_axi_bid(11 downto 0) => S00_AXI_1_BID(11 downto 0),
      s_axi_bready => S00_AXI_1_BREADY,
      s_axi_bresp(1 downto 0) => S00_AXI_1_BRESP(1 downto 0),
      s_axi_bvalid => S00_AXI_1_BVALID,
      s_axi_rdata(31 downto 0) => S00_AXI_1_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => S00_AXI_1_RID(11 downto 0),
      s_axi_rlast => S00_AXI_1_RLAST,
      s_axi_rready => S00_AXI_1_RREADY,
      s_axi_rresp(1 downto 0) => S00_AXI_1_RRESP(1 downto 0),
      s_axi_rvalid => S00_AXI_1_RVALID,
      s_axi_wdata(31 downto 0) => S00_AXI_1_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => S00_AXI_1_WID(11 downto 0),
      s_axi_wlast => S00_AXI_1_WLAST,
      s_axi_wready => S00_AXI_1_WREADY,
      s_axi_wstrb(3 downto 0) => S00_AXI_1_WSTRB(3 downto 0),
      s_axi_wvalid => S00_AXI_1_WVALID
    );
s01_couplers: entity work.s01_couplers_imp_VUMWY5
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s01_couplers_to_xbar_ARREADY(1),
      M_AXI_arvalid => s01_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s01_couplers_to_xbar_AWREADY(1),
      M_AXI_awvalid => s01_couplers_to_xbar_AWVALID,
      M_AXI_bready => s01_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s01_couplers_to_xbar_BRESP(3 downto 2),
      M_AXI_bvalid => s01_couplers_to_xbar_BVALID(1),
      M_AXI_rdata(31 downto 0) => s01_couplers_to_xbar_RDATA(63 downto 32),
      M_AXI_rready => s01_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s01_couplers_to_xbar_RRESP(3 downto 2),
      M_AXI_rvalid => s01_couplers_to_xbar_RVALID(1),
      M_AXI_wdata(31 downto 0) => s01_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s01_couplers_to_xbar_WREADY(1),
      M_AXI_wstrb(3 downto 0) => s01_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s01_couplers_to_xbar_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => s01_mmu_M_AXI_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => s01_mmu_M_AXI_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => s01_mmu_M_AXI_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => s01_mmu_M_AXI_ARID(11 downto 0),
      S_AXI_arlen(3 downto 0) => s01_mmu_M_AXI_ARLEN(3 downto 0),
      S_AXI_arlock(1 downto 0) => s01_mmu_M_AXI_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => s01_mmu_M_AXI_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => s01_mmu_M_AXI_ARQOS(3 downto 0),
      S_AXI_arready => s01_mmu_M_AXI_ARREADY,
      S_AXI_arsize(2 downto 0) => s01_mmu_M_AXI_ARSIZE(2 downto 0),
      S_AXI_arvalid => s01_mmu_M_AXI_ARVALID,
      S_AXI_awaddr(31 downto 0) => s01_mmu_M_AXI_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => s01_mmu_M_AXI_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => s01_mmu_M_AXI_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => s01_mmu_M_AXI_AWID(11 downto 0),
      S_AXI_awlen(3 downto 0) => s01_mmu_M_AXI_AWLEN(3 downto 0),
      S_AXI_awlock(1 downto 0) => s01_mmu_M_AXI_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => s01_mmu_M_AXI_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => s01_mmu_M_AXI_AWQOS(3 downto 0),
      S_AXI_awready => s01_mmu_M_AXI_AWREADY,
      S_AXI_awsize(2 downto 0) => s01_mmu_M_AXI_AWSIZE(2 downto 0),
      S_AXI_awvalid => s01_mmu_M_AXI_AWVALID,
      S_AXI_bid(11 downto 0) => s01_mmu_M_AXI_BID(11 downto 0),
      S_AXI_bready => s01_mmu_M_AXI_BREADY,
      S_AXI_bresp(1 downto 0) => s01_mmu_M_AXI_BRESP(1 downto 0),
      S_AXI_bvalid => s01_mmu_M_AXI_BVALID,
      S_AXI_rdata(31 downto 0) => s01_mmu_M_AXI_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => s01_mmu_M_AXI_RID(11 downto 0),
      S_AXI_rlast => s01_mmu_M_AXI_RLAST,
      S_AXI_rready => s01_mmu_M_AXI_RREADY,
      S_AXI_rresp(1 downto 0) => s01_mmu_M_AXI_RRESP(1 downto 0),
      S_AXI_rvalid => s01_mmu_M_AXI_RVALID,
      S_AXI_wdata(31 downto 0) => s01_mmu_M_AXI_WDATA(31 downto 0),
      S_AXI_wid(11 downto 0) => s01_mmu_M_AXI_WID(11 downto 0),
      S_AXI_wlast => s01_mmu_M_AXI_WLAST,
      S_AXI_wready => s01_mmu_M_AXI_WREADY,
      S_AXI_wstrb(3 downto 0) => s01_mmu_M_AXI_WSTRB(3 downto 0),
      S_AXI_wvalid => s01_mmu_M_AXI_WVALID
    );
s01_mmu: component pwm_controller_s01_mmu_0
     port map (
      aclk => ps7_0_axi_periph_ACLK_net,
      aresetn => ps7_0_axi_periph_ARESETN_net,
      m_axi_araddr(31 downto 0) => s01_mmu_M_AXI_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => s01_mmu_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s01_mmu_M_AXI_ARCACHE(3 downto 0),
      m_axi_arid(11 downto 0) => s01_mmu_M_AXI_ARID(11 downto 0),
      m_axi_arlen(3 downto 0) => s01_mmu_M_AXI_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => s01_mmu_M_AXI_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => s01_mmu_M_AXI_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s01_mmu_M_AXI_ARQOS(3 downto 0),
      m_axi_arready => s01_mmu_M_AXI_ARREADY,
      m_axi_arsize(2 downto 0) => s01_mmu_M_AXI_ARSIZE(2 downto 0),
      m_axi_arvalid => s01_mmu_M_AXI_ARVALID,
      m_axi_awaddr(31 downto 0) => s01_mmu_M_AXI_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => s01_mmu_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s01_mmu_M_AXI_AWCACHE(3 downto 0),
      m_axi_awid(11 downto 0) => s01_mmu_M_AXI_AWID(11 downto 0),
      m_axi_awlen(3 downto 0) => s01_mmu_M_AXI_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => s01_mmu_M_AXI_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => s01_mmu_M_AXI_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s01_mmu_M_AXI_AWQOS(3 downto 0),
      m_axi_awready => s01_mmu_M_AXI_AWREADY,
      m_axi_awsize(2 downto 0) => s01_mmu_M_AXI_AWSIZE(2 downto 0),
      m_axi_awvalid => s01_mmu_M_AXI_AWVALID,
      m_axi_bid(11 downto 0) => s01_mmu_M_AXI_BID(11 downto 0),
      m_axi_bready => s01_mmu_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => s01_mmu_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => s01_mmu_M_AXI_BVALID,
      m_axi_rdata(31 downto 0) => s01_mmu_M_AXI_RDATA(31 downto 0),
      m_axi_rid(11 downto 0) => s01_mmu_M_AXI_RID(11 downto 0),
      m_axi_rlast => s01_mmu_M_AXI_RLAST,
      m_axi_rready => s01_mmu_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => s01_mmu_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => s01_mmu_M_AXI_RVALID,
      m_axi_wdata(31 downto 0) => s01_mmu_M_AXI_WDATA(31 downto 0),
      m_axi_wid(11 downto 0) => s01_mmu_M_AXI_WID(11 downto 0),
      m_axi_wlast => s01_mmu_M_AXI_WLAST,
      m_axi_wready => s01_mmu_M_AXI_WREADY,
      m_axi_wstrb(3 downto 0) => s01_mmu_M_AXI_WSTRB(3 downto 0),
      m_axi_wvalid => s01_mmu_M_AXI_WVALID,
      s_axi_araddr(31 downto 0) => S01_AXI_1_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => S01_AXI_1_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => S01_AXI_1_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => S01_AXI_1_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => S01_AXI_1_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => S01_AXI_1_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => S01_AXI_1_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => S01_AXI_1_ARQOS(3 downto 0),
      s_axi_arready => S01_AXI_1_ARREADY,
      s_axi_arsize(2 downto 0) => S01_AXI_1_ARSIZE(2 downto 0),
      s_axi_arvalid => S01_AXI_1_ARVALID,
      s_axi_awaddr(31 downto 0) => S01_AXI_1_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => S01_AXI_1_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => S01_AXI_1_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => S01_AXI_1_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => S01_AXI_1_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => S01_AXI_1_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => S01_AXI_1_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => S01_AXI_1_AWQOS(3 downto 0),
      s_axi_awready => S01_AXI_1_AWREADY,
      s_axi_awsize(2 downto 0) => S01_AXI_1_AWSIZE(2 downto 0),
      s_axi_awvalid => S01_AXI_1_AWVALID,
      s_axi_bid(11 downto 0) => S01_AXI_1_BID(11 downto 0),
      s_axi_bready => S01_AXI_1_BREADY,
      s_axi_bresp(1 downto 0) => S01_AXI_1_BRESP(1 downto 0),
      s_axi_bvalid => S01_AXI_1_BVALID,
      s_axi_rdata(31 downto 0) => S01_AXI_1_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => S01_AXI_1_RID(11 downto 0),
      s_axi_rlast => S01_AXI_1_RLAST,
      s_axi_rready => S01_AXI_1_RREADY,
      s_axi_rresp(1 downto 0) => S01_AXI_1_RRESP(1 downto 0),
      s_axi_rvalid => S01_AXI_1_RVALID,
      s_axi_wdata(31 downto 0) => S01_AXI_1_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => S01_AXI_1_WID(11 downto 0),
      s_axi_wlast => S01_AXI_1_WLAST,
      s_axi_wready => S01_AXI_1_WREADY,
      s_axi_wstrb(3 downto 0) => S01_AXI_1_WSTRB(3 downto 0),
      s_axi_wvalid => S01_AXI_1_WVALID
    );
xbar: component pwm_controller_xbar_0
     port map (
      aclk => ps7_0_axi_periph_ACLK_net,
      aresetn => ps7_0_axi_periph_ARESETN_net,
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(8 downto 6) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 3) => NLW_xbar_m_axi_arprot_UNCONNECTED(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY,
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY(0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(8 downto 6) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 3) => NLW_xbar_m_axi_awprot_UNCONNECTED(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY,
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY(0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID,
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID(0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID,
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID(0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY,
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(63 downto 32) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(5 downto 3) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(1) => s01_couplers_to_xbar_ARREADY(1),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(1) => s01_couplers_to_xbar_ARVALID,
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(63 downto 32) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(5 downto 3) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(1) => s01_couplers_to_xbar_AWREADY(1),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(1) => s01_couplers_to_xbar_AWVALID,
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(1) => s01_couplers_to_xbar_BREADY,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(3 downto 2) => s01_couplers_to_xbar_BRESP(3 downto 2),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(1) => s01_couplers_to_xbar_BVALID(1),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(63 downto 32) => s01_couplers_to_xbar_RDATA(63 downto 32),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(1) => s01_couplers_to_xbar_RREADY,
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(3 downto 2) => s01_couplers_to_xbar_RRESP(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(1) => s01_couplers_to_xbar_RVALID(1),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(63 downto 32) => s01_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(1) => s01_couplers_to_xbar_WREADY(1),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(7 downto 4) => s01_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(1) => s01_couplers_to_xbar_WVALID,
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    Vaux13_0_v_n : in STD_LOGIC;
    Vaux13_0_v_p : in STD_LOGIC;
    Vaux5_0_v_n : in STD_LOGIC;
    Vaux5_0_v_p : in STD_LOGIC;
    Vp_Vn_0_v_n : in STD_LOGIC;
    Vp_Vn_0_v_p : in STD_LOGIC;
    pwm_o_0 : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of pwm_controller : entity is "pwm_controller,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=pwm_controller,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=49,numReposBlks=38,numNonXlnxBlks=2,numHierBlks=11,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=17,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=10,da_clkrst_cnt=5,da_ps7_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of pwm_controller : entity is "pwm_controller.hwdef";
end pwm_controller;

architecture STRUCTURE of pwm_controller is
  component pwm_controller_processing_system7_0_0 is
  port (
    USB0_PORT_INDCTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USB0_VBUS_PWRSELECT : out STD_LOGIC;
    USB0_VBUS_PWRFAULT : in STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP1_ARVALID : out STD_LOGIC;
    M_AXI_GP1_AWVALID : out STD_LOGIC;
    M_AXI_GP1_BREADY : out STD_LOGIC;
    M_AXI_GP1_RREADY : out STD_LOGIC;
    M_AXI_GP1_WLAST : out STD_LOGIC;
    M_AXI_GP1_WVALID : out STD_LOGIC;
    M_AXI_GP1_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP1_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP1_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP1_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP1_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP1_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP1_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP1_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP1_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP1_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP1_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP1_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP1_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP1_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP1_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP1_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP1_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP1_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP1_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP1_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP1_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP1_ACLK : in STD_LOGIC;
    M_AXI_GP1_ARREADY : in STD_LOGIC;
    M_AXI_GP1_AWREADY : in STD_LOGIC;
    M_AXI_GP1_BVALID : in STD_LOGIC;
    M_AXI_GP1_RLAST : in STD_LOGIC;
    M_AXI_GP1_RVALID : in STD_LOGIC;
    M_AXI_GP1_WREADY : in STD_LOGIC;
    M_AXI_GP1_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP1_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP1_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP1_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP1_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARREADY : out STD_LOGIC;
    S_AXI_HP0_AWREADY : out STD_LOGIC;
    S_AXI_HP0_BVALID : out STD_LOGIC;
    S_AXI_HP0_RLAST : out STD_LOGIC;
    S_AXI_HP0_RVALID : out STD_LOGIC;
    S_AXI_HP0_WREADY : out STD_LOGIC;
    S_AXI_HP0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_ACLK : in STD_LOGIC;
    S_AXI_HP0_ARVALID : in STD_LOGIC;
    S_AXI_HP0_AWVALID : in STD_LOGIC;
    S_AXI_HP0_BREADY : in STD_LOGIC;
    S_AXI_HP0_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_RREADY : in STD_LOGIC;
    S_AXI_HP0_WLAST : in STD_LOGIC;
    S_AXI_HP0_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_WVALID : in STD_LOGIC;
    S_AXI_HP0_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IRQ_F2P : in STD_LOGIC_VECTOR ( 0 to 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component pwm_controller_processing_system7_0_0;
  component pwm_controller_rst_ps7_0_100M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component pwm_controller_rst_ps7_0_100M_0;
  component pwm_controller_xadc_wiz_0_1 is
  port (
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axis_aclk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    convst_in : in STD_LOGIC;
    vp_in : in STD_LOGIC;
    vn_in : in STD_LOGIC;
    vauxp5 : in STD_LOGIC;
    vauxn5 : in STD_LOGIC;
    vauxp13 : in STD_LOGIC;
    vauxn13 : in STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    eoc_out : out STD_LOGIC;
    alarm_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    busy_out : out STD_LOGIC
  );
  end component pwm_controller_xadc_wiz_0_1;
  component pwm_controller_AXIreg_1_0 is
  port (
    reg0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  end component pwm_controller_AXIreg_1_0;
  component pwm_controller_AXIreg_0_0 is
  port (
    reg0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  end component pwm_controller_AXIreg_0_0;
  component pwm_controller_system_ila_0_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe8 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component pwm_controller_system_ila_0_0;
  signal ADC_SLICEPAD_data_o : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal AXIreg_0_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIreg_0_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIreg_0_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIreg_0_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIreg_1_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIreg_1_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIreg_1_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DPWM_SLICE_en_snoop_o : STD_LOGIC;
  signal DSP_SLICEPAD_Dout : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal DSP_SLICEPAD_Dout1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DSP_SLICEPAD_coef_slicepad : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal DSP_SLICEPAD_data_o : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal Vaux13_0_1_V_N : STD_LOGIC;
  signal Vaux13_0_1_V_P : STD_LOGIC;
  signal Vaux5_0_1_V_N : STD_LOGIC;
  signal Vaux5_0_1_V_P : STD_LOGIC;
  signal Vp_Vn_0_1_V_N : STD_LOGIC;
  signal Vp_Vn_0_1_V_P : STD_LOGIC;
  signal acq_o : STD_LOGIC;
  attribute DEBUG : string;
  attribute DEBUG of acq_o : signal is "true";
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of acq_o : signal is std.standard.true;
  signal adcA : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute DEBUG of adcA : signal is "true";
  attribute MARK_DEBUG of adcA : signal is std.standard.true;
  signal async_i_1 : STD_LOGIC;
  signal busy_out : STD_LOGIC;
  attribute DEBUG of busy_out : signal is "true";
  attribute MARK_DEBUG of busy_out : signal is std.standard.true;
  signal cmp_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute DEBUG of cmp_o : signal is "true";
  attribute MARK_DEBUG of cmp_o : signal is std.standard.true;
  signal counter_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute DEBUG of counter_o : signal is "true";
  attribute MARK_DEBUG of counter_o : signal is std.standard.true;
  signal data1_i_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal dsp_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute DEBUG of dsp_o : signal is "true";
  attribute MARK_DEBUG of dsp_o : signal is std.standard.true;
  signal en_cmp_i_1 : STD_LOGIC;
  signal en_free_i_1 : STD_LOGIC;
  signal en_half_i_1 : STD_LOGIC;
  signal en_max_i_1 : STD_LOGIC;
  signal en_zero_i_1 : STD_LOGIC;
  signal eoc_out : STD_LOGIC;
  attribute DEBUG of eoc_out : signal is "true";
  attribute MARK_DEBUG of eoc_out : signal is std.standard.true;
  signal free_i : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ip2intc_irpt : STD_LOGIC;
  attribute DEBUG of ip2intc_irpt : signal is "true";
  attribute MARK_DEBUG of ip2intc_irpt : signal is std.standard.true;
  signal max_i : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal peak_i_1 : STD_LOGIC;
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP1_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP1_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP1_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP1_ARREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP1_ARVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP1_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP1_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP1_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP1_AWREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP1_AWVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP1_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP1_BREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP1_BVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP1_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP1_RLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP1_RREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP1_RVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP1_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP1_WLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP1_WREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP1_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_WVALID : STD_LOGIC;
  signal pwm_o : STD_LOGIC;
  attribute DEBUG of pwm_o : signal is "true";
  attribute MARK_DEBUG of pwm_o : signal is std.standard.true;
  signal resetn_i_1 : STD_LOGIC;
  signal rst_ps7_0_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sawtri_i_1 : STD_LOGIC;
  signal sel_i_1 : STD_LOGIC;
  signal start_i_1 : STD_LOGIC;
  signal update_o : STD_LOGIC;
  attribute DEBUG of update_o : signal is "true";
  attribute MARK_DEBUG of update_o : signal is std.standard.true;
  signal valley_i_1 : STD_LOGIC;
  signal xadc_wiz_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xadc_wiz_0_M_AXIS_TID : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal xadc_wiz_0_M_AXIS_TREADY : STD_LOGIC;
  signal xadc_wiz_0_M_AXIS_TVALID : STD_LOGIC;
  signal NLW_ADC_SNOOPER_adcB_msb_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_AXIreg_1_reg3_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_DPWM_over_o_UNCONNECTED : STD_LOGIC;
  signal NLW_DPWM_under_o_UNCONNECTED : STD_LOGIC;
  signal NLW_DPWM_updown_o_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_ARREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_AWREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_BVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_RLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_RVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_WREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rst_ps7_0_100M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps7_0_100M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_100M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_100M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xadc_wiz_0_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_eos_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_channel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DDR_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute X_INTERFACE_INFO of DDR_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute X_INTERFACE_INFO of DDR_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute X_INTERFACE_INFO of DDR_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute X_INTERFACE_INFO of DDR_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute X_INTERFACE_INFO of DDR_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute X_INTERFACE_INFO of DDR_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute X_INTERFACE_INFO of DDR_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute X_INTERFACE_INFO of DDR_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of FIXED_IO_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of Vaux13_0_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 Vaux13_0 V_N";
  attribute X_INTERFACE_INFO of Vaux13_0_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 Vaux13_0 V_P";
  attribute X_INTERFACE_INFO of Vaux5_0_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 Vaux5_0 V_N";
  attribute X_INTERFACE_INFO of Vaux5_0_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 Vaux5_0 V_P";
  attribute X_INTERFACE_INFO of Vp_Vn_0_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 Vp_Vn_0 V_N";
  attribute X_INTERFACE_INFO of Vp_Vn_0_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 Vp_Vn_0 V_P";
  attribute X_INTERFACE_INFO of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute X_INTERFACE_PARAMETER of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute X_INTERFACE_INFO of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute X_INTERFACE_INFO of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute X_INTERFACE_INFO of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute X_INTERFACE_INFO of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute X_INTERFACE_INFO of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
begin
  Vaux13_0_1_V_N <= Vaux13_0_v_n;
  Vaux13_0_1_V_P <= Vaux13_0_v_p;
  Vaux5_0_1_V_N <= Vaux5_0_v_n;
  Vaux5_0_1_V_P <= Vaux5_0_v_p;
  Vp_Vn_0_1_V_N <= Vp_Vn_0_v_n;
  Vp_Vn_0_1_V_P <= Vp_Vn_0_v_p;
  pwm_o_0 <= pwm_o;
ADC_SNOOPER: entity work.ADC_SNOOPER_imp_YX3GGP
     port map (
      adcA_msb(11 downto 0) => adcA(11 downto 0),
      adcA_slicepad(16 downto 0) => ADC_SLICEPAD_data_o(16 downto 0),
      adcB_msb(11 downto 0) => NLW_ADC_SNOOPER_adcB_msb_UNCONNECTED(11 downto 0),
      en_out_i => DPWM_SLICE_en_snoop_o,
      s_axis_aclk => processing_system7_0_FCLK_CLK0,
      s_axis_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axis_tdata(15 downto 0) => xadc_wiz_0_M_AXIS_TDATA(15 downto 0),
      s_axis_tid(4 downto 0) => xadc_wiz_0_M_AXIS_TID(4 downto 0),
      s_axis_tready => xadc_wiz_0_M_AXIS_TREADY,
      s_axis_tvalid => xadc_wiz_0_M_AXIS_TVALID
    );
AXIreg_0: component pwm_controller_AXIreg_0_0
     port map (
      reg0(31 downto 0) => AXIreg_0_reg0(31 downto 0),
      reg1(31 downto 0) => AXIreg_0_reg1(31 downto 0),
      reg2(31 downto 0) => AXIreg_0_reg2(31 downto 0),
      reg3(31 downto 0) => AXIreg_0_reg3(31 downto 0),
      s00_axi_aclk => processing_system7_0_FCLK_CLK0,
      s00_axi_araddr(3 downto 0) => ps7_0_axi_periph_M00_AXI_ARADDR(3 downto 0),
      s00_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => ps7_0_axi_periph_M00_AXI_ARPROT(2 downto 0),
      s00_axi_arready => ps7_0_axi_periph_M00_AXI_ARREADY,
      s00_axi_arvalid => ps7_0_axi_periph_M00_AXI_ARVALID,
      s00_axi_awaddr(3 downto 0) => ps7_0_axi_periph_M00_AXI_AWADDR(3 downto 0),
      s00_axi_awprot(2 downto 0) => ps7_0_axi_periph_M00_AXI_AWPROT(2 downto 0),
      s00_axi_awready => ps7_0_axi_periph_M00_AXI_AWREADY,
      s00_axi_awvalid => ps7_0_axi_periph_M00_AXI_AWVALID,
      s00_axi_bready => ps7_0_axi_periph_M00_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => ps7_0_axi_periph_M00_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      s00_axi_rready => ps7_0_axi_periph_M00_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => ps7_0_axi_periph_M00_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      s00_axi_wready => ps7_0_axi_periph_M00_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => ps7_0_axi_periph_M00_AXI_WVALID
    );
AXIreg_1: component pwm_controller_AXIreg_1_0
     port map (
      reg0(31 downto 0) => AXIreg_1_reg0(31 downto 0),
      reg1(31 downto 0) => AXIreg_1_reg1(31 downto 0),
      reg2(31 downto 0) => AXIreg_1_reg2(31 downto 0),
      reg3(31 downto 0) => NLW_AXIreg_1_reg3_UNCONNECTED(31 downto 0),
      s00_axi_aclk => processing_system7_0_FCLK_CLK0,
      s00_axi_araddr(3 downto 0) => ps7_0_axi_periph_M02_AXI_ARADDR(3 downto 0),
      s00_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => ps7_0_axi_periph_M02_AXI_ARPROT(2 downto 0),
      s00_axi_arready => ps7_0_axi_periph_M02_AXI_ARREADY,
      s00_axi_arvalid => ps7_0_axi_periph_M02_AXI_ARVALID,
      s00_axi_awaddr(3 downto 0) => ps7_0_axi_periph_M02_AXI_AWADDR(3 downto 0),
      s00_axi_awprot(2 downto 0) => ps7_0_axi_periph_M02_AXI_AWPROT(2 downto 0),
      s00_axi_awready => ps7_0_axi_periph_M02_AXI_AWREADY,
      s00_axi_awvalid => ps7_0_axi_periph_M02_AXI_AWVALID,
      s00_axi_bready => ps7_0_axi_periph_M02_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => ps7_0_axi_periph_M02_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      s00_axi_rready => ps7_0_axi_periph_M02_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => ps7_0_axi_periph_M02_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      s00_axi_wready => ps7_0_axi_periph_M02_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => ps7_0_axi_periph_M02_AXI_WVALID
    );
DPWM: entity work.DPWM_imp_16A0TOR
     port map (
      acq_o => acq_o,
      async_i => async_i_1,
      clk_i => processing_system7_0_FCLK_CLK0,
      cmp_i(15 downto 0) => dsp_o(15 downto 0),
      cmp_o(15 downto 0) => cmp_o(15 downto 0),
      counter_o(15 downto 0) => counter_o(15 downto 0),
      en_cmp_i => en_cmp_i_1,
      en_free_i => en_free_i_1,
      en_half_i => en_half_i_1,
      en_max_i => en_max_i_1,
      en_zero_i => en_zero_i_1,
      free_i(15 downto 0) => free_i(15 downto 0),
      max_i(15 downto 0) => max_i(15 downto 0),
      over_o => NLW_DPWM_over_o_UNCONNECTED,
      peak_i => peak_i_1,
      pwm_o_0 => pwm_o,
      resetn_i => resetn_i_1,
      sawtri_i => sawtri_i_1,
      under_o => NLW_DPWM_under_o_UNCONNECTED,
      update_i => update_o,
      updown_o => NLW_DPWM_updown_o_UNCONNECTED,
      valley_i => valley_i_1
    );
DPWM_SLICE: entity work.DPWM_SLICE_imp_J8D3HN
     port map (
      Din(31 downto 0) => AXIreg_0_reg2(31 downto 0),
      Din1(31 downto 0) => AXIreg_0_reg1(31 downto 0),
      acq_cmp_o => en_cmp_i_1,
      acq_free_o => en_free_i_1,
      acq_half_o => en_half_i_1,
      acq_max_o => en_max_i_1,
      acq_zero_o => en_zero_i_1,
      async_o => async_i_1,
      data_i(31 downto 0) => AXIreg_0_reg3(31 downto 0),
      dsp_bypass_o => sel_i_1,
      dsp_start_o => start_i_1,
      en_snoop_o => DPWM_SLICE_en_snoop_o,
      free_i(15 downto 0) => free_i(15 downto 0),
      max_i(15 downto 0) => max_i(15 downto 0),
      resetn_o => resetn_i_1,
      sawtri_o => sawtri_i_1,
      upd_peak_o => peak_i_1,
      upd_valley_o => valley_i_1
    );
DSP: entity work.DSP_imp_MU6FP7
     port map (
      add_i(16 downto 0) => ADC_SLICEPAD_data_o(16 downto 0),
      clk_i => processing_system7_0_FCLK_CLK0,
      direct_i(15 downto 0) => data1_i_1(15 downto 0),
      dsp_o(15 downto 0) => dsp_o(15 downto 0),
      ki_i(16 downto 0) => DSP_SLICEPAD_Dout(16 downto 0),
      kp_i(16 downto 0) => DSP_SLICEPAD_coef_slicepad(16 downto 0),
      ref_i(16 downto 0) => DSP_SLICEPAD_data_o(16 downto 0),
      sel_i => sel_i_1,
      shift_i(3 downto 0) => DSP_SLICEPAD_Dout1(3 downto 0),
      snh_i => acq_o,
      start_i => start_i_1
    );
DSP_SLICEPAD: entity work.DSP_SLICEPAD_imp_5QZW03
     port map (
      conf_i(31 downto 0) => AXIreg_1_reg2(31 downto 0),
      ki_i(31 downto 0) => AXIreg_1_reg1(31 downto 0),
      ki_slicepad(16 downto 0) => DSP_SLICEPAD_Dout(16 downto 0),
      kp_i(31 downto 0) => AXIreg_1_reg0(31 downto 0),
      kp_slicepad(16 downto 0) => DSP_SLICEPAD_coef_slicepad(16 downto 0),
      ref_i(31 downto 0) => AXIreg_0_reg0(31 downto 0),
      ref_slice(15 downto 0) => data1_i_1(15 downto 0),
      ref_slicepad(16 downto 0) => DSP_SLICEPAD_data_o(16 downto 0),
      shift_slice(3 downto 0) => DSP_SLICEPAD_Dout1(3 downto 0)
    );
processing_system7_0: component pwm_controller_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      FCLK_CLK0 => processing_system7_0_FCLK_CLK0,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      IRQ_F2P(0) => ip2intc_irpt,
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => processing_system7_0_FCLK_CLK0,
      M_AXI_GP0_ARADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => processing_system7_0_M_AXI_GP0_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => processing_system7_0_M_AXI_GP0_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => processing_system7_0_M_AXI_GP0_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => processing_system7_0_M_AXI_GP0_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      M_AXI_GP0_BREADY => processing_system7_0_M_AXI_GP0_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => processing_system7_0_M_AXI_GP0_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      M_AXI_GP0_RLAST => processing_system7_0_M_AXI_GP0_RLAST,
      M_AXI_GP0_RREADY => processing_system7_0_M_AXI_GP0_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => processing_system7_0_M_AXI_GP0_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      M_AXI_GP0_WLAST => processing_system7_0_M_AXI_GP0_WLAST,
      M_AXI_GP0_WREADY => processing_system7_0_M_AXI_GP0_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => processing_system7_0_M_AXI_GP0_WVALID,
      M_AXI_GP1_ACLK => processing_system7_0_FCLK_CLK0,
      M_AXI_GP1_ARADDR(31 downto 0) => processing_system7_0_M_AXI_GP1_ARADDR(31 downto 0),
      M_AXI_GP1_ARBURST(1 downto 0) => processing_system7_0_M_AXI_GP1_ARBURST(1 downto 0),
      M_AXI_GP1_ARCACHE(3 downto 0) => processing_system7_0_M_AXI_GP1_ARCACHE(3 downto 0),
      M_AXI_GP1_ARID(11 downto 0) => processing_system7_0_M_AXI_GP1_ARID(11 downto 0),
      M_AXI_GP1_ARLEN(3 downto 0) => processing_system7_0_M_AXI_GP1_ARLEN(3 downto 0),
      M_AXI_GP1_ARLOCK(1 downto 0) => processing_system7_0_M_AXI_GP1_ARLOCK(1 downto 0),
      M_AXI_GP1_ARPROT(2 downto 0) => processing_system7_0_M_AXI_GP1_ARPROT(2 downto 0),
      M_AXI_GP1_ARQOS(3 downto 0) => processing_system7_0_M_AXI_GP1_ARQOS(3 downto 0),
      M_AXI_GP1_ARREADY => processing_system7_0_M_AXI_GP1_ARREADY,
      M_AXI_GP1_ARSIZE(2 downto 0) => processing_system7_0_M_AXI_GP1_ARSIZE(2 downto 0),
      M_AXI_GP1_ARVALID => processing_system7_0_M_AXI_GP1_ARVALID,
      M_AXI_GP1_AWADDR(31 downto 0) => processing_system7_0_M_AXI_GP1_AWADDR(31 downto 0),
      M_AXI_GP1_AWBURST(1 downto 0) => processing_system7_0_M_AXI_GP1_AWBURST(1 downto 0),
      M_AXI_GP1_AWCACHE(3 downto 0) => processing_system7_0_M_AXI_GP1_AWCACHE(3 downto 0),
      M_AXI_GP1_AWID(11 downto 0) => processing_system7_0_M_AXI_GP1_AWID(11 downto 0),
      M_AXI_GP1_AWLEN(3 downto 0) => processing_system7_0_M_AXI_GP1_AWLEN(3 downto 0),
      M_AXI_GP1_AWLOCK(1 downto 0) => processing_system7_0_M_AXI_GP1_AWLOCK(1 downto 0),
      M_AXI_GP1_AWPROT(2 downto 0) => processing_system7_0_M_AXI_GP1_AWPROT(2 downto 0),
      M_AXI_GP1_AWQOS(3 downto 0) => processing_system7_0_M_AXI_GP1_AWQOS(3 downto 0),
      M_AXI_GP1_AWREADY => processing_system7_0_M_AXI_GP1_AWREADY,
      M_AXI_GP1_AWSIZE(2 downto 0) => processing_system7_0_M_AXI_GP1_AWSIZE(2 downto 0),
      M_AXI_GP1_AWVALID => processing_system7_0_M_AXI_GP1_AWVALID,
      M_AXI_GP1_BID(11 downto 0) => processing_system7_0_M_AXI_GP1_BID(11 downto 0),
      M_AXI_GP1_BREADY => processing_system7_0_M_AXI_GP1_BREADY,
      M_AXI_GP1_BRESP(1 downto 0) => processing_system7_0_M_AXI_GP1_BRESP(1 downto 0),
      M_AXI_GP1_BVALID => processing_system7_0_M_AXI_GP1_BVALID,
      M_AXI_GP1_RDATA(31 downto 0) => processing_system7_0_M_AXI_GP1_RDATA(31 downto 0),
      M_AXI_GP1_RID(11 downto 0) => processing_system7_0_M_AXI_GP1_RID(11 downto 0),
      M_AXI_GP1_RLAST => processing_system7_0_M_AXI_GP1_RLAST,
      M_AXI_GP1_RREADY => processing_system7_0_M_AXI_GP1_RREADY,
      M_AXI_GP1_RRESP(1 downto 0) => processing_system7_0_M_AXI_GP1_RRESP(1 downto 0),
      M_AXI_GP1_RVALID => processing_system7_0_M_AXI_GP1_RVALID,
      M_AXI_GP1_WDATA(31 downto 0) => processing_system7_0_M_AXI_GP1_WDATA(31 downto 0),
      M_AXI_GP1_WID(11 downto 0) => processing_system7_0_M_AXI_GP1_WID(11 downto 0),
      M_AXI_GP1_WLAST => processing_system7_0_M_AXI_GP1_WLAST,
      M_AXI_GP1_WREADY => processing_system7_0_M_AXI_GP1_WREADY,
      M_AXI_GP1_WSTRB(3 downto 0) => processing_system7_0_M_AXI_GP1_WSTRB(3 downto 0),
      M_AXI_GP1_WVALID => processing_system7_0_M_AXI_GP1_WVALID,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      S_AXI_HP0_ACLK => processing_system7_0_FCLK_CLK0,
      S_AXI_HP0_ARADDR(31 downto 0) => B"00000000000000000000000000000000",
      S_AXI_HP0_ARBURST(1 downto 0) => B"01",
      S_AXI_HP0_ARCACHE(3 downto 0) => B"0011",
      S_AXI_HP0_ARID(5 downto 0) => B"000000",
      S_AXI_HP0_ARLEN(3 downto 0) => B"0000",
      S_AXI_HP0_ARLOCK(1 downto 0) => B"00",
      S_AXI_HP0_ARPROT(2 downto 0) => B"000",
      S_AXI_HP0_ARQOS(3 downto 0) => B"0000",
      S_AXI_HP0_ARREADY => NLW_processing_system7_0_S_AXI_HP0_ARREADY_UNCONNECTED,
      S_AXI_HP0_ARSIZE(2 downto 0) => B"011",
      S_AXI_HP0_ARVALID => '0',
      S_AXI_HP0_AWADDR(31 downto 0) => B"00000000000000000000000000000000",
      S_AXI_HP0_AWBURST(1 downto 0) => B"01",
      S_AXI_HP0_AWCACHE(3 downto 0) => B"0011",
      S_AXI_HP0_AWID(5 downto 0) => B"000000",
      S_AXI_HP0_AWLEN(3 downto 0) => B"0000",
      S_AXI_HP0_AWLOCK(1 downto 0) => B"00",
      S_AXI_HP0_AWPROT(2 downto 0) => B"000",
      S_AXI_HP0_AWQOS(3 downto 0) => B"0000",
      S_AXI_HP0_AWREADY => NLW_processing_system7_0_S_AXI_HP0_AWREADY_UNCONNECTED,
      S_AXI_HP0_AWSIZE(2 downto 0) => B"011",
      S_AXI_HP0_AWVALID => '0',
      S_AXI_HP0_BID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_BID_UNCONNECTED(5 downto 0),
      S_AXI_HP0_BREADY => '0',
      S_AXI_HP0_BRESP(1 downto 0) => NLW_processing_system7_0_S_AXI_HP0_BRESP_UNCONNECTED(1 downto 0),
      S_AXI_HP0_BVALID => NLW_processing_system7_0_S_AXI_HP0_BVALID_UNCONNECTED,
      S_AXI_HP0_RACOUNT(2 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP0_RCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_RDATA(63 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RDATA_UNCONNECTED(63 downto 0),
      S_AXI_HP0_RDISSUECAP1_EN => '0',
      S_AXI_HP0_RID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RID_UNCONNECTED(5 downto 0),
      S_AXI_HP0_RLAST => NLW_processing_system7_0_S_AXI_HP0_RLAST_UNCONNECTED,
      S_AXI_HP0_RREADY => '0',
      S_AXI_HP0_RRESP(1 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RRESP_UNCONNECTED(1 downto 0),
      S_AXI_HP0_RVALID => NLW_processing_system7_0_S_AXI_HP0_RVALID_UNCONNECTED,
      S_AXI_HP0_WACOUNT(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP0_WCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_WDATA(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      S_AXI_HP0_WID(5 downto 0) => B"000000",
      S_AXI_HP0_WLAST => '0',
      S_AXI_HP0_WREADY => NLW_processing_system7_0_S_AXI_HP0_WREADY_UNCONNECTED,
      S_AXI_HP0_WRISSUECAP1_EN => '0',
      S_AXI_HP0_WSTRB(7 downto 0) => B"11111111",
      S_AXI_HP0_WVALID => '0',
      USB0_PORT_INDCTL(1 downto 0) => NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB0_VBUS_PWRFAULT => '0',
      USB0_VBUS_PWRSELECT => NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED
    );
ps7_0_axi_periph: entity work.pwm_controller_ps7_0_axi_periph_0
     port map (
      ACLK => processing_system7_0_FCLK_CLK0,
      ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M00_ACLK => processing_system7_0_FCLK_CLK0,
      M00_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arprot(2 downto 0) => ps7_0_axi_periph_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arready => ps7_0_axi_periph_M00_AXI_ARREADY,
      M00_AXI_arvalid => ps7_0_axi_periph_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awprot(2 downto 0) => ps7_0_axi_periph_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awready => ps7_0_axi_periph_M00_AXI_AWREADY,
      M00_AXI_awvalid => ps7_0_axi_periph_M00_AXI_AWVALID,
      M00_AXI_bready => ps7_0_axi_periph_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => ps7_0_axi_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => ps7_0_axi_periph_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => ps7_0_axi_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => ps7_0_axi_periph_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => ps7_0_axi_periph_M00_AXI_WVALID,
      M01_ACLK => processing_system7_0_FCLK_CLK0,
      M01_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arready(0) => ps7_0_axi_periph_M01_AXI_ARREADY,
      M01_AXI_arvalid(0) => ps7_0_axi_periph_M01_AXI_ARVALID(0),
      M01_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awready(0) => ps7_0_axi_periph_M01_AXI_AWREADY,
      M01_AXI_awvalid(0) => ps7_0_axi_periph_M01_AXI_AWVALID(0),
      M01_AXI_bready(0) => ps7_0_axi_periph_M01_AXI_BREADY(0),
      M01_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid(0) => ps7_0_axi_periph_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready(0) => ps7_0_axi_periph_M01_AXI_RREADY(0),
      M01_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid(0) => ps7_0_axi_periph_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready(0) => ps7_0_axi_periph_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid(0) => ps7_0_axi_periph_M01_AXI_WVALID(0),
      M02_ACLK => processing_system7_0_FCLK_CLK0,
      M02_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M02_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arprot(2 downto 0) => ps7_0_axi_periph_M02_AXI_ARPROT(2 downto 0),
      M02_AXI_arready => ps7_0_axi_periph_M02_AXI_ARREADY,
      M02_AXI_arvalid => ps7_0_axi_periph_M02_AXI_ARVALID,
      M02_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awprot(2 downto 0) => ps7_0_axi_periph_M02_AXI_AWPROT(2 downto 0),
      M02_AXI_awready => ps7_0_axi_periph_M02_AXI_AWREADY,
      M02_AXI_awvalid => ps7_0_axi_periph_M02_AXI_AWVALID,
      M02_AXI_bready => ps7_0_axi_periph_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => ps7_0_axi_periph_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => ps7_0_axi_periph_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => ps7_0_axi_periph_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => ps7_0_axi_periph_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid => ps7_0_axi_periph_M02_AXI_WVALID,
      S00_ACLK => processing_system7_0_FCLK_CLK0,
      S00_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      S00_AXI_arready => processing_system7_0_M_AXI_GP0_ARREADY,
      S00_AXI_arsize(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      S00_AXI_arvalid => processing_system7_0_M_AXI_GP0_ARVALID,
      S00_AXI_awaddr(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      S00_AXI_awready => processing_system7_0_M_AXI_GP0_AWREADY,
      S00_AXI_awsize(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      S00_AXI_awvalid => processing_system7_0_M_AXI_GP0_AWVALID,
      S00_AXI_bid(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      S00_AXI_bready => processing_system7_0_M_AXI_GP0_BREADY,
      S00_AXI_bresp(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      S00_AXI_bvalid => processing_system7_0_M_AXI_GP0_BVALID,
      S00_AXI_rdata(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      S00_AXI_rlast => processing_system7_0_M_AXI_GP0_RLAST,
      S00_AXI_rready => processing_system7_0_M_AXI_GP0_RREADY,
      S00_AXI_rresp(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      S00_AXI_rvalid => processing_system7_0_M_AXI_GP0_RVALID,
      S00_AXI_wdata(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      S00_AXI_wlast => processing_system7_0_M_AXI_GP0_WLAST,
      S00_AXI_wready => processing_system7_0_M_AXI_GP0_WREADY,
      S00_AXI_wstrb(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      S00_AXI_wvalid => processing_system7_0_M_AXI_GP0_WVALID,
      S01_ACLK => processing_system7_0_FCLK_CLK0,
      S01_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      S01_AXI_araddr(31 downto 0) => processing_system7_0_M_AXI_GP1_ARADDR(31 downto 0),
      S01_AXI_arburst(1 downto 0) => processing_system7_0_M_AXI_GP1_ARBURST(1 downto 0),
      S01_AXI_arcache(3 downto 0) => processing_system7_0_M_AXI_GP1_ARCACHE(3 downto 0),
      S01_AXI_arid(11 downto 0) => processing_system7_0_M_AXI_GP1_ARID(11 downto 0),
      S01_AXI_arlen(3 downto 0) => processing_system7_0_M_AXI_GP1_ARLEN(3 downto 0),
      S01_AXI_arlock(1 downto 0) => processing_system7_0_M_AXI_GP1_ARLOCK(1 downto 0),
      S01_AXI_arprot(2 downto 0) => processing_system7_0_M_AXI_GP1_ARPROT(2 downto 0),
      S01_AXI_arqos(3 downto 0) => processing_system7_0_M_AXI_GP1_ARQOS(3 downto 0),
      S01_AXI_arready => processing_system7_0_M_AXI_GP1_ARREADY,
      S01_AXI_arsize(2 downto 0) => processing_system7_0_M_AXI_GP1_ARSIZE(2 downto 0),
      S01_AXI_arvalid => processing_system7_0_M_AXI_GP1_ARVALID,
      S01_AXI_awaddr(31 downto 0) => processing_system7_0_M_AXI_GP1_AWADDR(31 downto 0),
      S01_AXI_awburst(1 downto 0) => processing_system7_0_M_AXI_GP1_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => processing_system7_0_M_AXI_GP1_AWCACHE(3 downto 0),
      S01_AXI_awid(11 downto 0) => processing_system7_0_M_AXI_GP1_AWID(11 downto 0),
      S01_AXI_awlen(3 downto 0) => processing_system7_0_M_AXI_GP1_AWLEN(3 downto 0),
      S01_AXI_awlock(1 downto 0) => processing_system7_0_M_AXI_GP1_AWLOCK(1 downto 0),
      S01_AXI_awprot(2 downto 0) => processing_system7_0_M_AXI_GP1_AWPROT(2 downto 0),
      S01_AXI_awqos(3 downto 0) => processing_system7_0_M_AXI_GP1_AWQOS(3 downto 0),
      S01_AXI_awready => processing_system7_0_M_AXI_GP1_AWREADY,
      S01_AXI_awsize(2 downto 0) => processing_system7_0_M_AXI_GP1_AWSIZE(2 downto 0),
      S01_AXI_awvalid => processing_system7_0_M_AXI_GP1_AWVALID,
      S01_AXI_bid(11 downto 0) => processing_system7_0_M_AXI_GP1_BID(11 downto 0),
      S01_AXI_bready => processing_system7_0_M_AXI_GP1_BREADY,
      S01_AXI_bresp(1 downto 0) => processing_system7_0_M_AXI_GP1_BRESP(1 downto 0),
      S01_AXI_bvalid => processing_system7_0_M_AXI_GP1_BVALID,
      S01_AXI_rdata(31 downto 0) => processing_system7_0_M_AXI_GP1_RDATA(31 downto 0),
      S01_AXI_rid(11 downto 0) => processing_system7_0_M_AXI_GP1_RID(11 downto 0),
      S01_AXI_rlast => processing_system7_0_M_AXI_GP1_RLAST,
      S01_AXI_rready => processing_system7_0_M_AXI_GP1_RREADY,
      S01_AXI_rresp(1 downto 0) => processing_system7_0_M_AXI_GP1_RRESP(1 downto 0),
      S01_AXI_rvalid => processing_system7_0_M_AXI_GP1_RVALID,
      S01_AXI_wdata(31 downto 0) => processing_system7_0_M_AXI_GP1_WDATA(31 downto 0),
      S01_AXI_wid(11 downto 0) => processing_system7_0_M_AXI_GP1_WID(11 downto 0),
      S01_AXI_wlast => processing_system7_0_M_AXI_GP1_WLAST,
      S01_AXI_wready => processing_system7_0_M_AXI_GP1_WREADY,
      S01_AXI_wstrb(3 downto 0) => processing_system7_0_M_AXI_GP1_WSTRB(3 downto 0),
      S01_AXI_wvalid => processing_system7_0_M_AXI_GP1_WVALID
    );
rst_ps7_0_100M: component pwm_controller_rst_ps7_0_100M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_ps7_0_100M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_rst_ps7_0_100M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_ps7_0_100M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_ps7_0_100M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_ps7_0_100M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK0
    );
system_ila_0: component pwm_controller_system_ila_0_0
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      probe0(15 downto 0) => cmp_o(15 downto 0),
      probe1(15 downto 0) => counter_o(15 downto 0),
      probe2(0) => pwm_o,
      probe3(0) => update_o,
      probe4(0) => acq_o,
      probe5(0) => busy_out,
      probe6(0) => eoc_out,
      probe7(0) => ip2intc_irpt,
      probe8(11 downto 0) => adcA(11 downto 0),
      probe9(15 downto 0) => dsp_o(15 downto 0)
    );
xadc_wiz_0: component pwm_controller_xadc_wiz_0_1
     port map (
      alarm_out => NLW_xadc_wiz_0_alarm_out_UNCONNECTED,
      busy_out => busy_out,
      channel_out(4 downto 0) => NLW_xadc_wiz_0_channel_out_UNCONNECTED(4 downto 0),
      convst_in => acq_o,
      eoc_out => eoc_out,
      eos_out => NLW_xadc_wiz_0_eos_out_UNCONNECTED,
      ip2intc_irpt => ip2intc_irpt,
      m_axis_tdata(15 downto 0) => xadc_wiz_0_M_AXIS_TDATA(15 downto 0),
      m_axis_tid(4 downto 0) => xadc_wiz_0_M_AXIS_TID(4 downto 0),
      m_axis_tready => xadc_wiz_0_M_AXIS_TREADY,
      m_axis_tvalid => xadc_wiz_0_M_AXIS_TVALID,
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(10 downto 0) => ps7_0_axi_periph_M01_AXI_ARADDR(10 downto 0),
      s_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axi_arready => ps7_0_axi_periph_M01_AXI_ARREADY,
      s_axi_arvalid => ps7_0_axi_periph_M01_AXI_ARVALID(0),
      s_axi_awaddr(10 downto 0) => ps7_0_axi_periph_M01_AXI_AWADDR(10 downto 0),
      s_axi_awready => ps7_0_axi_periph_M01_AXI_AWREADY,
      s_axi_awvalid => ps7_0_axi_periph_M01_AXI_AWVALID(0),
      s_axi_bready => ps7_0_axi_periph_M01_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps7_0_axi_periph_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => ps7_0_axi_periph_M01_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps7_0_axi_periph_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => ps7_0_axi_periph_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps7_0_axi_periph_M01_AXI_WVALID(0),
      s_axis_aclk => processing_system7_0_FCLK_CLK0,
      vauxn13 => Vaux13_0_1_V_N,
      vauxn5 => Vaux5_0_1_V_N,
      vauxp13 => Vaux13_0_1_V_P,
      vauxp5 => Vaux5_0_1_V_P,
      vn_in => Vp_Vn_0_1_V_N,
      vp_in => Vp_Vn_0_1_V_P
    );
end STRUCTURE;
