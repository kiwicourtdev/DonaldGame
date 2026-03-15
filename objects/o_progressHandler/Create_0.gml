/// @description Init

//Final
totalDays = 5;
global.gradeP = ["F","D","C","B","A","S"];
global.fname = "savedata.ini";

//Modify
global.day = -1;
global.grades = array_create(totalDays);

//Init
ini_open(global.fname);
global.day = ini_read_real("Day","day",-1);

for(var i = 0; i < totalDays; i++){
	global.grades[i] = ini_read_real("Grades","day"+string(i),0);
};

ini_close();