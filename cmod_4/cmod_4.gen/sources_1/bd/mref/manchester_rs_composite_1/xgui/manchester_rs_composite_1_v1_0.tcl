# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "GENERATE_MANCHESTER_RS_COMPOSITE_ILA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "GENERATE_RS_SM_ILA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "K" -parent ${Page_0}
  ipgui::add_param $IPINST -name "N" -parent ${Page_0}


}

proc update_PARAM_VALUE.GENERATE_MANCHESTER_RS_COMPOSITE_ILA { PARAM_VALUE.GENERATE_MANCHESTER_RS_COMPOSITE_ILA } {
	# Procedure called to update GENERATE_MANCHESTER_RS_COMPOSITE_ILA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GENERATE_MANCHESTER_RS_COMPOSITE_ILA { PARAM_VALUE.GENERATE_MANCHESTER_RS_COMPOSITE_ILA } {
	# Procedure called to validate GENERATE_MANCHESTER_RS_COMPOSITE_ILA
	return true
}

proc update_PARAM_VALUE.GENERATE_RS_SM_ILA { PARAM_VALUE.GENERATE_RS_SM_ILA } {
	# Procedure called to update GENERATE_RS_SM_ILA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GENERATE_RS_SM_ILA { PARAM_VALUE.GENERATE_RS_SM_ILA } {
	# Procedure called to validate GENERATE_RS_SM_ILA
	return true
}

proc update_PARAM_VALUE.K { PARAM_VALUE.K } {
	# Procedure called to update K when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.K { PARAM_VALUE.K } {
	# Procedure called to validate K
	return true
}

proc update_PARAM_VALUE.N { PARAM_VALUE.N } {
	# Procedure called to update N when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.N { PARAM_VALUE.N } {
	# Procedure called to validate N
	return true
}


proc update_MODELPARAM_VALUE.N { MODELPARAM_VALUE.N PARAM_VALUE.N } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.N}] ${MODELPARAM_VALUE.N}
}

proc update_MODELPARAM_VALUE.K { MODELPARAM_VALUE.K PARAM_VALUE.K } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.K}] ${MODELPARAM_VALUE.K}
}

proc update_MODELPARAM_VALUE.GENERATE_MANCHESTER_RS_COMPOSITE_ILA { MODELPARAM_VALUE.GENERATE_MANCHESTER_RS_COMPOSITE_ILA PARAM_VALUE.GENERATE_MANCHESTER_RS_COMPOSITE_ILA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GENERATE_MANCHESTER_RS_COMPOSITE_ILA}] ${MODELPARAM_VALUE.GENERATE_MANCHESTER_RS_COMPOSITE_ILA}
}

proc update_MODELPARAM_VALUE.GENERATE_RS_SM_ILA { MODELPARAM_VALUE.GENERATE_RS_SM_ILA PARAM_VALUE.GENERATE_RS_SM_ILA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GENERATE_RS_SM_ILA}] ${MODELPARAM_VALUE.GENERATE_RS_SM_ILA}
}

