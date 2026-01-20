/// @description Bun 1 Finished
var replace = global.pickup.empty;
var spr = noone;

switch(buns[1]){
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

with(zones[1]){
	hold = replace;
	holdSprite = hold;
};
buns[1] = global.pickup.empty;