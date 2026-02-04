// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_sandwichFinisher(right){
	if(!global.done){
		var hand = o_handManager.hands[right];

		if(hand.hold == global.pickup.empty){
			sc_pickup(right,global.pickup.finished,true);
	
			hand.holdSprite = asset_get_index(sprite_get_name(ds_list_find_value(owner.containing,0))+"F");

			global.finishedSandwiches[right] = ds_list_create();
			ds_list_copy(global.finishedSandwiches[right],owner.containing);
			ds_list_clear(owner.containing);
			instance_destroy();
		};
	};
}