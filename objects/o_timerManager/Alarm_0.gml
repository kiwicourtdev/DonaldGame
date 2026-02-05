/// @description Finish Level
global.done = true;

if(o_orderManager.ordersDone >= o_orderManager.orderQuota) success = true;

alarm[1] = fadeOutMax;