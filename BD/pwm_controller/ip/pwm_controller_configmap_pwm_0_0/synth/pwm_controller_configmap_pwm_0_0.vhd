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

-- IP VLNV: xilinx.com:module_ref:configmap_pwm:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY pwm_controller_configmap_pwm_0_0 IS
  PORT (
    resetn_o : OUT STD_LOGIC;
    sawtri_o : OUT STD_LOGIC;
    async_o : OUT STD_LOGIC;
    upd_peak_o : OUT STD_LOGIC;
    upd_valley_o : OUT STD_LOGIC;
    acq_free_o : OUT STD_LOGIC;
    acq_max_o : OUT STD_LOGIC;
    acq_cmp_o : OUT STD_LOGIC;
    acq_half_o : OUT STD_LOGIC;
    acq_zero_o : OUT STD_LOGIC;
    en_snoop_o : OUT STD_LOGIC;
    dsp_start_o : OUT STD_LOGIC;
    dsp_bypass_o : OUT STD_LOGIC;
    data_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END pwm_controller_configmap_pwm_0_0;

ARCHITECTURE pwm_controller_configmap_pwm_0_0_arch OF pwm_controller_configmap_pwm_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF pwm_controller_configmap_pwm_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT configmap_pwm IS
    GENERIC (
      RESETN_BIT : INTEGER;
      SAWTRI_BIT : INTEGER;
      ASYNC_BIT : INTEGER;
      UPD_PEAK_BIT : INTEGER;
      UPD_VALLEY_BIT : INTEGER;
      ACQ_FREE_BIT : INTEGER;
      ACQ_MAX_BIT : INTEGER;
      ACQ_CMP_BIT : INTEGER;
      ACQ_HALF_BIT : INTEGER;
      ACQ_ZERO_BIT : INTEGER;
      EN_SNOOP_BIT : INTEGER;
      DSP_START_BIT : INTEGER;
      DSP_BYPASS_BIT : INTEGER;
      DATA_WIDTH : INTEGER
    );
    PORT (
      resetn_o : OUT STD_LOGIC;
      sawtri_o : OUT STD_LOGIC;
      async_o : OUT STD_LOGIC;
      upd_peak_o : OUT STD_LOGIC;
      upd_valley_o : OUT STD_LOGIC;
      acq_free_o : OUT STD_LOGIC;
      acq_max_o : OUT STD_LOGIC;
      acq_cmp_o : OUT STD_LOGIC;
      acq_half_o : OUT STD_LOGIC;
      acq_zero_o : OUT STD_LOGIC;
      en_snoop_o : OUT STD_LOGIC;
      dsp_start_o : OUT STD_LOGIC;
      dsp_bypass_o : OUT STD_LOGIC;
      data_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT configmap_pwm;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF pwm_controller_configmap_pwm_0_0_arch: ARCHITECTURE IS "configmap_pwm,Vivado 2022.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF pwm_controller_configmap_pwm_0_0_arch : ARCHITECTURE IS "pwm_controller_configmap_pwm_0_0,configmap_pwm,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF pwm_controller_configmap_pwm_0_0_arch: ARCHITECTURE IS "pwm_controller_configmap_pwm_0_0,configmap_pwm,{x_ipProduct=Vivado 2022.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=configmap_pwm,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,RESETN_BIT=0,SAWTRI_BIT=1,ASYNC_BIT=2,UPD_PEAK_BIT=3,UPD_VALLEY_BIT=4,ACQ_FREE_BIT=5,ACQ_MAX_BIT=6,ACQ_CMP_BIT=7,ACQ_HALF_BIT=8,ACQ_ZERO_BIT=9,EN_SNOOP_BIT=10,DSP_START_BIT=11,DSP_BYPASS_BIT=12,DATA_WIDTH=32}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF pwm_controller_configmap_pwm_0_0_arch: ARCHITECTURE IS "module_ref";
BEGIN
  U0 : configmap_pwm
    GENERIC MAP (
      RESETN_BIT => 0,
      SAWTRI_BIT => 1,
      ASYNC_BIT => 2,
      UPD_PEAK_BIT => 3,
      UPD_VALLEY_BIT => 4,
      ACQ_FREE_BIT => 5,
      ACQ_MAX_BIT => 6,
      ACQ_CMP_BIT => 7,
      ACQ_HALF_BIT => 8,
      ACQ_ZERO_BIT => 9,
      EN_SNOOP_BIT => 10,
      DSP_START_BIT => 11,
      DSP_BYPASS_BIT => 12,
      DATA_WIDTH => 32
    )
    PORT MAP (
      resetn_o => resetn_o,
      sawtri_o => sawtri_o,
      async_o => async_o,
      upd_peak_o => upd_peak_o,
      upd_valley_o => upd_valley_o,
      acq_free_o => acq_free_o,
      acq_max_o => acq_max_o,
      acq_cmp_o => acq_cmp_o,
      acq_half_o => acq_half_o,
      acq_zero_o => acq_zero_o,
      en_snoop_o => en_snoop_o,
      dsp_start_o => dsp_start_o,
      dsp_bypass_o => dsp_bypass_o,
      data_i => data_i
    );
END pwm_controller_configmap_pwm_0_0_arch;
