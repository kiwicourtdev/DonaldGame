/// @description Put the player back into the work zone when the door is clicked.
/// @return {void}
function sc_toWork(){
	//Moving Back
	if(o_timerManager.x < global.width && o_door.x < global.width){
		with(o_worldObject){ x += 2*global.width; };
		moved = true;
	};
}