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

