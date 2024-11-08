## Voltage levels
set_property CFGBVS VCCO [current_design]; 
set_property CONFIG_VOLTAGE 3.3 [current_design];

## Clock signal
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports clk_100M];
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk_100M];

## CPU reset button
set_property -dict {PACKAGE_PIN C12 IOSTANDARD LVCMOS33} [get_ports reset_n];

## USB UART interface
set_property -dict {PACKAGE_PIN D4 IOSTANDARD LVCMOS33} [get_ports uart_tx_usb];
set_property -dict {PACKAGE_PIN C4 IOSTANDARD LVCMOS33} [get_ports uart_rx];
#set_property -dict {PACKAGE_PIN E5 IOSTANDARD LVCMOS33} [get_ports uart_cts]
#set_property -dict {PACKAGE_PIN D3 IOSTANDARD LVCMOS33} [get_ports uart_rts]


## Push buttons
#set_property -dict {PACKAGE_PIN M17 IOSTANDARD LVCMOS33} [get_ports {button[0]}]; # Right
#set_property -dict {PACKAGE_PIN P17 IOSTANDARD LVCMOS33} [get_ports {button[1]}]; # Left
#set_property -dict {PACKAGE_PIN P18 IOSTANDARD LVCMOS33} [get_ports {button[2]}]; # Down
#set_property -dict {PACKAGE_PIN M18 IOSTANDARD LVCMOS33} [get_ports {button[3]}]; # Up



## Color LEDs
#set_property -dict {PACKAGE_PIN N15 IOSTANDARD LVCMOS33} [get_ports {rgb_led16[2]}]
#set_property -dict {PACKAGE_PIN M16 IOSTANDARD LVCMOS33} [get_ports {rgb_led16[1]}]
#set_property -dict {PACKAGE_PIN R12 IOSTANDARD LVCMOS33} [get_ports {rgb_led16[0]}]
#set_property -dict {PACKAGE_PIN N16 IOSTANDARD LVCMOS33} [get_ports rgb_led17[2]]; # R
#set_property -dict {PACKAGE_PIN R11 IOSTANDARD LVCMOS33} [get_ports rgb_led17[1]]; # G
#set_property -dict {PACKAGE_PIN G14 IOSTANDARD LVCMOS33} [get_ports rgb_led17[0]]; # B

## Micro SD connector
#set_property -dict {PACKAGE_PIN E2 IOSTANDARD LVCMOS33} [get_ports {SD_RESET}]
#set_property -dict {PACKAGE_PIN A1 IOSTANDARD LVCMOS33} [get_ports {SD_CD}]
#set_property -dict {PACKAGE_PIN B1 IOSTANDARD LVCMOS33} [get_ports {SD_SCK}]
#set_property -dict {PACKAGE_PIN C1 IOSTANDARD LVCMOS33} [get_ports {SD_CMD}]
#set_property -dict {PACKAGE_PIN C2 IOSTANDARD LVCMOS33} [get_ports {SD_DAT[0]}]
#set_property -dict {PACKAGE_PIN E1 IOSTANDARD LVCMOS33} [get_ports {SD_DAT[1]}]
#set_property -dict {PACKAGE_PIN F1 IOSTANDARD LVCMOS33} [get_ports {SD_DAT[2]}]
#set_property -dict {PACKAGE_PIN D2 IOSTANDARD LVCMOS33} [get_ports {SD_DAT[3]}]

## VGA Connector
#set_property -dict {PACKAGE_PIN A3  IOSTANDARD LVCMOS33} [get_ports {vga_r[0]}]
#set_property -dict {PACKAGE_PIN B4  IOSTANDARD LVCMOS33} [get_ports {vga_r[1]}]
#set_property -dict {PACKAGE_PIN C5  IOSTANDARD LVCMOS33} [get_ports {vga_r[2]}]
#set_property -dict {PACKAGE_PIN A4  IOSTANDARD LVCMOS33} [get_ports {vga_r[3]}]
#set_property -dict {PACKAGE_PIN C6  IOSTANDARD LVCMOS33} [get_ports {vga_g[0]}]
#set_property -dict {PACKAGE_PIN A5  IOSTANDARD LVCMOS33} [get_ports {vga_g[1]}]
#set_property -dict {PACKAGE_PIN B6  IOSTANDARD LVCMOS33} [get_ports {vga_g[2]}]
#set_property -dict {PACKAGE_PIN A6  IOSTANDARD LVCMOS33} [get_ports {vga_g[3]}]
#set_property -dict {PACKAGE_PIN B7  IOSTANDARD LVCMOS33} [get_ports {vga_b[0]}]
#set_property -dict {PACKAGE_PIN C7  IOSTANDARD LVCMOS33} [get_ports {vga_b[1]}]
#set_property -dict {PACKAGE_PIN D7  IOSTANDARD LVCMOS33} [get_ports {vga_b[2]}]
#set_property -dict {PACKAGE_PIN D8  IOSTANDARD LVCMOS33} [get_ports {vga_b[3]}]
#set_property -dict {PACKAGE_PIN B11 IOSTANDARD LVCMOS33} [get_ports vga_hs]
#set_property -dict {PACKAGE_PIN B12 IOSTANDARD LVCMOS33} [get_ports vga_vs]

##7 segment display
set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { segmentos[6] }]; #IO_L24N_T3_A00_D16_14 Sch=ca
set_property -dict { PACKAGE_PIN R10   IOSTANDARD LVCMOS33 } [get_ports { segmentos[5] }]; #IO_25_14 Sch=cb
set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { segmentos[4] }]; #IO_25_15 Sch=cc
set_property -dict { PACKAGE_PIN K13   IOSTANDARD LVCMOS33 } [get_ports { segmentos[3] }]; #IO_L17P_T2_A26_15 Sch=cd
set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { segmentos[2] }]; #IO_L13P_T2_MRCC_14 Sch=ce
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { segmentos[1] }]; #IO_L19P_T3_A10_D26_14 Sch=cf
set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports { segmentos[0] }]; #IO_L4P_T0_D04_14 Sch=cg
##set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { DP }]; #IO_L19N_T3_A21_VREF_15 Sch=dp
set_property -dict { PACKAGE_PIN J17   IOSTANDARD LVCMOS33 } [get_ports { AN[0] }]; #IO_L23P_T3_FOE_B_15 Sch=an[0]
set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports { AN[1] }]; #IO_L23N_T3_FWE_B_15 Sch=an[1]
set_property -dict { PACKAGE_PIN T9    IOSTANDARD LVCMOS33 } [get_ports { AN[2] }]; #IO_L24P_T3_A01_D17_14 Sch=an[2]
set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports { AN[3] }]; #IO_L19P_T3_A22_15 Sch=an[3]
set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { AN[4] }]; #IO_L8N_T1_D12_14 Sch=an[4]
set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { AN[5] }]; #IO_L14P_T2_SRCC_14 Sch=an[5]
set_property -dict { PACKAGE_PIN K2    IOSTANDARD LVCMOS33 } [get_ports { AN[6] }]; #IO_L23P_T3_35 Sch=an[6]
set_property -dict { PACKAGE_PIN U13   IOSTANDARD LVCMOS33 } [get_ports { AN[7] }]; #IO_L23N_T3_A02_D18_14 Sch=an[7]