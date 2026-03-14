/// @description Throws away any valid (non-tool) item being held.
/// @param {int64}  right				The hand being used.
/// @return {void}
function sc_trashCan(right){
	if(!global.done){
		var hand = o_handManager.hands[right];
		//Restock Deluxe
		if(hand.hold == global.pickup.bigMeat) o_deluxeHandler.request++;
	
		//Remove Current Held Item
		if(hand.hold != global.pickup.tongs && hand.hold != global.pickup.shovel)
		sc_pickup(right,global.pickup.empty,true);

		if(ds_exists(global.finishedSandwiches[right],ds_type_list)){
			//Restock Deluxe
			for(var i = 0; i < ds_list_size(global.finishedSandwiches[right]); i++){
				if(ds_list_find_value(global.finishedSandwiches[right],i) == global.pickup.bigMeat) o_deluxeHandler.request++;
			};
			ds_list_destroy(global.finishedSandwiches[right]);
		};
	};
}