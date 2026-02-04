// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_toaster(right){
	if(!global.done){
		if(bunsIn < bunsMax && (o_handManager.hands[right].hold == global.pickup.basicBun || o_handManager.hands[right].hold == global.pickup.deluxeBun || o_handManager.hands[right].hold == global.pickup.superBun)){
			var index = 0;
			for(var i = 0; i < bunsMax; i++){
				if(buns[i] == global.pickup.empty){
					index = i; 
					break;
				};
			};
	
			buns[index] = o_handManager.hands[right].hold;
			alarm[index] = timerMax;
			bunsIn++;
			o_handManager.hands[right].hold = global.pickup.empty;
		};
	};
}