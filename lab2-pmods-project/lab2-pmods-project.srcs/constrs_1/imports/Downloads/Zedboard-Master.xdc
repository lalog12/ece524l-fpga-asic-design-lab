# ECE524 Lab 2: ZedBoard clock, JA keypad Pmod, and JC1/JD1 SSD Pmod.
set_property PACKAGE_PIN Y9 [get_ports {clk}]
create_clock -name sys_clk -period 10.000 -waveform {0.000 5.000} [get_ports {clk}]

# JA[0]..JA[3] are the driven keypad columns; JA[4]..JA[7] are the row inputs.
set_property PACKAGE_PIN Y11  [get_ports {JC[0]}]
set_property PACKAGE_PIN AA11 [get_ports {JC[1]}]
set_property PACKAGE_PIN Y10  [get_ports {JC[2]}]
set_property PACKAGE_PIN AA9  [get_ports {JC[3]}]
set_property PACKAGE_PIN AB11 [get_ports {JC[4]}]
set_property PACKAGE_PIN AB10 [get_ports {JC[5]}]
set_property PACKAGE_PIN AB9  [get_ports {JC[6]}]
set_property PACKAGE_PIN AA8  [get_ports {JC[7]}]

set_property IOSTANDARD LVCMOS33 [get_ports {clk JC[*]}]

# Pmod SSD uses two separate 6-pin headers.
# SSD J1 (AA..AD) -> ZedBoard JC1 (upper high-speed header).
set_property PACKAGE_PIN AB6 [get_ports {display_seg[0]}]
set_property PACKAGE_PIN AB7 [get_ports {display_seg[1]}]
set_property PACKAGE_PIN AA4 [get_ports {display_seg[2]}]
set_property PACKAGE_PIN Y4  [get_ports {display_seg[3]}]

# SSD J2 (AE..AG,C) -> ZedBoard JD1 (lower high-speed header).
set_property PACKAGE_PIN W7 [get_ports {display_seg[4]}]
set_property PACKAGE_PIN V7 [get_ports {display_seg[5]}]
set_property PACKAGE_PIN V4 [get_ports {display_seg[6]}]
set_property PACKAGE_PIN V5 [get_ports {sevenSegSelect}]



set_property IOSTANDARD LVCMOS33 [get_ports { JC[*] display_seg[*] sevenSegSelect}]