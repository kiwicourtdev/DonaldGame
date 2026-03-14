/// @description Finish Level
with(o_heatManager){
	heat = 0;
};

global.done = true;
alarm[2] = fadeOutWait;

if(o_orderManager.ordersDone >= o_orderManager.orderQuota) success = true;