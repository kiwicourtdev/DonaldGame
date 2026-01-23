/// @description Scroll Left
if(ds_list_find_value(orders,ds_list_size(orders)-1).x - xOffsetAmount >= xMax){
	xOffset -= xOffsetAmount;

	with(o_orderTicket){
		x -= other.xOffsetAmount;
	};
};