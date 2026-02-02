/// @description Scroll Left
if(!ds_list_empty(orderList) && ds_list_find_value(orderList,ds_list_size(orderList)-1).x - xOffsetAmount >= xMax){
	xOffset -= xOffsetAmount;

	with(o_orderTicket){
		x -= other.xOffsetAmount;
	};
};