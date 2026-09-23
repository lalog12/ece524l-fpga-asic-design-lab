# ECE524 Lab 2: ZedBoard clock, JA keypad Pmod, and JC1/JD1 SSD Pmod.
set_property PACKAGE_PIN Y9 [get_ports {clk}]
create_clock -name sys_clk -period 10.000 -waveform {0.000 5.000} [get_ports {clk}]

# JA[0]..JA[3] are the driven keypad columns; JA[4]..JA[7] are the row inputs.
set_property PACKAGE_PIN Y11  [get_ports {JA[0]}]
set_property PACKAGE_PIN AA11 [get_ports {JA[1]}]
set_property PACKAGE_PIN Y10  [get_ports {JA[2]}]
set_property PACKAGE_PIN AA9  [get_ports {JA[3]}]
set_property PACKAGE_PIN AB11 [get_ports {JA[4]}]
set_property PACKAGE_PIN AB10 [get_ports {JA[5]}]
set_property PACKAGE_PIN AB9  [get_ports {JA[6]}]
set_property PACKAGE_PIN AA8  [get_ports {JA[7]}]

set_property IOSTANDARD LVCMOS33 [get_ports {clk JA[*]}]

# Pmod SSD uses two separate 6-pin headers.
# SSD J1 (AA..AD) -> ZedBoard JC1 (upper high-speed header).
set_property PACKAGE_PIN AB6 [get_ports {JC[0]}]
set_property PACKAGE_PIN AB7 [get_ports {JC[1]}]
set_property PACKAGE_PIN AA4 [get_ports {JC[2]}]
set_property PACKAGE_PIN Y4  [get_ports {JC[3]}]

# SSD J2 (AE..AG,C) -> ZedBoard JD1 (lower high-speed header).
set_property PACKAGE_PIN W7 [get_ports {JD[0]}]
set_property PACKAGE_PIN V7 [get_ports {JD[1]}]
set_property PACKAGE_PIN V4 [get_ports {JD[2]}]
set_property PACKAGE_PIN V5 [get_ports {JD[3]}]

# led[0] mirrors the active digit-select signal as a board debug indicator.
set_property PACKAGE_PIN V8  [get_ports {led[0]}]
# Remaining led bits are useful debug indicators on the ZedBoard.
set_property PACKAGE_PIN T21 [get_ports {led[1]}]
set_property PACKAGE_PIN U22 [get_ports {led[2]}]
set_property PACKAGE_PIN U21 [get_ports {led[3]}]
set_property PACKAGE_PIN V22 [get_ports {led[4]}]
set_property PACKAGE_PIN W22 [get_ports {led[5]}]
set_property PACKAGE_PIN U19 [get_ports {led[6]}]
set_property PACKAGE_PIN U14 [get_ports {led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[*] JC[*] JD[*]}]