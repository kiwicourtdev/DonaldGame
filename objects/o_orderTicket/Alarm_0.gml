/// @description Destroy Completed Order After Short Delay
instance_destroy();
with(o_orderTicket){
	if(ds_list_find_index(o_orderManager.orderList,id) > ds_list_find_index(o_orderManager.orderList,other.id))
	x -= o_orderManager.gap;
};
ds_list_delete(o_orderManager.orderList,ds_list_find_index(o_orderManager.orderList,id));
if(ds_list_empty(o_orderManager.orderList)) vis = true;