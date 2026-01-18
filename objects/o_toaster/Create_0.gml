/// @description Init

//Final
timerMax = 300;
bunsMax = 2;

//Modify
bunsIn = 0;

//Init
buns = array_create(bunsMax);
for(var i = 0; i < bunsMax; i++){
	buns[i] = global.pickup.empty;
}

zones = array_create(2);
zones[0] = instance_create_depth(x,y+sprite_height,depth,o_toastedZone);
zones[1] = instance_create_depth(x+sprite_width/2,y+sprite_height,depth,o_toastedZone);