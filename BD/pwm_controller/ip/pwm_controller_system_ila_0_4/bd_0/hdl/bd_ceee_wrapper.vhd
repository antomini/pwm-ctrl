--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_ceee_wrapper.bd
--Design : bd_ceee_wrapper
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_ceee_wrapper is
  port (
    SLOT_0_AXI_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    SLOT_0_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_arready : in STD_LOGIC;
    SLOT_0_AXI_arvalid : in STD_LOGIC;
    SLOT_0_AXI_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    SLOT_0_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awready : in STD_LOGIC;
    SLOT_0_AXI_awvalid : in STD_LOGIC;
    SLOT_0_AXI_bready : in STD_LOGIC;
    SLOT_0_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_bvalid : in STD_LOGIC;
    SLOT_0_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_rready : in STD_LOGIC;
    SLOT_0_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_rvalid : in STD_LOGIC;
    SLOT_0_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_wready : in STD_LOGIC;
    SLOT_0_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_wvalid : in STD_LOGIC;
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetn : in STD_LOGIC
  );
end bd_ceee_wrapper;

architecture STRUCTURE of bd_ceee_wrapper is
  component bd_ceee is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetn : in STD_LOGIC;
    SLOT_0_AXI_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    SLOT_0_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_arready : in STD_LOGIC;
    SLOT_0_AXI_arvalid : in STD_LOGIC;
    SLOT_0_AXI_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    SLOT_0_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awready : in STD_LOGIC;
    SLOT_0_AXI_awvalid : in STD_LOGIC;
    SLOT_0_AXI_bready : in STD_LOGIC;
    SLOT_0_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_bvalid : in STD_LOGIC;
    SLOT_0_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_rready : in STD_LOGIC;
    SLOT_0_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_rvalid : in STD_LOGIC;
    SLOT_0_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_wready : in STD_LOGIC;
    SLOT_0_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_wvalid : in STD_LOGIC
  );
  end component bd_ceee;
begin
bd_ceee_i: component bd_ceee
     port map (
      SLOT_0_AXI_araddr(10 downto 0) => SLOT_0_AXI_araddr(10 downto 0),
      SLOT_0_AXI_arprot(2 downto 0) => SLOT_0_AXI_arprot(2 downto 0),
      SLOT_0_AXI_arready => SLOT_0_AXI_arready,
      SLOT_0_AXI_arvalid => SLOT_0_AXI_arvalid,
      SLOT_0_AXI_awaddr(10 downto 0) => SLOT_0_AXI_awaddr(10 downto 0),
      SLOT_0_AXI_awprot(2 downto 0) => SLOT_0_AXI_awprot(2 downto 0),
      SLOT_0_AXI_awready => SLOT_0_AXI_awready,
      SLOT_0_AXI_awvalid => SLOT_0_AXI_awvalid,
      SLOT_0_AXI_bready => SLOT_0_AXI_bready,
      SLOT_0_AXI_bresp(1 downto 0) => SLOT_0_AXI_bresp(1 downto 0),
      SLOT_0_AXI_bvalid => SLOT_0_AXI_bvalid,
      SLOT_0_AXI_rdata(31 downto 0) => SLOT_0_AXI_rdata(31 downto 0),
      SLOT_0_AXI_rready => SLOT_0_AXI_rready,
      SLOT_0_AXI_rresp(1 downto 0) => SLOT_0_AXI_rresp(1 downto 0),
      SLOT_0_AXI_rvalid => SLOT_0_AXI_rvalid,
      SLOT_0_AXI_wdata(31 downto 0) => SLOT_0_AXI_wdata(31 downto 0),
      SLOT_0_AXI_wready => SLOT_0_AXI_wready,
      SLOT_0_AXI_wstrb(3 downto 0) => SLOT_0_AXI_wstrb(3 downto 0),
      SLOT_0_AXI_wvalid => SLOT_0_AXI_wvalid,
      clk => clk,
      probe0(0) => probe0(0),
      probe1(4 downto 0) => probe1(4 downto 0),
      probe2(0) => probe2(0),
      probe3(0) => probe3(0),
      probe4(15 downto 0) => probe4(15 downto 0),
      probe5(0) => probe5(0),
      resetn => resetn
    );
end STRUCTURE;
