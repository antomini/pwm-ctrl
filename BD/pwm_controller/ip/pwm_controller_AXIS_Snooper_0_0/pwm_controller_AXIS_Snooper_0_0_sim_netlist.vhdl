-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Tue Apr 11 10:13:33 2023
-- Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_AXIS_Snooper_0_0/pwm_controller_AXIS_Snooper_0_0_sim_netlist.vhdl
-- Design      : pwm_controller_AXIS_Snooper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_AXIS_Snooper_0_0_AXIS_Snooper is
  port (
    adc_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    id_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pwm_controller_AXIS_Snooper_0_0_AXIS_Snooper : entity is "AXIS_Snooper";
end pwm_controller_AXIS_Snooper_0_0_AXIS_Snooper;

architecture STRUCTURE of pwm_controller_AXIS_Snooper_0_0_AXIS_Snooper is
  signal data_reg0_n_0 : STD_LOGIC;
begin
data_reg0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => s_axis_tid(3),
      I2 => s_axis_tid(1),
      I3 => s_axis_tid(0),
      I4 => s_axis_tid(4),
      I5 => s_axis_tid(2),
      O => data_reg0_n_0
    );
\data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => data_reg0_n_0,
      D => s_axis_tdata(0),
      Q => adc_out(0),
      R => '0'
    );
\data_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => data_reg0_n_0,
      D => s_axis_tdata(10),
      Q => adc_out(10),
      R => '0'
    );
\data_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => data_reg0_n_0,
      D => s_axis_tdata(11),
      Q => adc_out(11),
      R => '0'
    );
\data_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => data_reg0_n_0,
      D => s_axis_tdata(12),
      Q => adc_out(12),
      R => '0'
    );
\data_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => data_reg0_n_0,
      D => s_axis_tdata(13),
      Q => adc_out(13),
      R => '0'
    );
\data_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => data_reg0_n_0,
      D => s_axis_tdata(14),
      Q => adc_out(14),
      R => '0'
    );
\data_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => data_reg0_n_0,
      D => s_axis_tdata(15),
      Q => adc_out(15),
      R => '0'
    );
\data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => data_reg0_n_0,
      D => s_axis_tdata(1),
      Q => adc_out(1),
      R => '0'
    );
\data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => data_reg0_n_0,
      D => s_axis_tdata(2),
      Q => adc_out(2),
      R => '0'
    );
\data_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => data_reg0_n_0,
      D => s_axis_tdata(3),
      Q => adc_out(3),
      R => '0'
    );
\data_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => data_reg0_n_0,
      D => s_axis_tdata(4),
      Q => adc_out(4),
      R => '0'
    );
\data_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => data_reg0_n_0,
      D => s_axis_tdata(5),
      Q => adc_out(5),
      R => '0'
    );
\data_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => data_reg0_n_0,
      D => s_axis_tdata(6),
      Q => adc_out(6),
      R => '0'
    );
\data_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => data_reg0_n_0,
      D => s_axis_tdata(7),
      Q => adc_out(7),
      R => '0'
    );
\data_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => data_reg0_n_0,
      D => s_axis_tdata(8),
      Q => adc_out(8),
      R => '0'
    );
\data_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => data_reg0_n_0,
      D => s_axis_tdata(9),
      Q => adc_out(9),
      R => '0'
    );
\id_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => data_reg0_n_0,
      D => s_axis_tid(0),
      Q => id_out(0),
      R => '0'
    );
\id_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => data_reg0_n_0,
      D => s_axis_tid(1),
      Q => id_out(1),
      R => '0'
    );
\id_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => data_reg0_n_0,
      D => s_axis_tid(2),
      Q => id_out(2),
      R => '0'
    );
\id_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => data_reg0_n_0,
      D => s_axis_tid(3),
      Q => id_out(3),
      R => '0'
    );
\id_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => data_reg0_n_0,
      D => s_axis_tid(4),
      Q => id_out(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_AXIS_Snooper_0_0 is
  port (
    adc_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    id_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tid : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pwm_controller_AXIS_Snooper_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pwm_controller_AXIS_Snooper_0_0 : entity is "pwm_controller_AXIS_Snooper_0_0,AXIS_Snooper,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of pwm_controller_AXIS_Snooper_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of pwm_controller_AXIS_Snooper_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of pwm_controller_AXIS_Snooper_0_0 : entity is "AXIS_Snooper,Vivado 2022.2";
end pwm_controller_AXIS_Snooper_0_0;

architecture STRUCTURE of pwm_controller_AXIS_Snooper_0_0 is
  signal \^s_axis_tvalid\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of s_axis_aclk : signal is "xilinx.com:signal:clock:1.0 s_axis_aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s_axis_aclk : signal is "XIL_INTERFACENAME s_axis_aclk, ASSOCIATED_BUSIF s_axis, ASSOCIATED_RESET s_axis_aresetn, FREQ_HZ 1e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN pwm_controller_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axis_aresetn RST";
  attribute x_interface_parameter of s_axis_aresetn : signal is "XIL_INTERFACENAME s_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_parameter of s_axis_tvalid : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 5, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 1e+08, PHASE 0.0, CLK_DOMAIN pwm_controller_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute x_interface_info of s_axis_tid : signal is "xilinx.com:interface:axis:1.0 s_axis TID";
begin
  \^s_axis_tvalid\ <= s_axis_tvalid;
  s_axis_tready <= \^s_axis_tvalid\;
U0: entity work.pwm_controller_AXIS_Snooper_0_0_AXIS_Snooper
     port map (
      adc_out(15 downto 0) => adc_out(15 downto 0),
      id_out(4 downto 0) => id_out(4 downto 0),
      s_axis_aclk => s_axis_aclk,
      s_axis_tdata(15 downto 0) => s_axis_tdata(15 downto 0),
      s_axis_tid(4 downto 0) => s_axis_tid(4 downto 0),
      s_axis_tvalid => \^s_axis_tvalid\
    );
end STRUCTURE;
