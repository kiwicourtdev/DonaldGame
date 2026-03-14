/// @description Apply Heat Effect

offset += offsetInc * (o_heatManager.heat/o_heatManager.maxHeat);

amount = maxAmount * (o_heatManager.heat/o_heatManager.maxHeat)

if(amount == maxAmount) show_debug_message("penis debug 1");

var fxStruct = layer_get_fx("Distortion");

if(fxStruct != -1){
	var params = fx_get_parameters(fxStruct);
	params.g_DistortOffset = [offset,offset];
	params.g_DistortAmount = amount;
	
	fx_set_parameters(fxStruct, params);
};