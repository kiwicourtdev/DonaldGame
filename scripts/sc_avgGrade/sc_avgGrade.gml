/// @description Calculates the average grade of all completed days.
/// @return {string} The letter grade average.
function sc_avgGrade(){
	var grade = "F";
	with(o_progressHandler){
		
		var avgNum = 0;
		for(var i = 0; i < totalDays; i++){
			avgNum += global.grades[i];
		};
		avgNum /= global.day;
		
		grade = gradeP[avgNum];
	};
	return grade;
}