/// @description Quick function to reset work variables.
/// @return {void}
function sc_resetDay(){
	global.day++;
	global.atWork = true;
	global.done = false;
	with(o_timerManager){
		alarm[0] = timerMax;
	};
	with(o_orderManager){
		alarm[0] = firstOrderTime;
		alarm[1] = -1;
		rushBonusCount = 0;
	};
	with(o_bunRack){
		buns = bunMax;
	};
	with(o_heatManager){
		totalHeat = 0;
	};
	with(o_deluxeHandler){
		dOut = 0;
		request = 0;

		for(var i = 0; i < dMax; i++){
			with(plates[i]){
				buns = 0;
		
				sprite_index = s_deluxePlate;
				image_alpha = 0;
				image_index = 0;
			};
		};
	};
}