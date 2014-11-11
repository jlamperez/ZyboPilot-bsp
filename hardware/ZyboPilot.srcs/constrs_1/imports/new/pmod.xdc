# PWM0-7 on PMOD STD (JE)

set_property PACKAGE_PIN V12 [get_ports {PWM[0]}]
set_property PACKAGE_PIN W16 [get_ports {PWM[1]}]
set_property PACKAGE_PIN J15 [get_ports {PWM[2]}]
set_property PACKAGE_PIN H15 [get_ports {PWM[3]}]
set_property PACKAGE_PIN V13 [get_ports {PWM[4]}]
set_property PACKAGE_PIN U17 [get_ports {PWM[5]}]
set_property PACKAGE_PIN T17 [get_ports {PWM[6]}]
set_property PACKAGE_PIN Y17 [get_ports {PWM[7]}]

# PWM8-11 on PMOD HISPD (JB)
set_property PACKAGE_PIN Y18 [get_ports {PWM[8]}]
set_property PACKAGE_PIN Y19 [get_ports {PWM[9]}]
set_property PACKAGE_PIN W18 [get_ports {PWM[10]}]
set_property PACKAGE_PIN W19 [get_ports {PWM[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PWM[*]}]

# Pulse train input on PMOD HiSpeed (JB)
# Drive the neighbouring pin to GND to reduce cross talk on the coupled traces
set_property PACKAGE_PIN T20 [get_ports {RCVR_IN}]
set_property IOSTANDARD LVCMOS33 [get_ports {RCVR_IN}]
set_property PACKAGE_PIN U20 [get_ports {RCVR_GND[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RCVR_GND[0]}]

# Primary serial (PORTA) in UART1 (MIO) - no constraints required

# Telemetry serial (PORTB) on PMOD XADC (JA) but used in digital IO mode
set_property PACKAGE_PIN N15 [get_ports {PORTB_TX}]
set_property PACKAGE_PIN L14 [get_ports {PORTB_RX}]
set_property PACKAGE_PIN K16 [get_ports {PORTB_CTSN}]
set_property PACKAGE_PIN K14 [get_ports {PORTB_RTSN}]
set_property IOSTANDARD LVCMOS33 [get_ports {PORTB_TX}]
set_property IOSTANDARD LVCMOS33 [get_ports {PORTB_RX}]
set_property IOSTANDARD LVCMOS33 [get_ports {PORTB_CTSN}]
set_property IOSTANDARD LVCMOS33 [get_ports {PORTB_RTSN}]

# GPS serial (PORTC on PMOD XADC (JA) in digital IO mode
#set_property PACKAGE_PIN N16 [get_ports {PORTC_txd}]
#set_property PACKAGE_PIN L15 [get_ports {PORTC_rxd}]
#set_property IOSTANDARD LVCMOS33 [get_ports {PORTC_txd}]
#set_property IOSTANDARD LVCMOS33 [get_ports {PORTC_rxd}]

# SPI on PMOD JF (MIO)
# No constraints required