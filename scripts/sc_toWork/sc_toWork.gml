/// @description Put the player back into the work zone when the door is clicked. Also resets work variables.
/// @return {void}
function sc_toWork(){
	//Moving Back
	if(o_timerManager.x < global.width && o_door.x < global.width){
		if(global.day < 5){
			sc_resetKitchen();
			with(o_worldObject){ x += 2*global.width; };
		}else
		with(o_worldObject){ x -= 2*global.width; };
		moved = true;
	};
}