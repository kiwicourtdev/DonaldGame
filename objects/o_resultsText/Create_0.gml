/// @description Init

//Final
bigFont = f_vcr24;
smallFont = f_vcr8;

textTimeGap = 120;

show = [
	"EVALUATION:",
	"ORDERS: ",
	"HEAT: ",
	"VERDICT: "
];

results = [
	"",
	string(o_orderManager.ordersDone) + " / " + string(o_orderManager.orderQuota),
	"NOT IN THE GAME YET LMAO",
	"GOOD"
];


baseX = global.width/2;
baseY = global.height/array_length(show);

	//This gets the difference of the window height and the baseY, then dividing it by the length of the text array.
yMod = (global.height-2*baseY)/array_length(show);

c = c_aqua;

//Modify
showing = 0;

//Init
alarm[0] = 300;