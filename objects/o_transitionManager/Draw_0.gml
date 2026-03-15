/// @description Fadeout
var c = c_black;

if(alarm[0] != -1){
	fade = fadeOutMultiple-(fadeOutMultiple*abs(fadeOutMax-alarm[0]*2))/(fadeOutMax);
	draw_set_alpha(fade);
	draw_rectangle_colour(0, 0, global.width, global.height, c, c, c, c, false);
};

draw_set_alpha(1);