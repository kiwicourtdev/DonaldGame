/// @description Init

event_inherited();

//Final
name = "Continue";
if(global.day != 0){
	intScript = sc_titleCont;
	desc = "Current Day:" + string(global.day) + "\nGrade:";
}else{
	intScript = sc_blank;
	desc = "No Data";
};