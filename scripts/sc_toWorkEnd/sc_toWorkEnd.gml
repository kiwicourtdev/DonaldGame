/// @description Resets variables to start the day or displays end judgment.
/// @return {void}
function sc_toWorkEnd(){
	if(global.day < 5)
	sc_resetDay();
	else{
		show_debug_message(sc_avgGrade());
	};
}