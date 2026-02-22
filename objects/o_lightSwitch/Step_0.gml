/// @description Light Toggle

event_inherited();

if(hovering && mouse_check_button_pressed(mb_left)) o_lamp.lightsOff = !o_lamp.lightsOff;