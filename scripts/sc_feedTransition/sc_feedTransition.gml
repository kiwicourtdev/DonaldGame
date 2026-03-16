/// @description General purpose function for swapping the item in a hand.
/// @param {ref}  scrS				The script to be executed when the screen fades to black.
/// @param {ref}  scrE				The script to be executed when the screen fade ends.
/// @param {int64}  time			The time of the screen fade.
/// @return {void}
function sc_feedTransition(scrS = sc_blank, scrE = sc_blank, time = o_transitionManager.fadeOutMaxReal){
	with(o_transitionManager){
		scr = scrS;
		scrEnd = scrE;
		fadeOutMax = time;
		alarm[0] = fadeOutMax;
	};
}