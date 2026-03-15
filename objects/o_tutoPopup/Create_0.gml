/// @description Init

//Final
spawnDelay = 210;
txt = ["Check it out, I'm in the house like carpet.", "This is an unnecessarily long piece of text to demonstrate what would happen if the text were to overflow into the next line(s)."];
hls = [[[240,135],[300,200]],[[300,200]]];
radii = [[16,32],[32]];
darkIntensity = .75;

//Modify
active = false;
lightSurface = noone;
counter = 0;

//Init
alarm[0] = spawnDelay;