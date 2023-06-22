-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Wed Jun 21 13:51:11 2023
-- Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top pwm_controller_DSP_stdpipe_0_0 -prefix
--               pwm_controller_DSP_stdpipe_0_0_ pwm_controller_DSP_stdpipe_0_0_sim_netlist.vhdl
-- Design      : pwm_controller_DSP_stdpipe_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_DSP_stdpipe_0_0_DSP_stdpipe is
  port (
    acc_o : out STD_LOGIC_VECTOR ( 34 downto 0 );
    start_i : in STD_LOGIC;
    clk_i : in STD_LOGIC;
    coef_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    ref_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    add_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    alu_i : in STD_LOGIC_VECTOR ( 34 downto 0 );
    sub_i : in STD_LOGIC
  );
end pwm_controller_DSP_stdpipe_0_0_DSP_stdpipe;

architecture STRUCTURE of pwm_controller_DSP_stdpipe_0_0_DSP_stdpipe is
  signal NLW_p_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 35 );
  signal NLW_p_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
p_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => true,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => add_i(16),
      A(28) => add_i(16),
      A(27) => add_i(16),
      A(26) => add_i(16),
      A(25) => add_i(16),
      A(24) => add_i(16),
      A(23) => add_i(16),
      A(22) => add_i(16),
      A(21) => add_i(16),
      A(20) => add_i(16),
      A(19) => add_i(16),
      A(18) => add_i(16),
      A(17) => add_i(16),
      A(16 downto 0) => add_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => coef_i(16),
      B(16 downto 0) => coef_i(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => alu_i(34),
      C(46) => alu_i(34),
      C(45) => alu_i(34),
      C(44) => alu_i(34),
      C(43) => alu_i(34),
      C(42) => alu_i(34),
      C(41) => alu_i(34),
      C(40) => alu_i(34),
      C(39) => alu_i(34),
      C(38) => alu_i(34),
      C(37) => alu_i(34),
      C(36) => alu_i(34),
      C(35) => alu_i(34),
      C(34 downto 0) => alu_i(34 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => start_i,
      CEAD => start_i,
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => start_i,
      CEC => start_i,
      CECARRYIN => '0',
      CECTRL => '0',
      CED => start_i,
      CEINMODE => '0',
      CEM => start_i,
      CEP => start_i,
      CLK => clk_i,
      D(24) => ref_i(16),
      D(23) => ref_i(16),
      D(22) => ref_i(16),
      D(21) => ref_i(16),
      D(20) => ref_i(16),
      D(19) => ref_i(16),
      D(18) => ref_i(16),
      D(17) => ref_i(16),
      D(16 downto 0) => ref_i(16 downto 0),
      INMODE(4) => '0',
      INMODE(3) => sub_i,
      INMODE(2 downto 0) => B"100",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_p_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 35) => NLW_p_reg_P_UNCONNECTED(47 downto 35),
      P(34 downto 0) => acc_o(34 downto 0),
      PATTERNBDETECT => NLW_p_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_DSP_stdpipe_0_0 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pwm_controller_DSP_stdpipe_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pwm_controller_DSP_stdpipe_0_0 : entity is "pwm_controller_DSP_stdpipe_0_0,DSP_stdpipe,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of pwm_controller_DSP_stdpipe_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of pwm_controller_DSP_stdpipe_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of pwm_controller_DSP_stdpipe_0_0 : entity is "DSP_stdpipe,Vivado 2022.2";
end pwm_controller_DSP_stdpipe_0_0;

architecture STRUCTURE of pwm_controller_DSP_stdpipe_0_0 is
begin
U0: entity work.pwm_controller_DSP_stdpipe_0_0_DSP_stdpipe
     port map (
      acc_o(34 downto 0) => acc_o(34 downto 0),
      add_i(16 downto 0) => add_i(16 downto 0),
      alu_i(34 downto 0) => alu_i(34 downto 0),
      clk_i => clk_i,
      coef_i(16 downto 0) => coef_i(16 downto 0),
      ref_i(16 downto 0) => ref_i(16 downto 0),
      start_i => start_i,
      sub_i => sub_i
    );
end STRUCTURE;
