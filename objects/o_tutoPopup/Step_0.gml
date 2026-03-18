/// @description Do Not Continue Alarm if Not on Screen
if(o_transitionManager.alarm[0] != -1 || (x != clamp(x, 0, global.width) || y != clamp(y, 0, global.height)))
alarm[0]++;