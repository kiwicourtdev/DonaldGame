/// @description Quick function to reset work variables.
/// @return {void}
function sc_resetDay(){
	global.atWork = true;
	global.done = false;
	with(o_timerManager){
		alarm[0] = timerMax;
	};
}