/// @description Update Visibility and Order Frequency

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