/// @description Triggers a fadeout in o_timerManager.
/// @return {void}
function sc_houseDoor(){
	with(o_timerManager){
		fadeWait = true;
		alarm[1] = fadeOutMax;
	};
}