spawnDelay = 2;
txt = [
	"If you got this far, thank you for playing.",
	"There are four more " + chr(34) + "levels," + chr(34) + " but they are functionally identical at this point.",
	"Also, the ending screen after the last level is purely blank."
];
hls = [
	[]
];
radii = [
	[]
];

up = [
	false
];

inGame = true;

scrEnd = sc_tuto1End;

givenDay = 1;

//Init
alarm[0] = spawnDelay;