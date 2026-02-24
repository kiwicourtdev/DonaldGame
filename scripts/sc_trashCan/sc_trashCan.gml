/// @description Throws away any valid (non-tool) item being held.
/// @param {int64}  right				The hand being used.
/// @return {void}
function sc_trashCan(right){
	if(!global.done){
		var hand = o_handManager.hands[right];
	
		if(hand.hold != global.pickup.tongs && hand.hold != global.pickup.shovel)
		sc_pickup(right,global.pickup.empty,true);

		if(ds_exists(global.finishedSandwiches[right],ds_type_list)) ds_list_destroy(global.finishedSandwiches[right]);
	};
}