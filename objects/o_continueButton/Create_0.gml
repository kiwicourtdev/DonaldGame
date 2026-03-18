/// @description Init

event_inherited();

//Final
name = "Continue";
if(global.day != 0){
	intScript = sc_titleCont;
	
	if(global.day < 5) desc = "Current Day:" + string(global.day+1); else desc = "Current Day: Judgment";
	
	desc += "\nGrade:" + string(sc_avgGrade());
}else{
	intScript = sc_blank;
	desc = "No Data";
};