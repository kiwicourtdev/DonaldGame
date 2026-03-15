/// @description Calculates the heat grade of the current day.
///              <= .1 * max : S
///              <= .2 * max : A
///              <= .3 * max : B
///              <= .4 * max : C
///              <= .5 * max : D
///                     else : F
/// @return {int64} The heat grade.
function sc_findHeatScore(){
	var grade = 0;
	
	with(o_heatManager){
		if(totalHeat <= maxHeat * .1){
			grade = 5;
		}else if(totalHeat <= maxHeat * .2){
			grade = 4;
		}else if(totalHeat <= maxHeat * .3){
			grade = 3;
		}else if(totalHeat <= maxHeat * .4){
			grade = 2;
		}else if(totalHeat <= maxHeat * .5){
			grade = 1;
		};
	};
	
	return grade;
}