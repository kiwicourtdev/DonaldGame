/// @description Init

//Final
bigFont = f_vcr24;
smallFont = f_vcr10;

textTimeGap = 90;
fadeWaitGap = 300;

verdict = "FAILURE";
show = [
	"EVALUATION",
	"ORDERS: " + string(global.gradeP[sc_findOrderScore()])/* + " (" + string(o_orderManager.ordersDone) + " / " + string(o_orderManager.orderQuota) + ")"*/,
	"HEAT: " + string(global.gradeP[sc_findHeatScore()]),
	"OVERALL PERFORMANCE: " + string(global.gradeP[sc_findDayScore()]),
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

if(sc_findOrderScore() != 0 && sc_findHeatScore() != 0){
	switch(sc_findDayScore()){
		//D RANK
		case 1:
			verdict = "...PITIFUL";		
		break;
		//C RANK
		case 2:
			verdict = "UNREMARKABLE";		
		break;
		//B RANK
		case 3:
			verdict = "GOOD";		
		break;
		//A RANK
		case 4:
			verdict = "FANTASTIC";		
		break;
		//S RANK
		case 5:
			verdict = "MODEL EMPLOYEE";		
		break;
	};
};

show[array_length(show)-1] += verdict;