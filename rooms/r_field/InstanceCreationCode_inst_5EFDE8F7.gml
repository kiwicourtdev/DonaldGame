spawnDelay = 2;
txt = [
	"Here is where the bulk of the assembly for each product will happen.",
	"Here are the spots where products are assembled.",
	"After placing a box or wrapper (found above), you can stack items on top of it to match the recipe for a desired product.",
	"Pressing below a spot with a product being assembled will box/wrap it, putting it into a hand to be sent off and fulfilled.",
	"Some of the most common items found on various products are also stored here.",
	"Here are ketchup and mustard containers. When handling containers, you can use them multiple times before manually replacing them.",
	"From left to right, here is sliced cheese, shredded lettuce, pickles, and onions.",
	"Items only have a limited stock, and must be restocked by clicking on them and waiting a short cooldown.",
	"Each hand can pick up its own item, which is necessary to keep up with the constant stream of orders."
];
hls = [
	[],
	[[80, 232], [160, 232], [240, 232], [320, 232], [400, 232]],
	[[80, 232], [160, 232], [240, 232], [320, 232], [400, 232], [240, 32]],
	[[80, 232], [160, 232], [240, 232], [320, 232], [400, 232]],
	[],
	[[376, 144]],
	[[56, 168], [136, 168], [216, 168], [280, 168]],
	[],
	[]
];
radii = [
	[],
	[24, 24, 24, 24, 24],
	[24, 24, 24, 24, 24, 16],
	[24, 24, 24, 24, 24],
	[],
	[64],
	[32, 32, 32, 32],
	[],
	[]
];

up = [
	false,
	true,
	true,
	true,
	false,
	false,
	false,
	false,
	false
];

inGame = true;

givenDay = 1;

//Init
alarm[0] = spawnDelay;