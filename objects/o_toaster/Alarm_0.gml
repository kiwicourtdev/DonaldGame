/// @description Bun 0 Finished
var replace = global.pickup.empty;
var spr = noone;

switch(buns[0]){
	case global.pickup.basicBun:
		replace = global.pickup.basicToast;
	break;
	case global.pickup.deluxeBun:
		replace = global.pickup.deluxeToast;
	break;
	case global.pickup.superBun:
		replace = global.pickup.superToast;
	break;
};

with(zones[0]){
	hold = replace;
	holdSprite = hold;
};
buns[0] = global.pickup.empty;