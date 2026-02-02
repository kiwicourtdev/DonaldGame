/// @description Update Visibility and Order Frequency
with(o_orderTicket){
	if(image_alpha != other.vis) image_alpha = other.vis;
};

//Rush
orderGapMin = baseOrderGap*rushGapMult;
orderGapMax = 2*orderGapMin;