/// @description Calculates the order grade of the current day.
///              >= .9 * max : S
///              >= .8 * max : A
///              >= .7 * max : B
///              >= .6 * max : C
///              >= .5 * max : D
///                     else : F
/// @return {int64} The order grade.
function sc_findOrderScore(){
	var grade = 0;
	
	with(o_orderManager){
		if(ordersDone >= orderQuota * .9){
			grade = 5;
		}else if(ordersDone >= orderQuota * .8){
			grade = 4;
		}else if(ordersDone >= orderQuota * .7){
			grade = 3;
		}else if(ordersDone >= orderQuota * .6){
			grade = 2;
		}else if(ordersDone >= orderQuota * .5){
			grade = 1;
		};
	};
	
	return grade;
}