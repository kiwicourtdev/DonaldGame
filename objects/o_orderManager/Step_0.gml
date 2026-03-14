/// @description Update Visibility and Order Frequency and Increment Heat

//Order Visibility
with(o_orderTicket){
	if(image_alpha != other.vis) image_alpha = other.vis;
};

//Rush
orderGapMin = baseOrderGap*rushGapMult;
orderGapMax = 2*orderGapMin;

//End
if(global.done){
	alarm[0]++;
	alarm[1]++;
};

//Heat
var totalItems = 0;
for(var i = 0; i < ds_list_size(orderList); i++){
	totalItems += ds_list_size(ds_list_find_value(orderList,i).order);
};

if(totalItems >= heatMin){
	o_heatManager.heat = clamp(o_heatManager.heat+clamp(totalItems,heatMin,heatMax), 0, o_heatManager.maxHeat);
}else o_heatManager.heat = clamp(o_heatManager.heat-heatDecay, 0, o_heatManager.maxHeat);