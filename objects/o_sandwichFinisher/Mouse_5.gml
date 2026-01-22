/// @description Wrap and Clear Spot

var hand = o_handManager.hands[1];

if(hand.hold == global.pickup.empty){
	sc_pickup(1,global.pickup.finished,true);
	
	hand.holdSprite = asset_get_index(sprite_get_name(ds_list_find_value(owner.containing,0))+"F");

	global.finishedSandwiches[1] = ds_list_create();
	ds_list_copy(global.finishedSandwiches[1],owner.containing);
	ds_list_clear(owner.containing);
	instance_destroy();
};