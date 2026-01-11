/// @description Init

//Final
enum pickup{
	empty,
	
	basicBun,
	deluxeBun,
	superBun,
	
	basicToast,
	deluxeToast,
	superToast,
	
	basicWrap,
	cheeseWrap,
	doubleBasicWrap,
	chickenWrap,
	
	deluxeBox,
	superBox,
	bigChickenBox,
	
	nugS,
	nugM,
	nugL,
	
	ketchup,
	mustard,
	sludgeSauce,
	chickenSauce,
	superSauce,
	
	onion,
	pickle,
	lettuce,
	
	bigOnion,
	coolPickle,
	tomato,
	
	cheeseSlice,
	
	tongs,
	shovel,
	
	regMeat,
	chicken,
	coolChicken,
	nuggets,
	bigMeat
};

//Modify
hands = [noone,noone];

//Init
hands[0] = instance_create_depth(80,220,depth,o_hand);

hands[1] = instance_create_depth(400,220,depth,o_hand);
hands[1].rightHand = true;