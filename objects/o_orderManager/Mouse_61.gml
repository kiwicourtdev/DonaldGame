/// @description Scroll Right
if(ds_list_find_value(orders,0).x - xOffsetAmount <= xMax){
	xOffset += xOffsetAmount;

	with(o_orderTicket){
		x += other.xOffsetAmount;
	};
};