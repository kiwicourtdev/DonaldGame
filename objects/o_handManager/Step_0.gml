/// @description Debug

if(keyboard_check_pressed(ord("F"))){
	hands[0].hold = global.pickup.empty;
	hands[0].holdSprite = noone;
	hands[1].hold = global.pickup.empty;
	hands[1].holdSprite = noone;
};