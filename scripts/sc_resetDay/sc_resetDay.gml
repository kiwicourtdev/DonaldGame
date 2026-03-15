/// @description Quick function to reset work variables.
/// @return {void}
function sc_resetDay(){
	global.day++;
	global.atWork = true;
	global.done = false;
	//Clear Toasters
	with(o_toastedZone){
		ds_list_clear(bunList);
	};
	//Reset Day Timer
	with(o_timerManager){
		alarm[0] = timerMax;
	};
	//Reset Order and Rush Timer
	with(o_orderManager){
		alarm[0] = firstOrderTime;
		alarm[1] = -1;
		rushBonusCount = 0;
	};
	//Restock Everything
	with(o_bunRack){
		buns = bunMax;
	};
	//Reset Heat
	with(o_heatManager){
		totalHeat = 0;
	};
	//Reset Plates
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