/// @description Init

//Final
spawnDelay = 10;
txt = [
	"Hello eboard.",
	"I didn't get to finish as much as I wanted to, but there's a decent amount here.",
	"Click on the yellow square to go into the level."
];
hls = [
	[],
	[],
	[]
];
radii = [
	[],
	[],
	[]
];

up = [
	false,
	false,
	false
];

darkIntensity = .75;

inGame = false;

//Modify
active = false;
lightSurface = noone;
counter = 0;

//Init
alarm[0] = spawnDelay;