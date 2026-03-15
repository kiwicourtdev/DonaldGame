/// @description Triggers a fadeout in o_timerManager.
/// @return {void}
function sc_houseDoor(){
	with(o_transitionManager){
		alarm[0] = fadeOutMax;
		
		scr = sc_gameFade;
		scrEnd = sc_gameFadeEnd;
	};
}