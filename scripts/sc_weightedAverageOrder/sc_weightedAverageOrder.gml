/// @description A weighted average system to pick which items are on orders.
/// @return {int64}
function sc_weightedAverageOrder(){
	var odds = [
		{item: orders.ham, chance: 475},
		{item: orders.cheese, chance: 500},
		{item: orders.doubleHam, chance: 350},
		{item: orders.doubleCheese, chance: 300},
	
		{item: orders.chicken, chance: 300},
	
		{item: orders.bigChicken, chance: 200},
	
		{item: orders.deluxeCheese, chance: 100},
		{item: orders.doubleDeluxe, chance: 100},
		{item: orders.deluxeDeluxe, chance: 25},
		{item: orders.deluxeDoubleDeluxe, chance: 10},
	
		{item: orders.superCheese, chance: 250},
	
		{item: orders.nugS, chance: 150},
	
		{item: orders.nugM, chance: 200},
	
		{item: orders.nugL, chance: 100}
	];
	
	var totalOdds = 0;
	for(var i = 0; i < array_length(odds); i++){
		totalOdds += odds[i].chance;
	};
	
	var choice = random(totalOdds);
	
	for(var i = 0; i < array_length(odds); i++){
		if(choice < odds[i].chance){
			return odds[i].item;
		};
		
		choice -= odds[i].chance;
	};
}