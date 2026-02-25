/// @description Quick function to clear the order list.
/// @return {void}
function sc_clearOrders(){
	with(o_orderManager){
		//Clear Order List
		for(var i = 0; i < ds_list_size(orderList); i++){
			instance_destroy(ds_list_find_value(orderList,i));
			ds_list_delete(orderList,i);
			i--;
		};
		ds_list_clear(orderList);
	};
	xOffset = 0;
}