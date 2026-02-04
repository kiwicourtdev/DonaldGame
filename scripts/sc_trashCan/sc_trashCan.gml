// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_trashCan(right){
	if(!global.done){
		var hand = o_handManager.hands[right];
	
		if(hand.hold != global.pickup.tongs && hand.hold != global.pickup.shovel)
		sc_pickup(right,global.pickup.empty,true);

		if(ds_exists(global.finishedSandwiches[right],ds_type_list)) ds_list_destroy(global.finishedSandwiches[right]);
	};
}