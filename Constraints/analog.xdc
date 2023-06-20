#set_property IOSTANDARD LVCMOS33 [get_ports Vaux1_0_v_n]
#set_property IOSTANDARD LVCMOS33 [get_ports Vaux1_0_v_p]
#set_property PACKAGE_PIN D18 [get_ports Vaux1_0_v_n]
#set_property PACKAGE_PIN E17 [get_ports Vaux1_0_v_p]

set_property IOSTANDARD LVCMOS33 [get_ports Vaux5_0_v_n]
set_property IOSTANDARD LVCMOS33 [get_ports Vaux5_0_v_p]
set_property PACKAGE_PIN H20 [get_ports Vaux5_0_v_n]
set_property PACKAGE_PIN J20 [get_ports Vaux5_0_v_p]

set_property IOSTANDARD LVCMOS33 [get_ports Vaux13_0_v_n]
set_property IOSTANDARD LVCMOS33 [get_ports Vaux13_0_v_p]
set_property PACKAGE_PIN G20 [get_ports Vaux13_0_v_n]
set_property PACKAGE_PIN G19 [get_ports Vaux13_0_v_p]

## Arduino analog channels
#set_property -dict {PACKAGE_PIN D18 IOSTANDARD LVCMOS33} [get_ports Vaux1_v_n]
#set_property -dict {PACKAGE_PIN E17 IOSTANDARD LVCMOS33} [get_ports Vaux1_v_p]
#set_property -dict {PACKAGE_PIN E19 IOSTANDARD LVCMOS33} [get_ports Vaux9_v_n]
#set_property -dict {PACKAGE_PIN E18 IOSTANDARD LVCMOS33} [get_ports Vaux9_v_p]
#set_property -dict {PACKAGE_PIN J14 IOSTANDARD LVCMOS33} [get_ports Vaux6_v_n]
#set_property -dict {PACKAGE_PIN K14 IOSTANDARD LVCMOS33} [get_ports Vaux6_v_p]
#set_property -dict {PACKAGE_PIN J16 IOSTANDARD LVCMOS33} [get_ports Vaux15_v_n]
#set_property -dict {PACKAGE_PIN K16 IOSTANDARD LVCMOS33} [get_ports Vaux15_v_p]
#set_property -dict {PACKAGE_PIN H20 IOSTANDARD LVCMOS33} [get_ports Vaux5_0_v_n]    #channel ID 21
#set_property -dict {PACKAGE_PIN J20 IOSTANDARD LVCMOS33} [get_ports Vaux5_0_v_p]    
#set_property -dict {PACKAGE_PIN G20 IOSTANDARD LVCMOS33} [get_ports Vaux13_0_v_n]   #channel ID 29
#set_property -dict {PACKAGE_PIN G19 IOSTANDARD LVCMOS33} [get_ports Vaux13_0_v_p]

set_property IOSTANDARD LVCMOS33 [get_ports pwm_o_0]
set_property PACKAGE_PIN V17 [get_ports pwm_o_0]