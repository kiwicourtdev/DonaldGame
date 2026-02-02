/// @description Scroll Right
if(!ds_list_empty(orderList) && ds_list_find_value(orderList,0).x + xOffsetAmount <= xMin){
	xOffset += xOffsetAmount;

	with(o_orderTicket){
		x += other.xOffsetAmount;
	};
};