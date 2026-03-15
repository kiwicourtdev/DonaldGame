//remake later
function sc_gameFade(){
	//Fadeout Moving
	with(o_timerManager){
		if(!ds_list_empty(o_orderManager.orderList)) sc_clearOrders();
		show_debug_message("1");
		if(!instance_exists(o_resultsText)){
			show_debug_message("2");
			if(global.atWork){
				show_debug_message("3");
				//Moving to Results Screen
				if(!other.moved && o_fadeLine.x >= 0) with(o_worldObject){ x -= global.width; };
				if(!other.moved && o_fadeLine.y > 0) with(o_worldObject){ y -= global.height; };
			}else{
				//Moving Back
				if(!other.moved && x < global.width && o_door.x < global.width){
					with(o_worldObject){ x += 2*global.width; };
					other.moved = true;
				};
			};
		}else{
			//Moving to House
			if(x > 0 && !other.moved){
				with(o_worldObject){ x -= global.width; };
				other.moved = true;
			};
			//Deleting Results Text
			if(instance_exists(o_resultsText)) instance_destroy(o_resultsText);
		};
	};
}