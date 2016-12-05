# TCL File Generated by Component Editor 15.1
# Mon Nov 28 20:58:04 CST 2016
# DO NOT MODIFY


# 
# ft232h "ft232h" v1.0
#  2016.11.28.20:58:04
# 
# 

# 
# request TCL package from ACDS 15.1
# 
package require -exact qsys 15.1


# 
# module ft232h
# 
set_module_property DESCRIPTION ""
set_module_property NAME ft232h
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME ft232h
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL ft232h
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file ft232h.v VERILOG PATH ft232h.v TOP_LEVEL_FILE


# 
# parameters
# 
add_parameter READ_DATA STD_LOGIC_VECTOR 0
set_parameter_property READ_DATA DEFAULT_VALUE 0
set_parameter_property READ_DATA DISPLAY_NAME READ_DATA
set_parameter_property READ_DATA TYPE STD_LOGIC_VECTOR
set_parameter_property READ_DATA UNITS None
set_parameter_property READ_DATA ALLOWED_RANGES 0:511
set_parameter_property READ_DATA HDL_PARAMETER true
add_parameter WRITE_DATA STD_LOGIC_VECTOR 1
set_parameter_property WRITE_DATA DEFAULT_VALUE 1
set_parameter_property WRITE_DATA DISPLAY_NAME WRITE_DATA
set_parameter_property WRITE_DATA TYPE STD_LOGIC_VECTOR
set_parameter_property WRITE_DATA UNITS None
set_parameter_property WRITE_DATA ALLOWED_RANGES 0:511
set_parameter_property WRITE_DATA HDL_PARAMETER true


# 
# display items
# 


# 
# connection point usb
# 
add_interface usb conduit end
set_interface_property usb associatedClock clock
set_interface_property usb associatedReset ""
set_interface_property usb ENABLED true
set_interface_property usb EXPORT_OF ""
set_interface_property usb PORT_NAME_MAP ""
set_interface_property usb CMSIS_SVD_VARIABLES ""
set_interface_property usb SVD_ADDRESS_GROUP ""

add_interface_port usb data usb_data Bidir 8
add_interface_port usb rxf_n usb_rxf_n Input 1
add_interface_port usb txe_n usb_txe_n Input 1
add_interface_port usb rd_n usb_rd_n Output 1
add_interface_port usb wr_n usb_wr_n Output 1
add_interface_port usb clock usb_clock Input 1
add_interface_port usb oe_n usb_oe_n Output 1
add_interface_port usb siwu usb_siwu Output 1


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges BOTH
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset rst_n reset_n Input 1


# 
# connection point avalon
# 
add_interface avalon avalon end
set_interface_property avalon addressUnits WORDS
set_interface_property avalon associatedClock clock
set_interface_property avalon associatedReset reset
set_interface_property avalon bitsPerSymbol 8
set_interface_property avalon burstOnBurstBoundariesOnly false
set_interface_property avalon burstcountUnits WORDS
set_interface_property avalon explicitAddressSpan 0
set_interface_property avalon holdTime 0
set_interface_property avalon linewrapBursts false
set_interface_property avalon maximumPendingReadTransactions 0
set_interface_property avalon maximumPendingWriteTransactions 0
set_interface_property avalon readLatency 0
set_interface_property avalon readWaitTime 1
set_interface_property avalon setupTime 0
set_interface_property avalon timingUnits Cycles
set_interface_property avalon writeWaitTime 0
set_interface_property avalon ENABLED true
set_interface_property avalon EXPORT_OF ""
set_interface_property avalon PORT_NAME_MAP ""
set_interface_property avalon CMSIS_SVD_VARIABLES ""
set_interface_property avalon SVD_ADDRESS_GROUP ""

add_interface_port avalon avalon_address address Input 8
add_interface_port avalon avalon_read read Input 1
add_interface_port avalon avalon_readdata readdata Output 32
add_interface_port avalon avalon_write write Input 1
add_interface_port avalon avalon_writedata writedata Input 32
add_interface_port avalon avalon_waitrequest waitrequest Output 1
set_interface_assignment avalon embeddedsw.configuration.isFlash 0
set_interface_assignment avalon embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon embeddedsw.configuration.isPrintableDevice 0


# 
# connection point tx_irq
# 
add_interface tx_irq interrupt end
set_interface_property tx_irq associatedAddressablePoint avalon
set_interface_property tx_irq associatedClock clock
set_interface_property tx_irq bridgedReceiverOffset ""
set_interface_property tx_irq bridgesToReceiver ""
set_interface_property tx_irq ENABLED true
set_interface_property tx_irq EXPORT_OF ""
set_interface_property tx_irq PORT_NAME_MAP ""
set_interface_property tx_irq CMSIS_SVD_VARIABLES ""
set_interface_property tx_irq SVD_ADDRESS_GROUP ""

add_interface_port tx_irq tx_almost_empty irq Output 1


# 
# connection point rx_irq
# 
add_interface rx_irq interrupt end
set_interface_property rx_irq associatedAddressablePoint avalon
set_interface_property rx_irq associatedClock clock
set_interface_property rx_irq associatedReset reset
set_interface_property rx_irq bridgedReceiverOffset ""
set_interface_property rx_irq bridgesToReceiver ""
set_interface_property rx_irq ENABLED true
set_interface_property rx_irq EXPORT_OF ""
set_interface_property rx_irq PORT_NAME_MAP ""
set_interface_property rx_irq CMSIS_SVD_VARIABLES ""
set_interface_property rx_irq SVD_ADDRESS_GROUP ""

add_interface_port rx_irq rx_almost_full irq Output 1

