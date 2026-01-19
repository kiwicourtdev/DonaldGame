/// @description Pickup/Place

var hand = o_handManager.hands[0];

//Pickup
if((hand.hold != hold) && (hand.hold == global.pickup.empty || needsTool != toolNeed.none)){
	//Tool Check
	if(needsTool == toolNeed.none || (hand.hold == global.pickup.tongs && needsTool == toolNeed.tongs) || (hand.hold == global.pickup.shovel && needsTool == toolNeed.shovel)){
		
		//Replace Tool
		if((hand.hold == global.pickup.tongs && needsTool == toolNeed.tongs) || (hand.hold == global.pickup.shovel && needsTool == toolNeed.shovel)){
			global.sourceID[0].buns = 1;
		};
		
		if(buns > 0){
			if singleUse{
				buns--;
				if tool
				global.sourceID[0] = id;
			}else
			global.sourceID[0] = id;
		
			sc_pickup(0,hold);
		};
	};
}else{//Put Down
	if((hand.hold == hold) && !(tool && id != global.sourceID[0]) && (buns+1 <= bunMax || !singleUse)){
		if singleUse
		buns++;
		else
		global.sourceID[0] = id;
		
		sc_pickup(0,global.pickup.empty);
	};
};