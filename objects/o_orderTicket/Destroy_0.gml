/// @description Change Visibility if Last Order
with(o_orderManager){
	if(ds_exists(orderList, ds_type_list) && ds_list_empty(orderList)){
		vis = true;
	};
};