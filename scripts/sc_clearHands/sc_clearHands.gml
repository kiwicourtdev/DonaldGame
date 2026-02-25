/// @description Throws away all items being held.
/// @return {void}
function sc_clearHands(){
	for(var i = 0; i < 2; i++){
		var hand = o_handManager.hands[i];
	
		sc_pickup(i,global.pickup.empty,true);

		if(ds_exists(global.finishedSandwiches[i],ds_type_list)) ds_list_destroy(global.finishedSandwiches[i]);
	};
}