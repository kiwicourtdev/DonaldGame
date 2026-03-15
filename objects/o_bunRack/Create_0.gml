/// @description Init

//Final
bunMax = 6;
singleUse = true;
hold = global.pickup.basicBun;
holdSprite = s_hBasicBun;
tool = false;
restockTime = 5*global.framesToSeconds;

restockable = true;

enum toolNeed{
	none,
	tongs,
	shovel
};

needsTool = toolNeed.none;

//Modify
buns = bunMax;