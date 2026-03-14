/// @description Init

//Final
dMax = 2;

gap = sprite_get_width(s_deluxePlate)+48;
oGap = 64;

dTimeMin = 9*global.framesToSeconds;
dTimeMax = 11*global.framesToSeconds;

//Modify
dOut = 0;

plates = array_create(dMax);

request = 0;

//Init
for(var i = 0; i < dMax; i++){
	plates[i] = instance_create_depth(x+oGap+gap*i,y,depth,o_bunRack);
	with(plates[i]){
		restockable = false;
		
		bunMax = 1;
		buns = 0;

		hold = global.pickup.bigMeat;
		holdSprite = s_hBigMeat;

		needsTool = toolNeed.tongs;
		
		sprite_index = s_deluxePlate;
		image_alpha = 0;
		image_index = 0;
	};
};