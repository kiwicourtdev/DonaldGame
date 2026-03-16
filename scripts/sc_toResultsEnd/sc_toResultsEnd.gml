/// @description Creates the results text object, changes atWork, and clears hands.
/// @return {void}
function sc_toResultsEnd(){
	instance_create_layer(0,0,"HUDSTUFF",o_resultsText);
	global.atWork = false;
	sc_clearHands();
}