spawnDelay = 2;
txt = [
	"Here is where the final parts of making an item happen.",
	"Here are your tools.",
	"A shovel for nuggets.",
	"And tongs for patties.",
	"Here are where meat products are stored.",
	"Hamburger patties,",
	"chicken patties,",
	"big chicken patties",
	"and nuggets.",
	"When receiving an order including a Deluxe Cheeseburger, the patty will be freshly made and put here after a short wait.",
	"You will need to pick up the corresponding tool first to pick up these items (tongs for patties, shovel for nuggets).",
	"Click here to send a finished product out. It will contribute to the oldest instance of that item in your list of orders, if made correctly.",
	"Lastly, the trash can is placed here, in case any orders are incorrectly completed or if an item is accidentally picked up."
];
hls = [
	[],
	[[208, 128]],
	[[192, 112], [224, 144]],
	[[192, 144], [224, 112]],
	[[336, 96]],
	[[312, 48], [360, 48]],
	[[312, 96]],
	[[360, 96]],
	[[312, 144], [360, 144]],
	[[208, 184]],
	[],
	[[32, 96]],
	[[32, 240]]
];
radii = [
	[],
	[32],
	[16, 16],
	[16, 16],
	[64],
	[16, 16],
	[16],
	[16],
	[16, 16],
	[16],
	[],
	[32],
	[32]
];

up = [
	false,
	false,
	false,
	false,
	false,
	false,
	false,
	false,
	false,
	true,
	false,
	false,
	true
];

inGame = true;

givenDay = 1;

//Init
alarm[0] = spawnDelay;