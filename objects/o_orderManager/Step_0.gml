/// @description Update Visibility and Order Frequency and Increment Heat

//Order Visibility
with(o_orderTicket){
	if(image_alpha != other.vis) image_alpha = other.vis;
};
with(o_makeTuto){
	if(image_alpha != other.makeVis) image_alpha = other.makeVis;
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

if(!global.done){
	if(totalItems >= heatMin){
		o_heatManager.heat = clamp(o_heatManager.heat+clamp(totalItems,heatMin,heatMax), 0, o_heatManager.maxHeat);
		o_heatManager.totalHeat += totalItems;
	}else o_heatManager.heat = clamp(o_heatManager.heat-heatDecay, 0, o_heatManager.maxHeat);
};