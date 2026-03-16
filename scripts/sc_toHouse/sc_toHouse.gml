/// @description Put the player in the house after the results screen. Delete the results.
/// @return {void}
function sc_toHouse(){
	//Moving to House
	if(o_timerManager.x > 0){
		with(o_worldObject){ x -= global.width; };
		moved = true;
	};
	//Deleting Results Text
	instance_destroy(o_resultsText);
}