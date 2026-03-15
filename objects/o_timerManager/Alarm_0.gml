/// @description Finish Level
with(o_heatManager){
	heat = 0;
};

global.done = true;
alarm[1] = fadeOutWait;

//if(o_orderManager.ordersDone >= o_orderManager.orderQuota) success = true; DEFUNCT

//Store and Save Grade
global.grades[global.day] = sc_findDayScore();

ini_open(global.fname);
	ini_write_real("Day","day",global.day);
	ini_write_real("Grades","day"+string(global.day),global.grades[global.day]);
ini_close();