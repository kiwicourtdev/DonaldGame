/// @description Pickup/Place

//Pickup
if(o_handManager.hands[0].hold = pickup.empty){
	if(buns > 0){
		if singleUse
		buns--;
		else
		global.sourceID[0] = id;
		
		sc_pickup(0,hold);
	};
}else if(o_handManager.hands[0].hold = hold){//Put Down
	if(buns < bunMax){
		if singleUse
		buns++;
		else
		global.sourceID[0] = id;
		
		sc_pickup(0,pickup.empty);
	};
};