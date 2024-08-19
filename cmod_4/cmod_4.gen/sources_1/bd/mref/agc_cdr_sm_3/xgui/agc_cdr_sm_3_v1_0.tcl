# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ADC_SAMPLE_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AGC_PEAK_TO_PEAK_REF" -parent ${Page_0}
  ipgui::add_param $IPINST -name "GENERATE_AGC_ILA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "GENERATE_CDR_SM_ILA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "GENERATE_COMPOSITE_AGC_CDR_SM_3_ILA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RS_K" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RS_N" -parent ${Page_0}


}

proc update_PARAM_VALUE.ADC_SAMPLE_SIZE { PARAM_VALUE.ADC_SAMPLE_SIZE } {
	# Procedure called to update ADC_SAMPLE_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADC_SAMPLE_SIZE { PARAM_VALUE.ADC_SAMPLE_SIZE } {
	# Procedure called to validate ADC_SAMPLE_SIZE
	return true
}

proc update_PARAM_VALUE.AGC_PEAK_TO_PEAK_REF { PARAM_VALUE.AGC_PEAK_TO_PEAK_REF } {
	# Procedure called to update AGC_PEAK_TO_PEAK_REF when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AGC_PEAK_TO_PEAK_REF { PARAM_VALUE.AGC_PEAK_TO_PEAK_REF } {
	# Procedure called to validate AGC_PEAK_TO_PEAK_REF
	return true
}

proc update_PARAM_VALUE.GENERATE_AGC_ILA { PARAM_VALUE.GENERATE_AGC_ILA } {
	# Procedure called to update GENERATE_AGC_ILA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GENERATE_AGC_ILA { PARAM_VALUE.GENERATE_AGC_ILA } {
	# Procedure called to validate GENERATE_AGC_ILA
	return true
}

proc update_PARAM_VALUE.GENERATE_CDR_SM_ILA { PARAM_VALUE.GENERATE_CDR_SM_ILA } {
	# Procedure called to update GENERATE_CDR_SM_ILA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GENERATE_CDR_SM_ILA { PARAM_VALUE.GENERATE_CDR_SM_ILA } {
	# Procedure called to validate GENERATE_CDR_SM_ILA
	return true
}

proc update_PARAM_VALUE.GENERATE_COMPOSITE_AGC_CDR_SM_3_ILA { PARAM_VALUE.GENERATE_COMPOSITE_AGC_CDR_SM_3_ILA } {
	# Procedure called to update GENERATE_COMPOSITE_AGC_CDR_SM_3_ILA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GENERATE_COMPOSITE_AGC_CDR_SM_3_ILA { PARAM_VALUE.GENERATE_COMPOSITE_AGC_CDR_SM_3_ILA } {
	# Procedure called to validate GENERATE_COMPOSITE_AGC_CDR_SM_3_ILA
	return true
}

proc update_PARAM_VALUE.RS_K { PARAM_VALUE.RS_K } {
	# Procedure called to update RS_K when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RS_K { PARAM_VALUE.RS_K } {
	# Procedure called to validate RS_K
	return true
}

proc update_PARAM_VALUE.RS_N { PARAM_VALUE.RS_N } {
	# Procedure called to update RS_N when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RS_N { PARAM_VALUE.RS_N } {
	# Procedure called to validate RS_N
	return true
}


proc update_MODELPARAM_VALUE.ADC_SAMPLE_SIZE { MODELPARAM_VALUE.ADC_SAMPLE_SIZE PARAM_VALUE.ADC_SAMPLE_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADC_SAMPLE_SIZE}] ${MODELPARAM_VALUE.ADC_SAMPLE_SIZE}
}

proc update_MODELPARAM_VALUE.AGC_PEAK_TO_PEAK_REF { MODELPARAM_VALUE.AGC_PEAK_TO_PEAK_REF PARAM_VALUE.AGC_PEAK_TO_PEAK_REF } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AGC_PEAK_TO_PEAK_REF}] ${MODELPARAM_VALUE.AGC_PEAK_TO_PEAK_REF}
}

proc update_MODELPARAM_VALUE.RS_N { MODELPARAM_VALUE.RS_N PARAM_VALUE.RS_N } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RS_N}] ${MODELPARAM_VALUE.RS_N}
}

proc update_MODELPARAM_VALUE.RS_K { MODELPARAM_VALUE.RS_K PARAM_VALUE.RS_K } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RS_K}] ${MODELPARAM_VALUE.RS_K}
}

proc update_MODELPARAM_VALUE.GENERATE_COMPOSITE_AGC_CDR_SM_3_ILA { MODELPARAM_VALUE.GENERATE_COMPOSITE_AGC_CDR_SM_3_ILA PARAM_VALUE.GENERATE_COMPOSITE_AGC_CDR_SM_3_ILA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GENERATE_COMPOSITE_AGC_CDR_SM_3_ILA}] ${MODELPARAM_VALUE.GENERATE_COMPOSITE_AGC_CDR_SM_3_ILA}
}

proc update_MODELPARAM_VALUE.GENERATE_CDR_SM_ILA { MODELPARAM_VALUE.GENERATE_CDR_SM_ILA PARAM_VALUE.GENERATE_CDR_SM_ILA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GENERATE_CDR_SM_ILA}] ${MODELPARAM_VALUE.GENERATE_CDR_SM_ILA}
}

proc update_MODELPARAM_VALUE.GENERATE_AGC_ILA { MODELPARAM_VALUE.GENERATE_AGC_ILA PARAM_VALUE.GENERATE_AGC_ILA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GENERATE_AGC_ILA}] ${MODELPARAM_VALUE.GENERATE_AGC_ILA}
}

