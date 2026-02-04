// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_bunRack(right){
	if(!global.done){
		var hand = o_handManager.hands[right];

		//Pickup
		if((hand.hold != hold) && (hand.hold == global.pickup.empty || needsTool != toolNeed.none)){
			//Tool Check
			if(needsTool == toolNeed.none || (hand.hold == global.pickup.tongs && needsTool == toolNeed.tongs) || (hand.hold == global.pickup.shovel && needsTool == toolNeed.shovel)){
		
				//Replace Tool
				if((hand.hold == global.pickup.tongs && needsTool == toolNeed.tongs) || (hand.hold == global.pickup.shovel && needsTool == toolNeed.shovel)){
					global.sourceID[right].buns = 1;
				};
		
				if(buns > 0){
					if singleUse{
						buns--;
						if tool
						global.sourceID[right] = id;
					}else
					global.sourceID[right] = id;
		
					sc_pickup(right,hold,singleUse);
				}else{ //Restock
					if(alarm[0] == -1){
						alarm[0] = restockTime;
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