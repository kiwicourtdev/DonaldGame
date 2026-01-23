/// @description Scroll Right
if(ds_list_find_value(orders,0).x + xOffsetAmount <= xMin){
	xOffset += xOffsetAmount;

	with(o_orderTicket){
		x += other.xOffsetAmount;
	};
};