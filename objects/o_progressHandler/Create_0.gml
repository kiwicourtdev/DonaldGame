/// @description Init

//Final
totalDays = 5;
global.gradeP = ["F","D","C","B","A","S"];

//Modify
global.day = 0;
global.grades = array_create(totalDays);

//Init
for(var i = 0; i < totalDays; i++){
	global.grades = 0;
};