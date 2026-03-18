/// @description Scroll Left
if(!global.done){
	if(!ds_list_empty(orderList) && ds_list_find_value(orderList,ds_list_size(orderList)-1).x - xOffsetAmount >= xMax){
		xOffset -= xOffsetAmount;

		with(o_orderTicket){
			x -= other.xOffsetAmount;
		};
	};

	//Make Tuto
	if(makeTutos[array_length(makeTutos)-1].x - xOffsetAmount >= xMax){
		with(o_makeTuto){
			x -= other.xOffsetAmount;
		};
	};
};