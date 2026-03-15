/// @description Calculates the heat grade of the current day.
///              <= .5 * max : S
///              <= .6 * max : A
///              <= .7 * max : B
///              <= .8 * max : C
///              <= .9 * max : D
///                     else : F
/// @return {int64} The heat grade.
function sc_findHeatScore(){
	var grade = 0;
	
	with(o_heatManager){
		if(totalHeat <= maxHeat * .5){
			grade = 5;
		}else if(totalHeat <= maxHeat * .6){
			grade = 4;
		}else if(totalHeat <= maxHeat * .7){
			grade = 3;
		}else if(totalHeat <= maxHeat * .8){
			grade = 2;
		}else if(totalHeat <= maxHeat * .9){
			grade = 1;
		};
	};
	
	return grade;
}