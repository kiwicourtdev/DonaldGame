/// @description Put in Bun (Right)

if(bunsIn < bunsMax && (o_handManager.hands[1].hold == global.pickup.basicBun || o_handManager.hands[1].hold == global.pickup.deluxeBun || o_handManager.hands[1].hold == global.pickup.superBun)){
	var index = 0;
	for(var i = 0; i < bunsMax; i++){
		if(buns[i] == global.pickup.empty){
			index = i; 
			break;
		};
	};
	
	buns[index] = o_handManager.hands[1].hold;
	alarm[index] = timerMax;
	bunsIn++;
	o_handManager.hands[1].hold = global.pickup.empty;
};