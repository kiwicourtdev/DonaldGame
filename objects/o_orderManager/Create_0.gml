/// @description Init

//Final
xOffsetAmount = 32;
xMin = 64;
xMax = 320;
gap = 128;

baseOrderGap = 1600;

rushBonusMax = 2;
rushBonusGap = 300;

firstOrderTime = 600;

heatMin = 4;
heatMax = 12;
heatDecay = 6;

var p = global.pickup;
baseOrders = [
	//Ham
	[p.basicWrap,p.basicToast,p.ketchup,p.mustard,p.onion,p.pickle,p.regMeat],
	//Cheese
	[p.basicWrap,p.basicToast,p.ketchup,p.mustard,p.onion,p.pickle,p.cheeseSlice,p.regMeat],
	//Double Ham
	[p.basicWrap,p.basicToast,p.ketchup,p.mustard,p.onion,p.pickle,p.pickle,p.regMeat,p.regMeat],
	//Double Cheese
	[p.basicWrap,p.basicToast,p.ketchup,p.mustard,p.onion,p.pickle,p.pickle,p.cheeseSlice,p.regMeat,p.cheeseSlice,p.regMeat],
	
	//Chicken
	[p.chickenWrap,p.basicToast,p.chickenSauce,p.lettuce,p.chicken],
	
	//Big Chicken
	[p.bigChickenBox,p.deluxeToast,p.chickenSauce,p.lettuce,p.tomato,p.tomato,p.tomato,p.coolChicken],
	
	//Deluxe Cheese
	[p.deluxeBox,p.deluxeToast,p.ketchup,p.mustard,p.bigOnion,p.pickle,p.pickle,p.cheeseSlice,p.bigMeat,p.cheeseSlice],
	//Double Deluxe
	[p.deluxeBox,p.deluxeToast,p.ketchup,p.mustard,p.bigOnion,p.pickle,p.pickle,p.cheeseSlice,p.bigMeat,p.cheeseSlice,p.bigMeat],
	
	//Super Cheese
	[p.superBox,p.superToast,p.superSauce,p.superSauce,p.onion,p.onion,p.lettuce,p.lettuce,p.pickle,p.pickle,p.cheeseSlice,p.regMeat,p.regMeat],
	
	//Nug S
	[p.nugS,p.nuggets],
	
	//Nug M
	[p.nugM,p.nuggets,p.nuggets],
	
	//Nug L
	[p.nugL,p.nuggets,p.nuggets,p.nuggets,p.nuggets]
];

orderNames = [
"Hamburger",
"Cheeseburger",
"Double\nHamburger",
"Double\nCheeseburger",
"Chicken\nSandwich",
"Big Chicken\nSandwich",
"Deluxe\nCheeseburger",
"Deluxe\nDouble\nCheeseburger",
"Super\nCheeseburger",
"Small\nNuggets",
"Medium\nNuggets",
"Large\nNuggets"
];

total = array_length(orderNames);

//Modify
orderList = ds_list_create();
vis = true;
xOffset = 0;

makeVis = false;

orderGapMin = baseOrderGap;
orderGapMax = 1.125*orderGapMin;
rushGapMult = 1;

rushBonusCount = 0;

orderQuota = floor(o_timerManager.timerMax/orderGapMax);
ordersDone = 0;

makeTutos = array_create(total);

//Init
alarm[0] = firstOrderTime;

i = 0;
for(i = 0; i < total; i++){
	makeTutos[i] = instance_create_depth(x+i*gap,y,depth,o_makeTuto);
};