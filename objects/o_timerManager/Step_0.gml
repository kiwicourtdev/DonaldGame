/// @description Calculate Digits and Make Rushes
var ratio = (duration*global.framesToHours)/(timerMax);

var diff = timerMax - alarm[0];

hour = diff*ratio/global.framesToHours;

minute = frac(hour) * global.framesToSeconds;

minTenPlace = floor((startHour + hour)/10);
minOnePlace = (startHour + hour) mod 10 div 1;

tenPlace = floor((startMin + minute)/10);
onePlace = (startMin + minute) mod 10 div 1;

//Rush
if(hour >= rushHour && hour < rushHour + rushDuration){
	with(o_orderManager){
		rushGapMult = .5;
		if(rushBonusCount == 0 && alarm[1] == -1) alarm[1] = rushBonusGap;
	};
}else{
	o_orderManager.rushGapMult = 1;
};