/// @description Fadeout Wait
fadeWait = true;

with(o_transitionManager){
	alarm[0] = fadeOutMax;
	scr = sc_gameFade;
	scrEnd = sc_gameFadeEnd;
};