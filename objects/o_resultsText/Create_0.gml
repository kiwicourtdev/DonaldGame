/// @description Init

//Final
bigFont = f_vcr24;
smallFont = f_vcr10;

textTimeGap = 90;
fadeWaitGap = 300;

verdict = "GOOD";
show = [
	"EVALUATION",
	"ORDERS: " + string(o_orderManager.ordersDone) + " / " + string(o_orderManager.orderQuota),
	"HEAT: " + "NOT IN THE GAME YET LMAO",
	"VERDICT: "
];

baseX = global.width/2;
baseY = global.height/array_length(show);

	//This gets the difference of the window height and the baseY, then dividing it by the length of the text array.
yMod = (global.height-2*baseY)/(array_length(show)-1);

c = c_aqua;

//Modify
showing = 0;

//Init
alarm[0] = 300;

if(o_orderManager.ordersDone < o_orderManager.orderQuota)
verdict = "FAILURE";

show[array_length(show)-1] += verdict;