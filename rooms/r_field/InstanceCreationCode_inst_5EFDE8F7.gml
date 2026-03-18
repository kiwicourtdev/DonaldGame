//Final
spawnDelay = 10;
txt = [
	"You control the game primarily with the mouse buttons (both of them) to pick up various items.",
	"You can click on these to pick up a burger bun, for example (not right now, after the text box).",
	"And then place it here to toast it.",
	"You can pick up back up here once it is done toasting.",
	"Orders will start to come in shortly. You should explore before that happens.",
	"Use these arrows to move across the kitchen."
];
hls = [
	[],
	[[328, 56]],
	[[144, 32]],
	[[104, 224], [184, 223]],
	[],
	[[32, 96]]
];
radii = [
	[],
	[32],
	[32],
	[32, 32],
	[],
	[16],
];

up = [
	false,
	false,
	false,
	true,
	false,
	false
];

darkIntensity = .75;

inGame = true;

//Init
alarm[0] = spawnDelay;