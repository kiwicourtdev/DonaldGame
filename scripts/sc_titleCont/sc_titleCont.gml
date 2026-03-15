/// @description Triggers a fadeout that then puts the player into the house with current save data.
/// @return {void}
function sc_titleCont(){
	with(o_transitionManager){
		alarm[0] = fadeOutMax;
		scr = sc_titleMove;
	};
}