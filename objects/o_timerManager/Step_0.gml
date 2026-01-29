/// @description Calculate Digits
var ratio = (timerMax/framesToHours)/duration;

var diff = timerMax - alarm[0];

hour = diff*ratio*framesToHours;

minTenPlace = floor(hour/10);
minOnePlace = hour mod 10;

tenPlace = floor(minute/10);
onePlace = minute mod 10;