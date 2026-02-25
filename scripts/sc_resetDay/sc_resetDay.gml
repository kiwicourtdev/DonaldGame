/// @description Quick function to reset work variables.
/// @return {void}
function sc_resetDay(){
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
}