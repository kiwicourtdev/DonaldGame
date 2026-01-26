/// @description Init

//Final
enum orders{
	ham=0,
	cheese=1,
	doubleHam=2,
	doubleCheese=3,
	
	chicken=4,
	
	bigChicken=5,
	
	deluxeCheese=6,
	doubleDeluxe=7,
	deluxeDeluxe=8,
	
	superCheese=9,
	
	nugS=10,
	
	nugM=11,
	
	nugL=12
};

var p = global.pickup;

baseOrders = [
	//Ham
	[p.basicWrap,p.ketchup,p.mustard,p.onion,p.pickle,p.regMeat],
	//Cheese
	[p.basicWrap,p.ketchup,p.mustard,p.onion,p.pickle,p.cheeseSlice,p.regMeat],
	//Double Ham
	[p.basicWrap,p.ketchup,p.mustard,p.onion,p.pickle,p.regMeat,p.regMeat],
	//Double Cheese
	[p.basicWrap,p.ketchup,p.mustard,p.onion,p.pickle,p.cheeseSlice,p.regMeat,p.cheeseSlice,p.regMeat],
	
	//Chicken
	[p.chickenWrap,p.chickenSauce,p.lettuce,p.chicken],
	
	//Big Chicken
	[p.bigChickenBox,p.chickenSauce,p.lettuce,p.tomato,p.tomato,p.tomato,p.coolChicken],
	
	//Deluxe Cheese
	[p.deluxeBox,p.ketchup,p.mustard,p.bigOnion,p.pickle,p.pickle,p.cheeseSlice,p.bigMeat,p.cheeseSlice],
	//Double Deluxe
	[p.deluxeBox,p.ketchup,p.mustard,p.bigOnion,p.pickle,p.pickle,p.cheeseSlice,p.bigMeat,p.cheeseSlice,p.bigMeat],
	//Deluxe Cheese
	[p.deluxeBox,p.ketchup,p.mustard,p.chickenSauce,p.tomato,p.tomato,p.tomato,p.lettuce,p.bigOnion,p.pickle,p.pickle,p.cheeseSlice,p.bigMeat,p.cheeseSlice],
	
	//Super Cheese
	[p.superBox,p.superSauce,p.superSauce,p.onion,p.onion,p.lettuce,p.lettuce,p.pickle,p.pickle,p.cheeseSlice,p.regMeat,p.regMeat],
	
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
"Super\nCheeseburger",
"Small\nNuggets",
"Medium\nNuggets",
"Large\nNuggets"
]

total = array_length(orderNames);
orderLength = irandom_range(1,5);
lineWrapSep = 12;
border = 8;

//Modify
active = true;
order = ds_list_create();

//Init
for(i = 0; i < orderLength; i++){
	ds_list_add(order,irandom_range(0,total-1));
};