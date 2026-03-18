/// @description Resets done to start the day.
/// @return {void}
function sc_toWorkEnd(){
	if(global.day < 5)
	sc_resetDay();
}