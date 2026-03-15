/// @description Calculates the total grade of the current day.
/// @return {int64} The overall grade of the day.
function sc_findDayScore(){
	return floor((sc_findOrderScore()+sc_findHeatScore())/2);
}