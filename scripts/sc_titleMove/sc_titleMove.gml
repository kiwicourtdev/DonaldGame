/// @description Puts the player into the house.
/// @return {void}
function sc_titleMove(){
	with(o_worldObject){
		x += global.width;
	};
	moved = true;
}