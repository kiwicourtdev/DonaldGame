/// @description Pickup/Place

var hand = o_handManager.hands[1];

//Pickup
if((hand.hold != hold) && (hand.hold == global.pickup.empty || needsTool != toolNeed.none)){
	//Tool Check
	if(needsTool == toolNeed.none || (hand.hold == global.pickup.tongs && needsTool == toolNeed.tongs) || (hand.hold == global.pickup.shovel && needsTool == toolNeed.shovel)){
		
		//Replace Tool
		if((hand.hold == global.pickup.tongs && needsTool == toolNeed.tongs) || (hand.hold == global.pickup.shovel && needsTool == toolNeed.shovel)){
			global.sourceID[1].buns = 1;
		};
		
		if(buns > 0){
			if singleUse{
				buns--;
				if tool
				global.sourceID[1] = id;
			}else
			global.sourceID[1] = id;
		
			sc_pickup(1,hold);
		};
	};
}else{//Put Down
	if(!(tool && id != global.sourceID[1]) && buns < bunMax){
		if singleUse
		buns++;
		else
		global.sourceID[1] = id;
		
		sc_pickup(1,global.pickup.empty);
	};
};