/// @description Quick function to reset work variables.
/// @return {void}
function sc_resetDay(){
	global.day++;
	global.atWork = true;
	global.done = false;
	//Reset Order and Rush Timer
	with(o_orderManager){
		alarm[0] = firstOrderTime;
		alarm[1] = -1;
		rushBonusCount = 0;
	};
	//Reset Day Timer
	with(o_timerManager){
		alarm[0] = timerMax;
	};
}