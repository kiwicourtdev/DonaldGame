/// @description Init

//Final
bunMax = 32;
restockTime = 600;
singleUse = true;
hold = global.pickup.basicBun;
holdSprite = s_hBasicBun;
tool = false;

enum toolNeed{
	none,
	tongs,
	shovel
};

needsTool = toolNeed.none;

//Modify
buns = bunMax;