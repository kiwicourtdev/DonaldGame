//also remake later
function sc_gameFadeEnd(){
	/// @description Fadeout and Manage o_resultsText
	with(o_timerManager){
		//Restore atWork if Teleporting Back
		if(x >= global.width) sc_resetDay();

		if(!instance_exists(o_resultsText) && x >= 0 && x < global.width && global.atWork){
			instance_create_layer(0,0,"HUDSTUFF",o_resultsText);
			global.atWork = false;
			sc_clearHands();
		};
	};
}