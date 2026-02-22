/// @description Begin Fade to Next Day

event_inherited();

if(hovering && mouse_check_button_pressed(mb_left)){
	with(o_timerManager){
		fadeWait = true;
		alarm[1] = fadeOutMax;
	};
};