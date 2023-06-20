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

-- IP VLNV: xilinx.com:module_ref:trigger_acquisition:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY pwm_controller_trigger_acquisition_0_0 IS
  PORT (
    acq_o : OUT STD_LOGIC;
    free_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    max_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    cmp_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    half_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    counter_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    en_free_i : IN STD_LOGIC;
    en_max_i : IN STD_LOGIC;
    en_cmp_i : IN STD_LOGIC;
    en_half_i : IN STD_LOGIC;
    en_zero_i : IN STD_LOGIC
  );
END pwm_controller_trigger_acquisition_0_0;

ARCHITECTURE pwm_controller_trigger_acquisition_0_0_arch OF pwm_controller_trigger_acquisition_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF pwm_controller_trigger_acquisition_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT trigger_acquisition IS
    GENERIC (
      CNT_BIT : INTEGER
    );
    PORT (
      acq_o : OUT STD_LOGIC;
      free_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      max_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      cmp_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      half_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      counter_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      en_free_i : IN STD_LOGIC;
      en_max_i : IN STD_LOGIC;
      en_cmp_i : IN STD_LOGIC;
      en_half_i : IN STD_LOGIC;
      en_zero_i : IN STD_LOGIC
    );
  END COMPONENT trigger_acquisition;
BEGIN
  U0 : trigger_acquisition
    GENERIC MAP (
      CNT_BIT => 16
    )
    PORT MAP (
      acq_o => acq_o,
      free_i => free_i,
      max_i => max_i,
      cmp_i => cmp_i,
      half_i => half_i,
      counter_i => counter_i,
      en_free_i => en_free_i,
      en_max_i => en_max_i,
      en_cmp_i => en_cmp_i,
      en_half_i => en_half_i,
      en_zero_i => en_zero_i
    );
END pwm_controller_trigger_acquisition_0_0_arch;
