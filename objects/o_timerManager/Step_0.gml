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

//Fadeout Moving
if(fade >= 1){
	
	if(!ds_list_empty(o_orderManager.orderList)) sc_clearOrders();
	
	if(!instance_exists(o_resultsText)){
		if(global.atWork){
			//Moving to Results Screen
			if(!moved && o_fadeLine.x >= 0) with(o_worldObject){ x -= global.width; };
			if(!moved && o_fadeLine.y > 0) with(o_worldObject){ y -= global.height; };
		}else{
			//Moving Back
			if(!moved && x < global.width && o_door.x < global.width) with(o_worldObject){ x += 2*global.width; moved = true; };
		};
	}else{
		//Moving to House
		if(x > 0 && !moved) with(o_worldObject){ x -= global.width; moved = true; };
		//Deleting Results Text
		if(instance_exists(o_resultsText)) instance_destroy(o_resultsText);
	};
};