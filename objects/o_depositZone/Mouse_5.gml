/// @description Send off Sandwich

var hand = o_handManager.hands[1];

if(hand.hold == global.pickup.finished && ds_exists(global.finishedSandwiches[1],ds_type_list)){
	sc_pickup(1,global.pickup.empty,true);
	
	//This is Where the Actual Result Would Go
	for(var i = 0; i < ds_list_size(global.finishedSandwiches[1]); i++){
		show_debug_message(ds_list_find_value(global.finishedSandwiches[1],i));
	};
	
	ds_list_destroy(global.finishedSandwiches[1]);
};