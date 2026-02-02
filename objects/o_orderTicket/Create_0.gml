/// @description Init

//Final
enum orders{
	ham,
	cheese,
	doubleHam,
	doubleCheese,
	
	chicken,
	
	bigChicken,
	
	deluxeCheese,
	doubleDeluxe,
	deluxeDeluxe,
	deluxeDoubleDeluxe,
	
	superCheese,
	
	nugS,
	
	nugM,
	
	nugL
};

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
	//Deluxe Cheese
	[p.deluxeBox,p.deluxeToast,p.ketchup,p.mustard,p.chickenSauce,p.tomato,p.tomato,p.tomato,p.lettuce,p.bigOnion,p.pickle,p.pickle,p.cheeseSlice,p.bigMeat,p.cheeseSlice],
	//Deluxe Double Cheese
	[p.deluxeBox,p.deluxeToast,p.ketchup,p.mustard,p.chickenSauce,p.tomato,p.tomato,p.tomato,p.lettuce,p.bigOnion,p.pickle,p.pickle,p.cheeseSlice,p.bigMeat,p.cheeseSlice],
	
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
"Deluxe\nDeluxe\nCheeseburger",
"Double\nDeluxe\nDeluxe\nCheeseburger",
"Super\nCheeseburger",
"Small\nNuggets",
"Medium\nNuggets",
"Large\nNuggets"
];

total = array_length(orderNames);
orderLength = choose(1,1,1,1,2,2,2,2,2,2,3,3,3,4);
lineWrapSep = 12;
border = 8;
destroyTimer = 300;

//Modify
active = true;
order = ds_list_create();
completed = array_create(orderLength);

//Init
for(i = 0; i < orderLength; i++){
	ds_list_add(order,sc_weightedAverageOrder());
};