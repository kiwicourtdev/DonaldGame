spawnDelay = 2;
txt = [
	"Here, there are dedicated racks for wrappers and boxes, alongside a couple of sauces.",
	"This set of boxes is for Big Chicken Sandwiches.",
	"These are for Deluxe Cheeseburgers.",
	"These are for Super Cheeseburgers",
	"This row of boxes is for Nuggets, in ascending size.",
	"Here are the wrappers for Chicken Sandwiches and Cheeseburgers, respectively.",
	"Lastly, here are sauces for Chicken Sandwiches and Super Cheeseburgers, respectively."
];
hls = [
	[],
	[[64, 46]],
	[[160, 46], [240, 46]],
	[[336, 46], [416, 46]],
	[[48, 118], [96, 118], [184, 118], [248, 118], [368, 126]],
	[[312, 206], [408, 206]],
	[[72, 198], [168, 198]]
];
radii = [
	[],
	[32],
	[32, 32],
	[32, 32],
	[32, 32, 32, 32, 64],
	[32, 32],
	[48, 48]
];

up = [
	false,
	false,
	false,
	false,
	false,
	true,
	true
];

inGame = true;

givenDay = 1;

//Init
alarm[0] = spawnDelay;