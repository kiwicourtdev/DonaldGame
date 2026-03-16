/// @description Move the player from the results screen and clears the order list.
/// @return {void}
function sc_toResults(){
		if(!ds_list_empty(o_orderManager.orderList)) sc_clearOrders();
		if(o_fadeLine.x >= 0) with(o_worldObject){ x -= global.width; };
		if(o_fadeLine.y > 0) with(o_worldObject){ y -= global.height; };
		if(o_fadeLine.x < 0 && o_fadeLine.y <= 0) moved = true;
}