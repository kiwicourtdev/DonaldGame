/// @description Create New Deluxe Patty Object w/ Relevant Fields
with(o_deluxeHandler){
	var newD = instance_create_depth(x+oGap+gap*(instance_number(o_bunRack)-fullRackCount+1),y,depth,o_bunRack);
	with(newD){
		bunMax = 1;
		buns = bunMax;
		
		needsTool = toolNeed.tongs;
		restockable = false;
		
		hold = global.pickup.bigMeat;
		holdSprite = s_hBigMeat;
	};
};