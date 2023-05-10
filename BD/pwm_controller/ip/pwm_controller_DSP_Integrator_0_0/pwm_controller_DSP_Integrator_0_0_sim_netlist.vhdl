-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Tue Mar 21 20:46:48 2023
-- Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top pwm_controller_DSP_Integrator_0_0 -prefix
--               pwm_controller_DSP_Integrator_0_0_ pwm_controller_DSP_Integrator_0_0_sim_netlist.vhdl
-- Design      : pwm_controller_DSP_Integrator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_DSP_Integrator_0_0_DSP_Integrator is
  port (
    y_out : out STD_LOGIC_VECTOR ( 33 downto 0 );
    start_in : in STD_LOGIC;
    adc_in : in STD_LOGIC_VECTOR ( 16 downto 0 );
    clk_in : in STD_LOGIC;
    ref_in : in STD_LOGIC_VECTOR ( 16 downto 0 );
    ki_in : in STD_LOGIC_VECTOR ( 16 downto 0 );
    loop_in : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
end pwm_controller_DSP_Integrator_0_0_DSP_Integrator;

architecture STRUCTURE of pwm_controller_DSP_Integrator_0_0_DSP_Integrator is
  signal A : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \^a\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal d : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \sub0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sub0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sub0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sub0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sub0_carry__0_n_0\ : STD_LOGIC;
  signal \sub0_carry__0_n_1\ : STD_LOGIC;
  signal \sub0_carry__0_n_2\ : STD_LOGIC;
  signal \sub0_carry__0_n_3\ : STD_LOGIC;
  signal \sub0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \sub0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \sub0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \sub0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \sub0_carry__1_n_0\ : STD_LOGIC;
  signal \sub0_carry__1_n_1\ : STD_LOGIC;
  signal \sub0_carry__1_n_2\ : STD_LOGIC;
  signal \sub0_carry__1_n_3\ : STD_LOGIC;
  signal \sub0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \sub0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \sub0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \sub0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \sub0_carry__2_n_0\ : STD_LOGIC;
  signal \sub0_carry__2_n_1\ : STD_LOGIC;
  signal \sub0_carry__2_n_2\ : STD_LOGIC;
  signal \sub0_carry__2_n_3\ : STD_LOGIC;
  signal \sub0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal sub0_carry_i_1_n_0 : STD_LOGIC;
  signal sub0_carry_i_2_n_0 : STD_LOGIC;
  signal sub0_carry_i_3_n_0 : STD_LOGIC;
  signal sub0_carry_i_4_n_0 : STD_LOGIC;
  signal sub0_carry_n_0 : STD_LOGIC;
  signal sub0_carry_n_1 : STD_LOGIC;
  signal sub0_carry_n_2 : STD_LOGIC;
  signal sub0_carry_n_3 : STD_LOGIC;
  signal NLW_p_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_p_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_sub0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sub0_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of sub0_carry : label is 35;
  attribute ADDER_THRESHOLD of \sub0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sub0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \sub0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \sub0_carry__3\ : label is 35;
begin
\a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => ref_in(0),
      Q => \^a\(0),
      R => '0'
    );
\a_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => ref_in(10),
      Q => \^a\(10),
      R => '0'
    );
\a_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => ref_in(11),
      Q => \^a\(11),
      R => '0'
    );
\a_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => ref_in(12),
      Q => \^a\(12),
      R => '0'
    );
\a_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => ref_in(13),
      Q => \^a\(13),
      R => '0'
    );
\a_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => ref_in(14),
      Q => \^a\(14),
      R => '0'
    );
\a_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => ref_in(15),
      Q => \^a\(15),
      R => '0'
    );
\a_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => ref_in(16),
      Q => \^a\(16),
      R => '0'
    );
\a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => ref_in(1),
      Q => \^a\(1),
      R => '0'
    );
\a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => ref_in(2),
      Q => \^a\(2),
      R => '0'
    );
\a_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => ref_in(3),
      Q => \^a\(3),
      R => '0'
    );
\a_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => ref_in(4),
      Q => \^a\(4),
      R => '0'
    );
\a_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => ref_in(5),
      Q => \^a\(5),
      R => '0'
    );
\a_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => ref_in(6),
      Q => \^a\(6),
      R => '0'
    );
\a_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => ref_in(7),
      Q => \^a\(7),
      R => '0'
    );
\a_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => ref_in(8),
      Q => \^a\(8),
      R => '0'
    );
\a_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => ref_in(9),
      Q => \^a\(9),
      R => '0'
    );
\d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => adc_in(0),
      Q => d(0),
      R => '0'
    );
\d_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => adc_in(10),
      Q => d(10),
      R => '0'
    );
\d_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => adc_in(11),
      Q => d(11),
      R => '0'
    );
\d_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => adc_in(12),
      Q => d(12),
      R => '0'
    );
\d_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => adc_in(13),
      Q => d(13),
      R => '0'
    );
\d_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => adc_in(14),
      Q => d(14),
      R => '0'
    );
\d_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => adc_in(15),
      Q => d(15),
      R => '0'
    );
\d_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => adc_in(16),
      Q => d(16),
      R => '0'
    );
\d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => adc_in(1),
      Q => d(1),
      R => '0'
    );
\d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => adc_in(2),
      Q => d(2),
      R => '0'
    );
\d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => adc_in(3),
      Q => d(3),
      R => '0'
    );
\d_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => adc_in(4),
      Q => d(4),
      R => '0'
    );
\d_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => adc_in(5),
      Q => d(5),
      R => '0'
    );
\d_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => adc_in(6),
      Q => d(6),
      R => '0'
    );
\d_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => adc_in(7),
      Q => d(7),
      R => '0'
    );
\d_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => adc_in(8),
      Q => d(8),
      R => '0'
    );
\d_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => start_in,
      D => adc_in(9),
      Q => d(9),
      R => '0'
    );
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
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => A(16),
      A(28) => A(16),
      A(27) => A(16),
      A(26) => A(16),
      A(25) => A(16),
      A(24) => A(16),
      A(23) => A(16),
      A(22) => A(16),
      A(21) => A(16),
      A(20) => A(16),
      A(19) => A(16),
      A(18) => A(16),
      A(17) => A(16),
      A(16 downto 0) => A(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => ki_in(16),
      B(16 downto 0) => ki_in(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => loop_in(33),
      C(46) => loop_in(33),
      C(45) => loop_in(33),
      C(44) => loop_in(33),
      C(43) => loop_in(33),
      C(42) => loop_in(33),
      C(41) => loop_in(33),
      C(40) => loop_in(33),
      C(39) => loop_in(33),
      C(38) => loop_in(33),
      C(37) => loop_in(33),
      C(36) => loop_in(33),
      C(35) => loop_in(33),
      C(34) => loop_in(33),
      C(33 downto 0) => loop_in(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => start_in,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => start_in,
      CEC => start_in,
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => start_in,
      CEP => start_in,
      CLK => clk_in,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_p_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_p_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => y_out(33 downto 0),
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
sub0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sub0_carry_n_0,
      CO(2) => sub0_carry_n_1,
      CO(1) => sub0_carry_n_2,
      CO(0) => sub0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => \^a\(3 downto 0),
      O(3 downto 0) => A(3 downto 0),
      S(3) => sub0_carry_i_1_n_0,
      S(2) => sub0_carry_i_2_n_0,
      S(1) => sub0_carry_i_3_n_0,
      S(0) => sub0_carry_i_4_n_0
    );
\sub0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sub0_carry_n_0,
      CO(3) => \sub0_carry__0_n_0\,
      CO(2) => \sub0_carry__0_n_1\,
      CO(1) => \sub0_carry__0_n_2\,
      CO(0) => \sub0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^a\(7 downto 4),
      O(3 downto 0) => A(7 downto 4),
      S(3) => \sub0_carry__0_i_1_n_0\,
      S(2) => \sub0_carry__0_i_2_n_0\,
      S(1) => \sub0_carry__0_i_3_n_0\,
      S(0) => \sub0_carry__0_i_4_n_0\
    );
\sub0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^a\(7),
      I1 => d(7),
      O => \sub0_carry__0_i_1_n_0\
    );
\sub0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^a\(6),
      I1 => d(6),
      O => \sub0_carry__0_i_2_n_0\
    );
\sub0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^a\(5),
      I1 => d(5),
      O => \sub0_carry__0_i_3_n_0\
    );
\sub0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^a\(4),
      I1 => d(4),
      O => \sub0_carry__0_i_4_n_0\
    );
\sub0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sub0_carry__0_n_0\,
      CO(3) => \sub0_carry__1_n_0\,
      CO(2) => \sub0_carry__1_n_1\,
      CO(1) => \sub0_carry__1_n_2\,
      CO(0) => \sub0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^a\(11 downto 8),
      O(3 downto 0) => A(11 downto 8),
      S(3) => \sub0_carry__1_i_1_n_0\,
      S(2) => \sub0_carry__1_i_2_n_0\,
      S(1) => \sub0_carry__1_i_3_n_0\,
      S(0) => \sub0_carry__1_i_4_n_0\
    );
\sub0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^a\(11),
      I1 => d(11),
      O => \sub0_carry__1_i_1_n_0\
    );
\sub0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^a\(10),
      I1 => d(10),
      O => \sub0_carry__1_i_2_n_0\
    );
\sub0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^a\(9),
      I1 => d(9),
      O => \sub0_carry__1_i_3_n_0\
    );
\sub0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^a\(8),
      I1 => d(8),
      O => \sub0_carry__1_i_4_n_0\
    );
\sub0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sub0_carry__1_n_0\,
      CO(3) => \sub0_carry__2_n_0\,
      CO(2) => \sub0_carry__2_n_1\,
      CO(1) => \sub0_carry__2_n_2\,
      CO(0) => \sub0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^a\(15 downto 12),
      O(3 downto 0) => A(15 downto 12),
      S(3) => \sub0_carry__2_i_1_n_0\,
      S(2) => \sub0_carry__2_i_2_n_0\,
      S(1) => \sub0_carry__2_i_3_n_0\,
      S(0) => \sub0_carry__2_i_4_n_0\
    );
\sub0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^a\(15),
      I1 => d(15),
      O => \sub0_carry__2_i_1_n_0\
    );
\sub0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^a\(14),
      I1 => d(14),
      O => \sub0_carry__2_i_2_n_0\
    );
\sub0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^a\(13),
      I1 => d(13),
      O => \sub0_carry__2_i_3_n_0\
    );
\sub0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^a\(12),
      I1 => d(12),
      O => \sub0_carry__2_i_4_n_0\
    );
\sub0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sub0_carry__2_n_0\,
      CO(3 downto 0) => \NLW_sub0_carry__3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_sub0_carry__3_O_UNCONNECTED\(3 downto 1),
      O(0) => A(16),
      S(3 downto 1) => B"000",
      S(0) => \sub0_carry__3_i_1_n_0\
    );
\sub0_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^a\(16),
      I1 => d(16),
      O => \sub0_carry__3_i_1_n_0\
    );
sub0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^a\(3),
      I1 => d(3),
      O => sub0_carry_i_1_n_0
    );
sub0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^a\(2),
      I1 => d(2),
      O => sub0_carry_i_2_n_0
    );
sub0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^a\(1),
      I1 => d(1),
      O => sub0_carry_i_3_n_0
    );
sub0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^a\(0),
      I1 => d(0),
      O => sub0_carry_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_DSP_Integrator_0_0 is
  port (
    ki_in : in STD_LOGIC_VECTOR ( 16 downto 0 );
    ref_in : in STD_LOGIC_VECTOR ( 16 downto 0 );
    adc_in : in STD_LOGIC_VECTOR ( 16 downto 0 );
    loop_in : in STD_LOGIC_VECTOR ( 33 downto 0 );
    y_out : out STD_LOGIC_VECTOR ( 33 downto 0 );
    start_in : in STD_LOGIC;
    clk_in : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pwm_controller_DSP_Integrator_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pwm_controller_DSP_Integrator_0_0 : entity is "pwm_controller_DSP_Integrator_0_0,DSP_Integrator,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of pwm_controller_DSP_Integrator_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of pwm_controller_DSP_Integrator_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of pwm_controller_DSP_Integrator_0_0 : entity is "DSP_Integrator,Vivado 2022.2";
end pwm_controller_DSP_Integrator_0_0;

architecture STRUCTURE of pwm_controller_DSP_Integrator_0_0 is
begin
U0: entity work.pwm_controller_DSP_Integrator_0_0_DSP_Integrator
     port map (
      adc_in(16 downto 0) => adc_in(16 downto 0),
      clk_in => clk_in,
      ki_in(16 downto 0) => ki_in(16 downto 0),
      loop_in(33 downto 0) => loop_in(33 downto 0),
      ref_in(16 downto 0) => ref_in(16 downto 0),
      start_in => start_in,
      y_out(33 downto 0) => y_out(33 downto 0)
    );
end STRUCTURE;
