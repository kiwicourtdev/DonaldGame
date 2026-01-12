/// @description Bun 1 Finished
var replace = pickup.empty;
var spr = noone;

switch(buns[1]){
	case pickup.basicBun:
		replace = pickup.basicToast;
		spr = s_hBasicToast;
	break;
	case pickup.deluxeBun:
		replace = pickup.deluxeToast;
		spr = s_hDeluxeToast;
	break;
	case pickup.superBun:
		replace = pickup.superToast;
		spr = s_hSuperToast;
	break;
};

with(zones[1]){
	hold = replace;
	holdSprite = spr;
};
buns[1] = pickup.empty;