/// @description Scroll Right
if(!global.done){
	if(!ds_list_empty(orderList) && ds_list_find_value(orderList,0).x + xOffsetAmount <= xMin){
		xOffset += xOffsetAmount;

		with(o_orderTicket){
			x += other.xOffsetAmount;
		};
	};

	//Make Tuto
	if(makeTutos[0].x + xOffsetAmount <= xMin){
		with(o_makeTuto){
			x += other.xOffsetAmount;
		};
	};
};