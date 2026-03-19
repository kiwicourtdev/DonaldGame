/// @description Picks up or puts down objects as well as returns tools when used and attempts to restock empty containers.
/// @param {int64}  right				The hand being used.
/// @return {void}
function sc_bunRack(right){
	if(!global.done){
		var hand = o_handManager.hands[right];

		//Pickup
		if((hand.hold != hold) && (hand.hold == global.pickup.empty || needsTool != toolNeed.none)){
			//Tool Check
			if(needsTool == toolNeed.none || (hand.hold == global.pickup.tongs && needsTool == toolNeed.tongs) || (hand.hold == global.pickup.shovel && needsTool == toolNeed.shovel)){
		
				if(buns > 0){	
					if singleUse{
						buns--;
						if tool
						global.sourceID[right] = id;
					}else
					global.sourceID[right] = id;
		
					//Replace Tool
					if((hand.hold == global.pickup.tongs && needsTool == toolNeed.tongs) || (hand.hold == global.pickup.shovel && needsTool == toolNeed.shovel)){
						global.sourceID[right].buns = 1;
					};
					sc_pickup(right,hold,singleUse);
				}else{ //Restock
					if((object_index == o_bunRack && restockable) && alarm[0] == -1){
						alarm[0] = restockTime;
						//Replace Tool
						if((hand.hold == global.pickup.tongs && needsTool == toolNeed.tongs) || (hand.hold == global.pickup.shovel && needsTool == toolNeed.shovel)){
							global.sourceID[right].buns = 1;
							sc_pickup(right,global.pickup.empty,false);
						};
					};
				};
			}else{ //Restocking Without a Tool
				if((object_index == o_bunRack && restockable) && alarm[0] == -1){
					alarm[0] = restockTime;
					//Replace Tool
					if((hand.hold == global.pickup.tongs && needsTool == toolNeed.tongs) || (hand.hold == global.pickup.shovel && needsTool == toolNeed.shovel)){
						global.sourceID[right].buns = 1;
						sc_pickup(right,global.pickup.empty,false);
					};
				};
			};
		}else{//Put Down
			if((hand.hold == hold) && !(tool && id != global.sourceID[right]) && (buns+1 <= bunMax || !singleUse)){
				if singleUse
				buns++;
				else
				global.sourceID[right] = id;
		
				sc_pickup(right,global.pickup.empty,false);
			};
		};
	};
}