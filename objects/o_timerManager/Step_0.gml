/// @description Calculate Digits
var ratio = (duration*framesToHours)/(timerMax);

var diff = timerMax - alarm[0];

hour = diff*ratio/framesToHours;

minute = frac(hour) * framesToSeconds;

minTenPlace = floor((startHour + hour)/10);
minOnePlace = (startHour + hour) mod 10 div 1;

tenPlace = floor((startMin + minute)/10);
onePlace = (startMin + minute) mod 10 div 1;