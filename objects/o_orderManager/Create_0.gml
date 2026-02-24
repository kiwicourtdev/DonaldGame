/// @description Init

//Final
xOffsetAmount = 32;
xMin = 64;
xMax = 320;
gap = 128;

baseOrderGap = 1600;

rushBonusMax = 2;
rushBonusGap = 300;

//Modify
orderList = ds_list_create();
vis = true;
xOffset = 0;
makeVis = false;

orderGapMin = baseOrderGap
orderGapMax = 1.125*orderGapMin;
rushGapMult = 1;

rushBonusCount = 0;

orderQuota = floor(o_timerManager.timerMax/orderGapMax);
ordersDone = 0;

//Init
alarm[0] = 600;