/// @description Update Visibility and Order Frequency and Increment Heat

//Order Visibility
with(o_orderTicket){
	if(image_alpha != other.vis) image_alpha = other.vis;
};
with(o_makeTuto){
	if(image_alpha != other.makeVis) image_alpha = other.makeVis;
	if(!global.atWork) { image_alpha = 0; other.makeVis = false};
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
		if(o_heatManager.heat > o_heatManager.totalHeat) o_heatManager.totalHeat = o_heatManager.heat;
	}else o_heatManager.heat = clamp(o_heatManager.heat-heatDecay, 0, o_heatManager.maxHeat);
};