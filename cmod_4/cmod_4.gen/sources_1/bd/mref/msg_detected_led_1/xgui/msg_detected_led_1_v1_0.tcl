# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "clk_i_freq" -parent ${Page_0}
  ipgui::add_param $IPINST -name "data_i_baud" -parent ${Page_0}
  ipgui::add_param $IPINST -name "size_msg" -parent ${Page_0}


}

proc update_PARAM_VALUE.clk_i_freq { PARAM_VALUE.clk_i_freq } {
	# Procedure called to update clk_i_freq when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.clk_i_freq { PARAM_VALUE.clk_i_freq } {
	# Procedure called to validate clk_i_freq
	return true
}

proc update_PARAM_VALUE.data_i_baud { PARAM_VALUE.data_i_baud } {
	# Procedure called to update data_i_baud when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.data_i_baud { PARAM_VALUE.data_i_baud } {
	# Procedure called to validate data_i_baud
	return true
}

proc update_PARAM_VALUE.size_msg { PARAM_VALUE.size_msg } {
	# Procedure called to update size_msg when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.size_msg { PARAM_VALUE.size_msg } {
	# Procedure called to validate size_msg
	return true
}


proc update_MODELPARAM_VALUE.clk_i_freq { MODELPARAM_VALUE.clk_i_freq PARAM_VALUE.clk_i_freq } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.clk_i_freq}] ${MODELPARAM_VALUE.clk_i_freq}
}

proc update_MODELPARAM_VALUE.data_i_baud { MODELPARAM_VALUE.data_i_baud PARAM_VALUE.data_i_baud } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.data_i_baud}] ${MODELPARAM_VALUE.data_i_baud}
}

proc update_MODELPARAM_VALUE.size_msg { MODELPARAM_VALUE.size_msg PARAM_VALUE.size_msg } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.size_msg}] ${MODELPARAM_VALUE.size_msg}
}

