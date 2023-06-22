--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_0def_wrapper.bd
--Design : bd_0def_wrapper
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0def_wrapper is
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
end bd_0def_wrapper;

architecture STRUCTURE of bd_0def_wrapper is
  component bd_0def is
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
  end component bd_0def;
begin
bd_0def_i: component bd_0def
     port map (
      clk => clk,
      probe0(15 downto 0) => probe0(15 downto 0),
      probe1(15 downto 0) => probe1(15 downto 0),
      probe2(0) => probe2(0),
      probe3(0) => probe3(0),
      probe4(0) => probe4(0),
      probe5(0) => probe5(0),
      probe6(0) => probe6(0),
      probe7(0) => probe7(0),
      probe8(11 downto 0) => probe8(11 downto 0),
      probe9(15 downto 0) => probe9(15 downto 0)
    );
end STRUCTURE;
