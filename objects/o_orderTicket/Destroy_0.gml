/// @description Change Visibility if Last Order
with(o_orderManager){
	if(ds_exists(global.orders, ds_type_list) && ds_list_empty(global.orders)){
		vis = true;
	};
};