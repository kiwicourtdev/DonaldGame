/// @description Init

//Final
xOffsetAmount = 32;
xMin = 64;
xMax = 320;
gap = 128;

baseOrderGap = 20;

rushBonusMax = 2;
rushBonusGap = 300;

orderQuota = 30;

//Modify
orderList = ds_list_create();
vis = true;
xOffset = 0;

orderGapMin = baseOrderGap
orderGapMax = 2*orderGapMin;
rushGapMult = 1;

rushBonusCount = 0;

ordersDone = 0;

//Init
alarm[0] = 600;