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
	
	superCheese,
	
	nugS,
	
	nugM,
	
	nugL
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
	
	//Nug S
	[p.nugS,p.nuggets,p.nuggets],
	
	//Nug S
	[p.nugS,p.nuggets,p.nuggets,p.nuggets,p.nuggets]
];

//Modify

//Init