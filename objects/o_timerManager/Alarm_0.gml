/// @description Finish Level
global.done = true;
alarm[2] = fadeOutWait;

if(o_orderManager.ordersDone >= o_orderManager.orderQuota) success = true;