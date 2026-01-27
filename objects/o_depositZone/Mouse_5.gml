/// @description Send off Sandwich

var hand = o_handManager.hands[1];

if(hand.hold == global.pickup.finished && ds_exists(global.finishedSandwiches[1],ds_type_list)){
	sc_pickup(1,global.pickup.empty,true);
	
	//Check Sandwich With EVERY Item on EVERY Order
	var found = false;
	//Traverse the List of Tickets
	for(var i = 0; i < ds_list_size(o_orderManager.orderList); i++){
		//Current Ticket
		var currentOrder = ds_list_find_value(o_orderManager.orderList,i);
		//Traverse the List of Items in Ticket
		for(var j = 0; j < ds_list_size(currentOrder.order); j++){
			//Copy What is Given
			var tempArr = array_create(ds_list_size(global.finishedSandwiches[1]));
			for(var k = 0; k < array_length(tempArr); k++){
				tempArr[k] = ds_list_find_value(global.finishedSandwiches[1],k);
			};
			array_sort(tempArr, true);
			//Copy Base Order
			var baseOrder = currentOrder.baseOrders[ds_list_find_value(currentOrder.order,j)];
			array_sort(baseOrder,true);
			/*/Debug
			for(var o = 0; o < array_length(tempArr); o++){
				show_debug_message(sprite_get_name(tempArr[o]));
			};
			show_debug_message("\n");
			for(var o = 0; o < array_length(baseOrder); o++){
				show_debug_message(sprite_get_name(baseOrder[o]));
			};
			show_debug_message("\n\n");*/
			//Compare and Set
			if(!currentOrder.completed[j] && array_equals(baseOrder,tempArr)){
				found = true;
				currentOrder.completed[j] = true;
				break;
			};
		};
		if(found) break;
	};
	
	ds_list_destroy(global.finishedSandwiches[1]);
};