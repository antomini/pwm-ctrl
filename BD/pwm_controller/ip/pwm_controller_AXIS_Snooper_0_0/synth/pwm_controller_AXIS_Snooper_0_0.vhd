-- (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:AXIS_Snooper:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY pwm_controller_AXIS_Snooper_0_0 IS
  PORT (
    adcA_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    adcB_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    idA_o : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    idB_o : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    en_out_i : IN STD_LOGIC;
    s_axis_aclk : IN STD_LOGIC;
    s_axis_aresetn : IN STD_LOGIC;
    s_axis_tvalid : IN STD_LOGIC;
    s_axis_tready : OUT STD_LOGIC;
    s_axis_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axis_tid : IN STD_LOGIC_VECTOR(4 DOWNTO 0)
  );
END pwm_controller_AXIS_Snooper_0_0;

ARCHITECTURE pwm_controller_AXIS_Snooper_0_0_arch OF pwm_controller_AXIS_Snooper_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF pwm_controller_AXIS_Snooper_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT AXIS_Snooper IS
    GENERIC (
      ID_WIDTH : INTEGER;
      SNOOP_ID_A : INTEGER;
      SNOOP_ID_B : INTEGER;
      DATA_WIDTH : INTEGER
    );
    PORT (
      adcA_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      adcB_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      idA_o : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      idB_o : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      en_out_i : IN STD_LOGIC;
      s_axis_aclk : IN STD_LOGIC;
      s_axis_aresetn : IN STD_LOGIC;
      s_axis_tvalid : IN STD_LOGIC;
      s_axis_tready : OUT STD_LOGIC;
      s_axis_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axis_tid : IN STD_LOGIC_VECTOR(4 DOWNTO 0)
    );
  END COMPONENT AXIS_Snooper;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF pwm_controller_AXIS_Snooper_0_0_arch: ARCHITECTURE IS "AXIS_Snooper,Vivado 2022.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF pwm_controller_AXIS_Snooper_0_0_arch : ARCHITECTURE IS "pwm_controller_AXIS_Snooper_0_0,AXIS_Snooper,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF pwm_controller_AXIS_Snooper_0_0_arch: ARCHITECTURE IS "pwm_controller_AXIS_Snooper_0_0,AXIS_Snooper,{x_ipProduct=Vivado 2022.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=AXIS_Snooper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,ID_WIDTH=5,SNOOP_ID_A=21,SNOOP_ID_B=29,DATA_WIDTH=16}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF pwm_controller_AXIS_Snooper_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_aclk: SIGNAL IS "XIL_INTERFACENAME s_axis_aclk, ASSOCIATED_BUSIF s_axis, ASSOCIATED_RESET s_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN pwm_controller_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 s_axis_aclk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_aresetn: SIGNAL IS "XIL_INTERFACENAME s_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 s_axis_aresetn RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tid: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_tvalid: SIGNAL IS "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 5, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN pwm_controller_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TVALID";
BEGIN
  U0 : AXIS_Snooper
    GENERIC MAP (
      ID_WIDTH => 5,
      SNOOP_ID_A => 21,
      SNOOP_ID_B => 29,
      DATA_WIDTH => 16
    )
    PORT MAP (
      adcA_o => adcA_o,
      adcB_o => adcB_o,
      idA_o => idA_o,
      idB_o => idB_o,
      en_out_i => en_out_i,
      s_axis_aclk => s_axis_aclk,
      s_axis_aresetn => s_axis_aresetn,
      s_axis_tvalid => s_axis_tvalid,
      s_axis_tready => s_axis_tready,
      s_axis_tdata => s_axis_tdata,
      s_axis_tid => s_axis_tid
    );
END pwm_controller_AXIS_Snooper_0_0_arch;
