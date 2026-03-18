/// @description Check for Mouse Collisions

hovering = position_meeting(mouse_x,mouse_y,id);

if(o_txtBox.txt == "" && o_transitionManager.alarm[0] == -1 && hovering && mouse_check_button_pressed(mb_left))
script_execute(intScript);